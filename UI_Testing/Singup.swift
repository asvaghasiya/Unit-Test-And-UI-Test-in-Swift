//
//  Singup.swift
//  Unit Test Demo
//
//  Created by Artoon Solutions on 10/10/19.
//  Copyright © 2019 Artoon Solutions. All rights reserved.
//

import Foundation
import UIKit

class SignUp : UIViewController
{
    
    
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPhone: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    
    
    var email_str = String()
    var password_str = String()
    var number_str = String()
    
    
    @IBAction func onSignup(_ sender: CustomButton) {
        email_str = txtEmail.text!
        password_str = txtPassword.text!
        number_str = txtPhone.text!
        
        if email_str.isValidEmail() && password_str.isValidPassword() && number_str.isValidPhone() {
            UserDefaults.standard.setValue(email_str, forKey: "Email")
            UserDefaults.standard.setValue(password_str, forKey: "Password")
            UserDefaults.standard.setValue(number_str, forKey: "Phone")
            UserDefaults.standard.synchronize()
            let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "Login") as? Login
            self.navigationController?.pushViewController(vc!, animated: true)
        }
        else {
            Alert(title: "Alert", msg: "Enter velid email, phone number and password!")
        }
    }
}


extension String {

    // Validation for Number
    func isValidPhone() -> Bool {
        let phoneRegex = "^[0-9+]{0,1}+[0-9]{5,16}$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", phoneRegex)
        return phoneTest.evaluate(with: self)
    }
    
}
