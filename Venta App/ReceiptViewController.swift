//
//  ReceiptViewController.swift
//  Venta App
//
//  Created by Jeremy Bastidas on 6/18/22.
//

import UIKit

class ReceiptViewController: UIViewController {

    
    @IBOutlet var receiptLabel: UILabel!
    @IBOutlet var orderNumber: UILabel!
    @IBOutlet var menuLabel: UILabel!
    @IBOutlet var quantityLabel: UILabel!
    @IBOutlet var purchasedLabel: UILabel!
    static var quantityInt = 0
    static var price = 0
    static var optionOne = "Burger"
    static var optionTwo = "Tacos"
    static var optionThree = "Rice"
    static var optionFour = "Carne Asada"
    
    public var completionHandler: ((String?) -> Void)?
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        quantityLabel.text = String(describing: ReceiptViewController.quantityInt)
        
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
        
        menuLabel.text = """
        \(ReceiptViewController.optionOne)
        \(ReceiptViewController.optionTwo)
        \(ReceiptViewController.optionThree)
        \(ReceiptViewController.optionFour)
        """
        
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

