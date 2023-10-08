//
//  BarraHome.swift
//  AppPrecoFacil
//
//  Created by user on 07/10/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    public static var jManipulation = JSONManipulation()
    
    

    override func viewDidLoad() {
       //HomeViewController.jManipulation.createJSON(listOfSubjects: [])
        print (HomeViewController.jManipulation.readJSON())
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true
        self.tabBarController?.tabBar.isHidden = false
        setupView()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.tabBarController?.tabBar.isHidden = false
    }
    
    let saudacaoView: UIView = {
        let saudacaoView = UIView()
        saudacaoView.translatesAutoresizingMaskIntoConstraints = false
        saudacaoView.backgroundColor = UIColor (white: 0.0, alpha: 0.0)
        return saudacaoView
    }()
    
    private let saudacao: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center

        label.font = UIFont.systemFont(ofSize: 36, weight: .bold)
        label.textColor = .black
        label.numberOfLines = 0
        label.text = "Olá,"
        return label
    }()
    
    private let nameUserLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 36, weight: .bold)
        label.textColor = UIColor(red: 0.5, green: 0.28, blue: 1, alpha: 1)
        label.text = "Matheus!"
        return label
    }()

    let perfilView: UIView = {
        let perfilView = UIView()
        perfilView.translatesAutoresizingMaskIntoConstraints = false
        perfilView.backgroundColor = UIColor(white: 0.0, alpha: 0.0)
        return perfilView
    }()
    
    private let revisaoText: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.numberOfLines = 0
        label.font = UIFont(name: "Inter-Regular", size: 16)

        label.text = "Faz um tempo que você não viu isso! Que tal revisar?"
        return label
    }()
    
    private let imagemPerfil: UIImageView = {
        let imageview = UIImageView(image: UIImage(named: "perfil.png"))
        imageview.contentMode = .scaleAspectFit
        return imageview
        
    }()
    
    private let imagemNotificacion: UIImageView = {
        let imageview = UIImageView(image: UIImage(named: "notificacao.png"))
        imageview.contentMode = .scaleAspectFit
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    
    private let materiaRecomendadaBotao: UIButton = {
        let button = UIButton(type: .custom)
        let image = UIImage(named: "botaoRecomendacao.png")
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(image, for: .normal)
        button.frame = CGRect(x: 0, y: 0, width: image?.size.width ?? 0, height: image?.size.height ?? 0)
        button.addTarget(self, action: #selector (abrirMateriaRecomendada), for: .touchUpInside)
        return button
    }()
    
    private let recomendadosLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.numberOfLines =  0
        label.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        label.text = "Recomendados"
        return label
    }()
    
    private let exerciciosBotao: UIButton = {
        let button = UIButton(type: .custom)
        let image = UIImage(named: "Banner2.png" )
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(image, for: .normal)
        button.frame = CGRect(x: 0, y: 0, width: image?.size.width ?? 0, height: image?.size.height ?? 0)
        button.addTarget(self, action: #selector (telaExercicios), for: .touchUpInside)
        return button
    }()
    
   
    
    
    private let lojaBotao: UIButton = {
        let button = UIButton(type: .custom)
        let image = UIImage(named: "Banner.png" )
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(image, for: .normal)
        button.frame = CGRect(x: 0, y: 0, width: image?.size.width ?? 0, height: image?.size.height ?? 0)
        return button
    }()
    
    
    let recomendadosView: UIView = {
        let recomendadosView = UIView()
        recomendadosView.translatesAutoresizingMaskIntoConstraints = false
        recomendadosView.backgroundColor = UIColor (white: 0.0, alpha: 0.0)
        return recomendadosView
    }()
    
    
    private func setupView() {
        view.backgroundColor = .systemBackground
        addViewsInHieranchy()
        setupConstrainsts()
    }
    
    private func addViewsInHieranchy() {
        saudacaoView.addSubview(saudacao)
        saudacaoView.addSubview(nameUserLabel)
        perfilView.addSubview(imagemPerfil)
        perfilView.addSubview(imagemNotificacion)
        recomendadosView.addSubview(recomendadosLabel)
        
        view.addSubview(perfilView)
        view.addSubview(saudacaoView)
        view.addSubview(revisaoText)
        view.addSubview(materiaRecomendadaBotao)
        view.addSubview(recomendadosView)
        view.addSubview(exerciciosBotao)
        view.addSubview(lojaBotao)
    }
    
    private func setupConstrainsts() {
        
        NSLayoutConstraint.activate([
            saudacaoView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 96),
            saudacaoView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -32),
            saudacaoView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 32)
            
        ])
        
        NSLayoutConstraint.activate([
            nameUserLabel.leadingAnchor.constraint(equalTo: saudacao.leadingAnchor, constant: 70),
        
        ])
        
        NSLayoutConstraint.activate([
            revisaoText.topAnchor.constraint(equalTo: saudacaoView.bottomAnchor, constant: 60),
            revisaoText.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -32),
            revisaoText.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 32)
            
        ])
        
        NSLayoutConstraint.activate([
            perfilView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            perfilView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 32),
            perfilView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -32)
        ])
        
        NSLayoutConstraint.activate([
            imagemNotificacion.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -32),
            imagemNotificacion.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 38)
        ])
        
        NSLayoutConstraint.activate([
            materiaRecomendadaBotao.topAnchor.constraint(equalTo: perfilView.bottomAnchor, constant: 190),
            materiaRecomendadaBotao.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 32),
            materiaRecomendadaBotao.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -32)

            
        ])
        
        NSLayoutConstraint.activate([
            recomendadosView.topAnchor.constraint(equalTo: materiaRecomendadaBotao.bottomAnchor, constant: 24),
            recomendadosView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 32),
            recomendadosView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -32)
        ])
        
        NSLayoutConstraint.activate([
            exerciciosBotao.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 32),
            exerciciosBotao.topAnchor.constraint(equalTo: recomendadosLabel.bottomAnchor, constant: 24),
            
        ])
        
        NSLayoutConstraint.activate([
            lojaBotao.leadingAnchor.constraint(equalTo: exerciciosBotao.trailingAnchor, constant: 30),
            lojaBotao.topAnchor.constraint(equalTo: recomendadosLabel.bottomAnchor, constant: 24),
            lojaBotao.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -32)
        ])
        
    }
}

extension HomeViewController {
    @objc func abrirMateriaRecomendada() {
        let controller = RevisaoViewController()
        self.navigationController?.pushViewController(controller, animated: true)
    }
}

extension HomeViewController {
    @objc func telaExercicios() {
        let exerciciosViewController = ExerciciosViewController()
        self.navigationController?.pushViewController(exerciciosViewController, animated: true)
    }
}

