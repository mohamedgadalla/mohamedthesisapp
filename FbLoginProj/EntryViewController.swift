//
//  EntryViewController.swift
//  FbLoginProj
//
//  Created by Gadalla on 10/15/18.
//  Copyright © 2018 Gadalla. All rights reserved.
//

import UIKit

class EntryViewController: UIViewController {

    @IBOutlet weak var gifview: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        gifview.loadGif(name: "screengif")
        // Do any additional setup after loading the view.
    }
    

    @IBAction func screenTapped(_ sender: Any) {
        let fakesigninViewController = self.storyboard?.instantiateViewController(withIdentifier: "FakeSigninViewController") as! FakeSigninViewController
        
        self.present(fakesigninViewController, animated: true)
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
