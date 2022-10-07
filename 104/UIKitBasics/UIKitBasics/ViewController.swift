//
//  ViewController.swift
//  UIKitBasics
//
//  Created by Teacher on 01.10.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private var loginField: UITextField!
    @IBOutlet private var passwordField: UITextField!
    @IBOutlet private var submitButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func enterTapped(_ sender: Any) {
        if loginField.text == "admin" && passwordField.text == "admin" {
            guard let vc = storyboard?.instantiateViewController(withIdentifier: "TabbarViewController") else { return }
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true)
            let defs = UserDefaults.standard
            defs.setValue(loginField.text, forKey: "name")
        }
        else{
            let alert = UIAlertController(title: "", message: "Wrond username or password", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
}
