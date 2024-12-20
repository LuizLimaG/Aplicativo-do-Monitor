import UIKit

class HeaderComponent: UIView {
    private lazy var logoImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "cotemigLogo")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        buildLayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        buildLayout()
    }
    
    func buildLayout() {
        self.addSubview(logoImage)
        
        let screen = UIScreen.main.bounds
        self.heightAnchor.constraint(equalToConstant: screen.height / 12).isActive = true
        
        NSLayoutConstraint.activate([
            logoImage.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor),
            logoImage.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
            logoImage.heightAnchor.constraint(equalTo: self.heightAnchor),
            logoImage.widthAnchor.constraint(equalToConstant: 160)
        ])
    }
    
    func configureComponentData(image: UIImage, text: String) {
        logoImage.image = image
    }
}
