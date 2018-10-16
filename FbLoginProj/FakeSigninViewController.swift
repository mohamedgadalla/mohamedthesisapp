//
//  FakeSigninViewController.swift
//  FbLoginProj
//
//  Created by Gadalla on 10/15/18.
//  Copyright © 2018 Gadalla. All rights reserved.
//

import UIKit

class FakeSigninViewController: UIViewController {

    @IBOutlet weak var fakeBlink: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        fakeBlink.image = #imageLiteral(resourceName: "screen 2")
        //fakeBlink.image = UIImage
        // Do any additional setup after loading the view.
    }
    
    @IBAction func fbBt(_ sender: Any) {
        let signinViewController = self.storyboard?.instantiateViewController(withIdentifier: "SigninViewController") as! SigninViewController
        
        self.present(signinViewController, animated: true)
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
