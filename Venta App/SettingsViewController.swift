//
//  SettingsViewController.swift
//  Venta App
//
//  Created by Jeremy Bastidas on 6/18/22.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func switchButton(_ sender: UISwitch){
        if sender.isOn{
            print("Dark Mode On")
        }
        else {
            print("Dark Mode Off")
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
