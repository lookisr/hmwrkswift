//
//  LogoutViewController.swift
//  UIKitBasics
//
//  Created by Rafael Shamsutdinov on 07.10.2022.
//

import UIKit

class LogoutViewController: UIViewController {

    @IBOutlet weak var signOutButton: UIButton!
    @IBOutlet weak var userLable: UILabel!
    override func viewDidLoad() {
        let defs = UserDefaults.standard
        userLable.text = "Hello, \(String(describing: defs.string(forKey: "name")!))"
        super.viewDidLoad()
        setConstraints()
        // Do any additional setup after loading the view.
    }
    @IBAction func buttonDidTap(_ sender: Any) {
        presentingViewController?.dismiss(animated: true, completion: nil)
    }
    private func setConstraints() {
        userLable.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            userLable.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            userLable.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ])
        signOutButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            signOutButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            signOutButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),

        ])
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
