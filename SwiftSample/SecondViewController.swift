import UIKit

class SecondViewController: UIViewController {

    private var myScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let navBarHeight = self.navigationController!.navigationBar.bounds.size.height
        let toolBarHeight = self.navigationController!.toolbar.bounds.size.height
        self.navigationController!.setToolbarHidden(true, animated: true)
        print(navBarHeight + toolBarHeight)
        myScrollView = UIScrollView()
        myScrollView.frame = CGRect(x:0, y:0, width:self.view.frame.size.width, height:self.view.frame.size.height)
        myScrollView.backgroundColor = .cyan
        print(self.view.frame.size.height)
        print(myScrollView.frame.size.height)

        let label = UILabel()
        label.text = "お寺だよ"
        label.frame = CGRect(x:8, y:8, width:100, height:20)
        myScrollView.addSubview(label)

        let myImage2 = UIImage(named: "temple.jpg")!
        let myImageView2 = UIImageView()
        myImageView2.image = myImage2
        myImageView2.frame = CGRect(x:100, y:100, width:myImage2.size.width, height:myImage2.size.height)
        myScrollView.addSubview(myImageView2)

        myScrollView.contentSize = CGSize(width:myScrollView.frame.size.width, height:myScrollView.frame.size.height)
        print(myScrollView.frame.size.height)

        self.view.addSubview(myScrollView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
}
