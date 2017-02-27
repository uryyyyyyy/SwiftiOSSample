
import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .cyan
        
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 200, height: 50))
        button.backgroundColor = .gray
        button.setTitle("ページ遷移するよ", for: .normal)
        
        self.view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        
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
                item: button,
                attribute: .centerY,
                relatedBy: .equal,
                toItem: self.view,
                attribute: .centerY,
                multiplier: 1.0,
                constant: 0.0
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
        
        button.setTitle("押された！", for: .highlighted)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func buttonAction(sender: UIButton!) {
        print("Button tapped")
        
        
        let alertController = UIAlertController(title: "タイトルだよ", message: "メッセージだよ", preferredStyle: .alert)
        
        let otherAction = UIAlertAction(title: "はい", style: .default) {action in
            NSLog("はいボタンが押されました。")
            let uiViewController = SecondViewController()
            uiViewController.title = "おみくじ画面"
            let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
            let rootViewController = appDelegate.window!.rootViewController! as! UINavigationController
            rootViewController.pushViewController(uiViewController, animated: true)
            
        }
        let cancelAction = UIAlertAction(title: "いいえ", style: .cancel) {
            action in NSLog("いいえボタンが押されました")
        }
        
        // addActionした順に左から右にボタンが配置されます
        alertController.addAction(otherAction)
        alertController.addAction(cancelAction)
        
        present(alertController, animated: true, completion: nil)
    }
    
    
}

