

import UIKit


class MenuViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    let title_arr = ["Home", "Select Location", "About Us", "Social"]

    @IBOutlet weak var menuTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return title_arr.count
      }
      
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
          let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! MenuTableViewCell
          
        cell.label_title.text = title_arr [indexPath.row]
         cell.accessoryType = .disclosureIndicator
    
    
        
          return cell
      }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        if indexPath.row == 0 {
           let vc = storyboard?.instantiateViewController(identifier:"HomeViewController") as! HomeViewController
           self.navigationController?.pushViewController(vc, animated: true)
         }
            
        else if indexPath.row == 1{
            let vc = storyboard?.instantiateViewController(identifier:"LocationViewController") as! LocationViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
            
         else if indexPath.row == 2{
           let vc = storyboard?.instantiateViewController(identifier:"AboutViewController") as! AboutViewController
              self.navigationController?.pushViewController(vc, animated: true)
         }
    
    else if indexPath.row == 3{
      let vc = storyboard?.instantiateViewController(identifier:"SocialViewController") as! SocialViewController
         self.navigationController?.pushViewController(vc, animated: true)
    }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    
  func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
 

  }
}

