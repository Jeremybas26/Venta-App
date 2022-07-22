//
//  AccountViewController.swift
//  Venta App
//
//  Created by Jeremy Bastidas on 6/18/22.
//

import UIKit
import FirebaseAuth

class AccountViewController: UIViewController {

    @IBOutlet var submitButton: UIButton!
    @IBOutlet var accountLabel: UILabel!
    @IBOutlet var foodText: UITextField!
    @IBOutlet var changeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if (Auth.auth().currentUser != nil) {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "login")
            vc.modalPresentationStyle = .overFullScreen
            present(vc, animated: false)
        }
        changeLabel.text = "Change Option 2"
        
        }
    
    @IBAction func submit(_ sender: Any) {
        ReceiptViewController.optionTwo = foodText.text!
        print("Changed Successful")
    }
    
    
    }

