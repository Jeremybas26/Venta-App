//
//  SettingsViewController.swift
//  Venta App
//
//  Created by Jeremy Bastidas on 6/18/22.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet var foodTitle: UILabel!
    @IBOutlet var quantity: UILabel!
    @IBOutlet var foodSubtitle: UILabel!
    @IBOutlet var totalPrice: UILabel!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        // Do any additional setup after loading the view.
        quantity.text = String(describing: ReceiptViewController.quantityInt)
        
        if ViewController.boolOne == false {
            ReceiptViewController.optionTwo = ""
        }
        
        if ViewController.boolTwo == false {
            ReceiptViewController.optionFour = ""
        }
        
        if ViewController.boolThree == false {
            ReceiptViewController.optionThree = ""
        }
        
        
        switch ReceiptViewController.quantityInt {
        case 1:
            ReceiptViewController.price = 10
        case 2:
            ReceiptViewController.price = 20
        case 3:
            ReceiptViewController.price = 30
        case 4:
            ReceiptViewController.price = 40
        case 5:
            ReceiptViewController.price = 50
        default:
            ReceiptViewController.price = 0
        }
        
        foodSubtitle.text = """
        \(ReceiptViewController.optionOne)
        \(ReceiptViewController.optionTwo)
        \(ReceiptViewController.optionThree)
        \(ReceiptViewController.optionFour)
        """
        
        totalPrice.text = "Total: $\(ReceiptViewController.price)"
    }
    
    
    /*
     //Move to account Settings
    @IBAction func darkModeSwitch (_ sender: UISwitch){
        if #available(iOS 13.0, *){
            let appDelegate = UIApplication.shared.windows.first
            
            if sender.isOn {
                appDelegate?.overrideUserInterfaceStyle = .dark
                return
            }
                appDelegate?.overrideUserInterfaceStyle = .light
                return
        }
    }
    */
    
    
    @IBAction func addCard(_ sender: Any) {
        print("Add Card")
    }
    
    
    @IBAction func openApplePay(_ sender: Any) {
        print("Open Apple Pay")
    }
    
    
    @IBAction func payCash(_ sender: Any) {
        print("Pay Cash")
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
