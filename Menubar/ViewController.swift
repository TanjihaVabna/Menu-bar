

import UIKit

class ViewController: UIViewController {

    var menu_vc : MenuViewController!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menu_vc = self.storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as! MenuViewController
       
    }

    @IBAction func MenuBar(_ sender: UIBarButtonItem) {
        if AppDelegate.menu_bool{
       show_menu()
            
        }else{
            close_menu()
        }
        
        //show menu
        
       }
    func show_menu()
    {
        self.menu_vc.view .backgroundColor = UIColor.black.withAlphaComponent(0.6)
        self.addChild(menu_vc)
        self.view.addSubview(menu_vc.view )
        AppDelegate.menu_bool = false
    }
    func  close_menu(
        )  {
        self.menu_vc.view.removeFromSuperview()
        AppDelegate.menu_bool = true
    }
}

