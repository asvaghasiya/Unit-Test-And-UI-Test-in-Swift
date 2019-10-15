//
//  Login.swift
//  Unit Test Demo
//
//  Created by Artoon Solutions on 10/10/19.
//  Copyright © 2019 Artoon Solutions. All rights reserved.
//

import Foundation
import UIKit

class Login : UIViewController
{
    var email_str = String()
    var password_str = String()
    
    var userEmail: String {
        return UserDefaults.standard.value(forKey: "Email") as! String
    }
    
    var userPassword: String {
        return UserDefaults.standard.value(forKey: "Password") as! String
    }
    
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    
    @IBAction func onBtnLogin(_ sender: UIButton) {
        email_str = txtEmail.text ?? ""
        password_str = txtPassword.text ?? ""
        
        if email_str.isValidEmail() && password_str.isValidPassword() {
            if email_str == userEmail && password_str == userPassword {
                let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ListViewController") as? ListViewController
                self.navigationController?.pushViewController(vc!, animated: true)
            }
            else {
                Alert(title: "Alert", msg: "Entered email or password is incorrect!")
            }
        }
        else {
            Alert(title: "Alert", msg: "Enter velid email and password!")
        }
    }
}



extension String {

    // Validation for Email
    func isValidEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: self)
    }

    // validation For Password
    func isValidPassword() -> Bool {
        let regularExpression = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[$@$!%*?&])[A-Za-z\\d$@$!%*?&]{8,}"
        let passwordValidation = NSPredicate.init(format: "SELF MATCHES %@", regularExpression)

        return passwordValidation.evaluate(with: self)
    }

}
