//
//  ViewController.swift
//  Venta App
//
//  Created by Jeremy Bastidas on 6/15/22.
//

import UIKit
import Firebase
import FirebaseAnalytics


class ViewController: UIViewController {

    @IBOutlet var viewOne: UIView!
    @IBOutlet var viewTwo: UIView!
    @IBOutlet var viewThree: UIView!
    @IBOutlet var viewFour: UIView!
    @IBOutlet var groupNumber: UILabel!
    static var boolOne = true
    static var boolTwo = true
    static var boolThree = true
    @IBOutlet var removeFood: UIView!
    @IBOutlet var foodOptionOne: UILabel!
    @IBOutlet var foodOptionTwo: UILabel!
    @IBOutlet var foodOptionThree: UILabel!
    @IBOutlet var foodOptionFour: UILabel!
    
    var vc2 = ReceiptViewController()
    var groupInt = 1

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // Do any additional setup after loading the view.
        viewOne.layer.cornerRadius = 20
        viewTwo.layer.cornerRadius = 20
        viewThree.layer.cornerRadius = 20
        viewFour.layer.cornerRadius = 20
        
        foodOptionOne.text = ReceiptViewController.optionOne
        foodOptionTwo.text = ReceiptViewController.optionTwo
        foodOptionThree.text = ReceiptViewController.optionThree
        foodOptionFour.text = ReceiptViewController.optionFour
        
        
    }
    
    @IBAction func buyButton (_ sender: UIButton) {
        ReceiptViewController.quantityInt += 1
    }
    
    @IBAction func removeButtonTacos(_ sender: AnyObject) {
        removeFood.isHidden = false
            }
    
    @IBAction func removeYes(_ sender: Any) {
        ViewController.boolOne = false
        removeFood.isHidden = true
    }
    
    @IBAction func removeNo(_ sender: Any) {
        removeFood.isHidden = true
    }
    
    @IBAction func removeButtonCarne() {
        ViewController.boolTwo = false
    }
    
    @IBAction func removeButtonRice() {
        ViewController.boolThree = false
    }
    
    
    
    @UIApplicationMain
    class AppDelegate: UIResponder, UIApplicationDelegate {

      var window: UIWindow?

      func application(_ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions:
                       [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
          FirebaseApp.configure()

        return true
      }
    }

    
    
    
}

