//
//  RegisterUserViewController.swift
//  FbLoginProj
//
//  Created by Gadalla on 10/7/18.
//  Copyright © 2018 Gadalla. All rights reserved.
//


import UIKit

class RegisterUserViewController: UIViewController {
    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var reenterPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func cancelButton(_ sender: Any) {
        print("canceled")
        
                self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func signUpButton(_ sender: Any) {
        print("signup")
        
        if (firstName.text?.isEmpty)! ||
            (lastName.text?.isEmpty)! ||
            (email.text?.isEmpty)! ||
            (password.text?.isEmpty)!
        {
            displayMessage(userMessage: "please make sure all fields are entered")
            return
        }
        if ((password.text?.elementsEqual(reenterPassword.text!))! != true){
            displayMessage(userMessage: "please make sure passwords match")
            return
        }
        
    }
    
    func displayMessage (userMessage:String) -> Void{
        DispatchQueue.main.async
            {
                let alertController = UIAlertController(title: "Alert", message: userMessage , preferredStyle: .alert)
                let OKAction = UIAlertAction(title: "OK", style: .default){
                    (action:UIAlertAction!) in
                    print ("ok")
                    DispatchQueue.main.async {
                        self.dismiss(animated: true, completion:nil)
                        
                    }
                }
                alertController.addAction(OKAction)
                self.present(alertController,animated: true, completion:nil)
        }
    }
    
}

