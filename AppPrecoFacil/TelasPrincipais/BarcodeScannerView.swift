//
//  BarcodeScannerView.swift
//  AppPrecoFacil
//
//  Created by user on 07/11/23.
//

import SwiftUI
import AVFoundation

UIViewRepresentable {
    class Coordinator: NSObject, AVCaptureMetadataOutputObjectsDelegate {
        var parent: BarcodeScannerView

        init(parent: BarcodeScannerView) {
            self.parent = parent
        }

        func metadataOutput(_ output: AVCaptureMetadataOutput, didOutput metadataObjects: [AVMetadataObject], from connection: AVCaptureConnection) {
            if let metadataObject = metadataObjects.first as? AVMetadataMachineReadableCodeObject {
                parent.didFindCode(metadataObject.stringValue ?? "")
            }
        }
    }

    var didFindCode: (String) -> Void

    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }

    func makeUIView(context: Context) -> UIView {
        let view = UIView()

        guard let captureSession = setupCaptureSession(context: context) else {
            return view
        }

        let previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        previewLayer.frame = view.bounds
        previewLayer.videoGravity = .resizeAspectFill
        view.layer.addSublayer(previewLayer)

        captureSession.startRunning()
        return view
    }

    func updateUIView(_ uiView: UIView, context: Context) {}

    private func setupCaptureSession(context: Context) -> AVCaptureSession? {
        let session = AVCaptureSession()

        guard let videoCaptureDevice = AVCaptureDevice.default(for: .video),
              let videoInput = try? AVCaptureDeviceInput(device: videoCaptureDevice),
              session.canAddInput(videoInput) else {
            return nil
        }

        session.addInput(videoInput)

        let metadataOutput = AVCaptureMetadataOutput()
        if session.canAddOutput(metadataOutput) {
            session.addOutput(metadataOutput)

            metadataOutput.setMetadataObjectsDelegate(context.coordinator, queue: DispatchQueue.main)
            metadataOutput.metadataObjectTypes = [.ean8, .ean13, .qr] // Add other types you want to support
        } else {
            return nil
        }

        return session
    }
}


struct BarcodeScannerView: View {
    
    @State private var scannedBarcode = ""
    
    var body: some View {
        VStack {
                   BarcodeScannerView { code in
                       // Faça algo com o código de barras escaneado
                       self.scannedBarcode = code
                   }
                   .frame(height: 300)

                   Text("Código de Barras Escaneado: \(scannedBarcode)")
                       .padding()
               }
           }
       }


struct BarcodeScannerView_Previews: PreviewProvider {
    static var previews: some View {
        BarcodeScannerView()
    }
}
