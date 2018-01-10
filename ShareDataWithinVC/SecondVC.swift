//
//  SecondVC.swift
//  ShareDataWithinVC
//
//  Created by Satish Birajdar on 2018-01-09.
//  Copyright © 2018 SBSoftwares. All rights reserved.
//

import Foundation
import UIKit

protocol DataTransferDelegate {
    func dataSharing(data: String)
}


class SecondVC: UIViewController {
    @IBOutlet weak var secondVCTF: UITextField!
    
    var dataSecondVC = "Satish"
    
    var delegate: DataTransferDelegate?
    
    override func viewDidLoad() {
       
    }
    
//    @IBAction func goToView(sender: AnyObject) {
//        let fvc = storyboard?.instantiateViewController(withIdentifier: "FirstVC") as! FirstVC
//        fvc.delegate = self
//        self.present(fvc, animated:true, completion:nil)
//    }
    
    


    
    @IBAction func click_FirstVC(_ sender: Any) {
//        self.performSegue(withIdentifier: "firstSegue", sender: nil)
        self.delegate?.dataSharing(data: secondVCTF.text!)
        self.navigationController?.popViewController(animated: true)
    }
}
