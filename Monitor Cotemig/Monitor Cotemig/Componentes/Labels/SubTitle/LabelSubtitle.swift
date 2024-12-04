import UIKit

class LabelSubtitle: UILabel, LabelProtocol {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureLabel()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configureLabel()
    }
    
    func configureLabel() {
        self.textColor = UIColor(named: "greenLabel")
        self.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        self.text = text
        self.lineBreakMode = .byWordWrapping
        self.numberOfLines = 0
    }
    
    func configureText(text: String) {
        self.text = text
    }
}
