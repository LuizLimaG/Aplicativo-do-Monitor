import UIKit

class HomeViewController: UIViewController, ScreenProtocol {
    
    private lazy var header: HeaderComponent = {
        let view = HeaderComponent()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var pageTitle: LabelTitle = {
        let view = LabelTitle()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.configureText(text: "Registro de Monitoria")
        return view
    }()
    
    private lazy var pageContent: LabelContent = {
        let text = "Monitores e Monitoras, vocês deverão seguir as orientações do Coordenador da Formação Técnica para proceder com o registro de todos o(a)s estudantes que participarem da Monitoria de Estudos.\n\nEstas informações serão utilizadas para levantarmos os indicadores do serviço prestado."
        let view = LabelContent()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.configureText(text: text)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        configureConstraints()
    }
    
    func configureView() {
        view.addSubview(pageTitle)
        view.addSubview(pageContent)
        view.addSubview(header)
        view.backgroundColor = .white
    }
    
    func configureConstraints() {
        NSLayoutConstraint.activate([
            
            header.topAnchor.constraint(equalTo: view.topAnchor),
            header.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            header.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            header.heightAnchor.constraint(equalToConstant: 50),
            
            pageTitle.topAnchor.constraint(equalTo: header.bottomAnchor, constant: 60),
            pageTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            pageTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            
            pageContent.topAnchor.constraint(equalTo: pageTitle.bottomAnchor, constant: 20),
            pageContent.leadingAnchor.constraint(equalTo: pageTitle.leadingAnchor),
            pageContent.trailingAnchor.constraint(equalTo: pageTitle.trailingAnchor)
        ])
    }
    
}
