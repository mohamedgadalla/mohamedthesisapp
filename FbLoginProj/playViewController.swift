//
//  playViewController.swift
//  FbLoginProj
//
//  Created by Gadalla on 11/23/18.
//  Copyright © 2018 Gadalla. All rights reserved.
//

import UIKit

class playViewController: UIViewController {

    var urlName = ""
    var GameEmail = ""
    var GameUsername = ""
    var GameName = ""
    var GamePassword = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? TryViewController{
            vc.urlKey = self.urlName
            vc.CertEmail = self.GameEmail
            vc.CertUsername = self.GameUsername
            vc.CertName = self.GameName
            vc.CertPassword = self.GamePassword
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
