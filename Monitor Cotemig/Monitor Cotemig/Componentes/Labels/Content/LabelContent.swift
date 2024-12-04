import UIKit

class LabelContent: UILabel, LabelProtocol {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureLabel()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configureLabel()
    }
    
    func configureLabel() {
        self.textColor = UIColor(named: "defaultLabel")
        self.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        self.text = text
        self.lineBreakMode = .byWordWrapping
        self.numberOfLines = 0
    }
    
    func configureText(text: String) {
        self.text = text
    }
}
