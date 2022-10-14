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
    @IBOutlet private var logLabel: UILabel!
    @IBOutlet private var pasLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        setConstraints()
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
    private func setConstraints() {
        let stackViewTF = UIStackView()
        stackViewTF.axis = .vertical
        stackViewTF.spacing = 20
        view.addSubview(stackViewTF)
        stackViewTF.translatesAutoresizingMaskIntoConstraints = false
        loginField.translatesAutoresizingMaskIntoConstraints = false
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        logLabel.translatesAutoresizingMaskIntoConstraints = false
        pasLabel.translatesAutoresizingMaskIntoConstraints = false
        stackViewTF.addArrangedSubview(logLabel)
        stackViewTF.addArrangedSubview(loginField)
        stackViewTF.addArrangedSubview(pasLabel)
        stackViewTF.addArrangedSubview(passwordField)
        NSLayoutConstraint.activate([
            stackViewTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackViewTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            stackViewTF.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -40),
            stackViewTF.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        submitButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            submitButton.topAnchor.constraint(equalTo: stackViewTF.bottomAnchor, constant: 20),
            submitButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])

        }
}
