import UIKit

class SecondViewController: UIViewController {
    
    let label = UILabel(frame: CGRect(x: 100, y: 100, width: 200, height: 50))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 200, height: 50))
        button.backgroundColor = .gray
        button.setTitle("おみくじ引くよ", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        self.view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        self.label.textColor = .red
        //self.label.backgroundColor = .gray
        self.label.text = "あなたの運勢"
        self.label.textAlignment = .center;
        self.view.addSubview(self.label)
        self.label.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addConstraint(
            NSLayoutConstraint(
                item: button,
                attribute: .centerX,
                relatedBy: .equal,
                toItem: self.view,
                attribute: .centerX,
                multiplier: 1.0,
                constant: 0.0
            )
        )
        
        self.view.addConstraint(
            NSLayoutConstraint(
                item: self.label,
                attribute: .centerX,
                relatedBy: .equal,
                toItem: self.view,
                attribute: .centerX,
                multiplier: 1.0,
                constant: 0.0
            )
        )
        
        let down = self.view.frame.size.height/4 * +1;
        
        self.view.addConstraint(
            NSLayoutConstraint(
                item: button,
                attribute: .centerY,
                relatedBy: .equal,
                toItem: self.view,
                attribute: .centerY,
                multiplier: 1.0,
                constant: down
            )
        )
        
        let up = down * -1;
        
        self.view.addConstraint(
            NSLayoutConstraint(
                item: self.label,
                attribute: .centerY,
                relatedBy: .equal,
                toItem: self.view,
                attribute: .centerY,
                multiplier: 1.0,
                constant: up
            )
        )
        
        self.view.addConstraint(
            NSLayoutConstraint(
                item: label,
                attribute: .width,
                relatedBy: .equal,
                toItem: nil,
                attribute: .notAnAttribute,
                multiplier: 1.0,
                constant: 200
            )
        )
        
        self.view.addConstraint(
            NSLayoutConstraint(
                item: self.label,
                attribute: .height,
                relatedBy: .equal,
                toItem: nil,
                attribute: .notAnAttribute,
                multiplier: 1.0,
                constant: 50
            )
        )
        
        
        self.view.addConstraint(
            NSLayoutConstraint(
                item: button,
                attribute: .width,
                relatedBy: .equal,
                toItem: nil,
                attribute: .notAnAttribute,
                multiplier: 1.0,
                constant: 200
            )
        )
        
        self.view.addConstraint(
            NSLayoutConstraint(
                item: button,
                attribute: .height,
                relatedBy: .equal,
                toItem: nil,
                attribute: .notAnAttribute,
                multiplier: 1.0,
                constant: 50
            )
        )
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func buttonAction(sender: UIButton!) {
        print("Button tapped")
        self.label.text = "大吉です"
    }
    
    
}
