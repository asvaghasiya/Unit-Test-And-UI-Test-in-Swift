//
//  Alert.swift
//  UI_Testing
//
//  Created by Artoon Solutions on 14/10/19.
//  Copyright © 2019 Artoon Solutions. All rights reserved.
//

import Foundation
import UIKit

class Alert: NSObject {
    let keyWindow = UIApplication.shared.connectedScenes
    .filter({$0.activationState == .foregroundActive})
    .map({$0 as? UIWindowScene})
    .compactMap({$0})
    .first?.windows
    .filter({$0.isKeyWindow}).first
    
    init(title: String, msg: String) {
        super.init()
        let alert = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
        keyWindow?.rootViewController?.present(alert, animated: true, completion: nil)
    }
    
}
