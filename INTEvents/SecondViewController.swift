//
//  SecondViewController.swift
//  INTEvents
//
//  Created by english on 2021-09-30.
//

import UIKit

class SecondViewController: UIViewController {
    
    public var data : String = ""

    @IBOutlet weak var txtEmail: UILabel!
    
    private var tagId : Int = 0

    @IBAction func btnToThirdView(_ sender: UISwitch) {
        tagId = sender.tag
        performSegue(withIdentifier: "toThirdView", sender: nil)
    }
    
    @IBAction func btnLogout(_ sender: Any) {
        //self.dismiss(animated: true, completion: nil)
        // navigationController!.self.dismiss(animated: true, completion: nil)
        navigationController!.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        txtEmail.text = data
        self.navigationItem.hidesBackButton = true
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toThirdView" {
            let thirdViewController = segue.destination as! ThirdViewController
            guard let userEmail = txtEmail.text else {
                return
            }
            
            thirdViewController.data = userEmail
            
            switch tagId {
            case 0:
                thirdViewController.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean finibus dui quis ipsum tempor mattis. Maecenas hendrerit condimentum tortor in maximus. Quisque nec nulla a lorem feugiat dictum dictum sit amet sem. Integer vehicula, ante vel interdum imperdiet, sem velit egestas est, sit amet malesuada magna ex ultrices felis."
                thirdViewController.imgName = "github"
                break
            case 1:
                thirdViewController.text = "lass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas sodales lacus vel blandit euismod. Praesent venenatis nunc in neque semper, in rutrum ipsum congue. Integer sollicitudin euismod commodo."
                thirdViewController.imgName = "tdd"
                break
            case 2:
                thirdViewController.text = "Morbi nec ipsum vitae ligula mollis finibus. Aenean in nibh eu mauris consequat accumsan. Vestibulum faucibus ullamcorper fringilla. Proin nec dolor et libero aliquet gravida. Pellentesque sit amet metus volutpat, tempor justo egestas, fermentum arcu. Quisque hendrerit euismod arcu sed varius."
                thirdViewController.imgName = "bringinton"
                break
            default:
                break
            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
