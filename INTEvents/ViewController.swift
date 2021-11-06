//
//  ViewController.swift
//  INTEvents
//
//  Created by english on 2021-09-30.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnLogin: UIButton!
    
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        if identifier == "toSecondView" {
    
            guard let email : String = txtEmail.text, let password : String = txtPassword.text else{
                return false
            }
            
            if email == "admin@int4fc.com" && password == "LaSalle2000" {
                
            } else {
                let  alert = UIAlertController(title: "Incorrect Email and Password", message: "The Email or Password you have entered is incorrect!", preferredStyle:.alert)
                let btnOK = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
                alert.addAction(btnOK)
                present(alert, animated: true, completion: nil)
                txtEmail.text = ""
                txtPassword.text = ""
                return false
            }
            
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toSecondView" {
            
            let secondViewController = segue.destination as! SecondViewController
            guard let userEmail = txtEmail.text else {
                return
            }
            
            secondViewController.data = userEmail
            txtEmail.text = nil
            txtPassword.text = nil
        }
        
    }
    
    @IBAction func btnLoginTouchUp(_ sender: Any) {

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        btnLogin.layer.cornerRadius = 15
        // self.navigationController!.navigationBar.backgroundColor = UIColor.white
        
    }


}

