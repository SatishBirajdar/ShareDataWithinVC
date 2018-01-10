//
//  FirstVC.swift
//  ShareDataWithinVC
//
//  Created by Satish Birajdar on 2018-01-09.
//  Copyright © 2018 SBSoftwares. All rights reserved.
//


import Foundation
import UIKit


class FirstVC: UIViewController, DataTransferDelegate {

    @IBOutlet weak var firstVCLabel: UILabel!
    
    override func viewDidLoad() {
        
    }
    
//    @IBAction func SendDataClicked(_ sender: Any) {
////        self.presentingViewController!.dismiss(animated: true, completion: nil)
//        
//        self.delegate?.dataSharing(data: dataFirstVC)
//    }
    
    func dataSharing(data: String) {
        print("Data from FirstVC is \(data)")
        firstVCLabel.text = data
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "firstSegue" {
            let destination = segue.destination as! SecondVC
            destination.delegate = self
        }
    }
    
    
}
