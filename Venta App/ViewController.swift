//
//  ViewController.swift
//  Venta App
//
//  Created by Jeremy Bastidas on 6/15/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var homeButton: UIBarButtonItem!
    @IBOutlet var recepitButton: UIBarButtonItem!
    @IBOutlet var accountButton: UIBarButtonItem!
    @IBOutlet var settingsButton: UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func homeScreen() {
        print("Go to home screen")
    }
    
    @IBAction func recepitScreen() {
        print("Go to recepit screen")
    }
    
    @IBAction func accountScreen() {
        print("Go to account screen")
    }
    
    @IBAction func settingsScreen() {
        print("Go to settings screen")
    }
}

