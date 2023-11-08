//
//  TelaLeitorCodigo.swift
//  AppPrecoFacil
//
//  Created by user on 07/11/23.
//

import SwiftUI
import AVFoundation

struct BarcodeScanner: UIViewControllerRepresentable {
    @Binding var scannedCode: String
    @Binding var alertIsVisible: Bool

    func makeCoordinator() -> Coordinator {
        return Coordinator(scannerView: self)
    }

    func makeUIViewController(context: Context) -> UIViewController {
        let viewController = UIViewController()
        let captureSession = AVCaptureSession()

        guard let videoCaptureDevice = AVCaptureDevice.default(for: .video),
              let videoInput = try? AVCaptureDeviceInput(device: videoCaptureDevice),
              captureSession.canAddInput(videoInput) else {
            alertIsVisible = true
            return viewController
        }

        captureSession.addInput(videoInput)
        let metadataOutput = AVCaptureMetadataOutput()

        if captureSession.canAddOutput(metadataOutput) {
            captureSession.addOutput(metadataOutput)

            metadataOutput.setMetadataObjectsDelegate(context.coordinator, queue: DispatchQueue.main)
            metadataOutput.metadataObjectTypes = [.ean8, .ean13, .pdf417, .qr] // Adicione outros tipos conforme necessário
        } else {
            alertIsVisible = true
            return viewController
        }

        let previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        previewLayer.frame = viewController.view.layer.bounds
        previewLayer.videoGravity = .resizeAspectFill
        viewController.view.layer.addSublayer(previewLayer)

        captureSession.startRunning()

        return viewController
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}

    class Coordinator: NSObject, AVCaptureMetadataOutputObjectsDelegate {
        var scannerView: BarcodeScanner

        init(scannerView: BarcodeScanner) {
            self.scannerView = scannerView
        }

        func metadataOutput(_ output: AVCaptureMetadataOutput, didOutput metadataObjects: [AVMetadataObject], from connection: AVCaptureConnection) {
            if let metadataObject = metadataObjects.first {
                guard let readableObject = metadataObject as? AVMetadataMachineReadableCodeObject,
                      let stringValue = readableObject.stringValue else { return }
                scannerView.scannedCode = stringValue
                scannerView.alertIsVisible = true
            }
        }
    }
}


struct BarcodeScanner: View {
    
    @State private var scannedCode = ""
    @State private var alertIsVisible = false
    
    var body: some View {
        BarcodeScanner(scannedCode: $scannedCode, alertIsVisible: $alertIsVisible)
                  .alert(isPresented: $alertIsVisible) {
                      Alert(title: Text("Código Digitalizado"), message: Text(scannedCode), dismissButton: .default(Text("OK")))
                  }
          }
    }


struct BarcodeScanner_Previews: PreviewProvider {
    static var previews: some View {
        BarcodeScanner(scannedCode: $scannedCode, alertIsVisible: $alertIsVisible)
    }
}
