//
//  SigninViewController.swift
//  FbLoginProj
//
//  Created by Gadalla on 10/7/18.
//  Copyright © 2018 Gadalla. All rights reserved.
//

import UIKit

class SigninViewController: UIViewController {

    
        override func viewDidLoad() {
            super.viewDidLoad()
            
            // Do any additional setup after loading the view.
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
    
    @IBAction func LoginTapped(_ sender: Any) {
        print("Y")
        
        let errorViewController = self.storyboard?.instantiateViewController(withIdentifier: "ErrorViewController") as! ErrorViewController
        
        self.present(errorViewController, animated: true)
    }
    
    
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destinationViewController.
         // Pass the selected object to the new view controller.
         }
         */
        
}


