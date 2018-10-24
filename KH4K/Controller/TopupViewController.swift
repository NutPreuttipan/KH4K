//
//  TopupViewController.swift
//  KH4K
//
//  Created by Preuttipan Janpen on 11/10/2561 BE.
//  Copyright © 2561 Lphant. All rights reserved.
//

import UIKit

class TopupViewController: UIViewController {

    @IBOutlet weak var textFieldPinCode: UITextField!
    @IBOutlet weak var textFieldUsername: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textFieldPinCode.attributedPlaceholder = NSAttributedString(string: "PIN CODE",
                                                                     attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        textFieldUsername.attributedPlaceholder = NSAttributedString(string: "Username",
                                                                     attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        textFieldPassword.attributedPlaceholder = NSAttributedString(string: "Password",
                                                                     attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
    }
}
