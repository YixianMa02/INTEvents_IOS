//
//  ThirdViewController.swift
//  INTEvents
//
//  Created by english on 2021-09-30.
//

import UIKit

class ThirdViewController: UIViewController {
    
    public var data : String = ""
    public var text : String = ""
    public var imgName : String = ""
    
    @IBOutlet weak var lblEmail: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var txtView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblEmail.text = data
        txtView.text = text
        imageView.image = UIImage(named: imgName)
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
