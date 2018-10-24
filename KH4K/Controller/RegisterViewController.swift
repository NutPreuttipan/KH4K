//
//  RegisterViewController.swift
//  KH4K
//
//  Created by Preuttipan Janpen on 11/10/2561 BE.
//  Copyright © 2561 Lphant. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController, UIPopoverPresentationControllerDelegate {
    
    
    @IBOutlet weak var textFieldPinCode: UITextField!
    @IBOutlet weak var textFieldUsername: UITextField!
    @IBOutlet weak var textFieldMobileNo: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    @IBOutlet weak var textFieldConfirmPassword: UITextField!
    @IBOutlet weak var textFieldMobileCountryCode: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        textFieldMobileCountryCode.isEditing = false
        let tap = UITapGestureRecognizer(target: self, action: #selector(RegisterViewController.showPopOverCountryCode))
        textFieldMobileCountryCode.addGestureRecognizer(tap)
        

        textFieldPinCode.attributedPlaceholder = NSAttributedString(string: "PIN CODE",
                                                                     attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        textFieldUsername.attributedPlaceholder = NSAttributedString(string: "Username",
                                                                     attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        textFieldMobileNo.attributedPlaceholder = NSAttributedString(string: "Mobile Phone No.",
                                                                     attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        textFieldPassword.attributedPlaceholder = NSAttributedString(string: "Password",
                                                                     attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        textFieldConfirmPassword.attributedPlaceholder = NSAttributedString(string: "Confirm Password",
                                                                     attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        textFieldMobileCountryCode.attributedPlaceholder = NSAttributedString(string: "+66",
                                                                            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        
        
    }
    
    @objc func showPopOverCountryCode() {
        
        let popoverContent = self.storyboard?.instantiateViewController(withIdentifier: "popOverMobilecode") as! PopOverCountryMobileCodeViewController
        popoverContent.preferredContentSize = CGSize(width: 500, height: 300)
        popoverContent.modalPresentationStyle = .popover
        
        let popOverVC = popoverContent.popoverPresentationController
        popOverVC?.delegate = self
        popOverVC?.sourceView = self.textFieldMobileCountryCode
        popOverVC?.sourceRect = CGRect(x: self.textFieldMobileCountryCode.bounds.maxX/2, y: self.textFieldMobileCountryCode.bounds.maxY/2, width: 0, height: 0)
        
        self.present(popoverContent, animated: true)
        
    }
    
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }

}
