//
//  ViewController.swift
//  FbLoginProj
//
//  Created by Gadalla on 10/5/18.
//  Copyright © 2018 Gadalla. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class ViewController: UIViewController, FBSDKLoginButtonDelegate {

    @IBOutlet weak var lblStatus: UILabel!
    @IBOutlet weak var Na: UITextView!
    @IBOutlet weak var Em: UITextView!
    @IBOutlet weak var Ur: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let loginManager = FBSDKLoginManager()
        
        
        
        let btnFBLogin = FBSDKLoginButton()
        //btnFBLogin.loginBehavior = FBSDKLoginBehavior.web
        btnFBLogin.readPermissions = ["public_profile", "email"]
        btnFBLogin.delegate = self
        
        
        
        btnFBLogin.center = self.view.center
        self.view.addSubview(btnFBLogin)
        
        if FBSDKAccessToken.current() != nil{
            self.lblStatus.text = "User has already logged in"
            
        }else{
            lblStatus.text = "Not logged in"
        }
        loginManager.logOut()
       
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        if error != nil{
            self.lblStatus.text = error.localizedDescription
        }else if result.isCancelled{
            self.lblStatus.text = "User cancelled Log in"
        }else{
            
            //successful
            self.lblStatus.text = "User logged in"
            fetchUserProfile()
            let gameViewController = self.storyboard?.instantiateViewController(withIdentifier: "GameViewController") as! GameViewController
            
            self.present(gameViewController, animated: true)
            //self.ELabel.text = ""
            
        }
    }
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        self.lblStatus.text = "User logged out"
    }


    func fetchUserProfile()
    {
        let graphRequest : FBSDKGraphRequest = FBSDKGraphRequest(graphPath: "me", parameters: ["fields":"id,name,picture{url},email"])

        graphRequest.start(completionHandler: { (connection, result, error) -> Void in
            
            if ((error) != nil)
            {
                print("/////////////////////////////////////////////////////??////////")
                print("Error took place: \(String(describing: error))")
                print("/////////////////////////////////////////////////////??////////")
            }
            else
            {
                guard let data = result as? [String:Any] else { return }
                
                guard let pic = data["picture"] as? [String:Any] else { return }
                guard let dat = pic["data"] as? [String:Any] else { return }
                let url = dat["url"]
                let email = data["email"]
                let Uname = data["name"]
                print("/////////////////////////////////////////////////////??////////")
                print(data)
                
                self.Na.text = Uname as? String
                self.Em.text = email as? String
                self.Ur.text = url as? String
                
                print("/////////////////////////////////////////////////////??////////")
                print("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++")
    
            }
})
    }
}
