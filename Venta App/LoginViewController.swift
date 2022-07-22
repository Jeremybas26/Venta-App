//
//  LoginViewController.swift
//  Venta App
//
//  Created by Jeremy Bastidas on 6/30/22.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet var email: UITextField!
    @IBOutlet var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func loginPressed(_ sender: Any) {
        validateFields()
    }
    
    @IBAction func createAccount(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "signUp")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }
    
    func validateFields() {
        if email.text?.isEmpty == true {
            print("no Email Text")
            return
        }
        
        if password.text?.isEmpty == true {
            print("No Password")
            return
        }
        login()
    }
    
    func login() {
        Auth.auth().signIn(withEmail: email.text!, password: password.text!)
        self.checkUserInfo()
    }
    
    func checkUserInfo() {
        if Auth.auth().currentUser != nil {
            print(Auth.auth().currentUser?.uid)
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(identifier: "account_vc") as! AccountViewController
            vc.modalPresentationStyle = .overFullScreen
            dismiss(animated: true)
        }
    }
    
    
    @IBAction func goHome(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = self.storyboard!.instantiateViewController(withIdentifier: "MenuVC") as! ViewController
        vc.modalPresentationStyle = .overFullScreen
        dismiss(animated: false)
        present(vc, animated: true)
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
