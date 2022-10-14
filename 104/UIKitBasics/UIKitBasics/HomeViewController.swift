//
//  HomeViewController.swift
//  UIKitBasics
//
//  Created by Rafael Shamsutdinov on 07.10.2022.
//
import UIKit

class HomeViewController: UIViewController {
    let defs = UserDefaults.standard
    @IBOutlet weak var browseButton: UIButton!
    @IBOutlet weak var animalButton: UIButton!
    @IBOutlet weak var name: UILabel!
    override func viewDidLoad() {
        name.text = "Hello, \(String(describing: defs.string(forKey: "name")!))"
        super.viewDidLoad()
        setConstraints()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func AnimalImages(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "AnimalVC")
        present(vc!, animated: true)
    }
    @IBAction func browseCatalog(_ sender: Any) {
        let anotherVC: BrowseViewController = UIStoryboard(name: "Main", bundle: nil)
              .instantiateViewController(identifier: "BrowseViewController")
        navigationController?.pushViewController(anotherVC, animated: true)
          }
    private func setConstraints() {
        let stackViewTF = UIStackView()
        stackViewTF.axis = .vertical
        stackViewTF.spacing = 20
        view.addSubview(stackViewTF)
        stackViewTF.translatesAutoresizingMaskIntoConstraints = false
        name.translatesAutoresizingMaskIntoConstraints = false
        animalButton.translatesAutoresizingMaskIntoConstraints = false
        browseButton.translatesAutoresizingMaskIntoConstraints = false
        stackViewTF.addArrangedSubview(name)
        stackViewTF.addArrangedSubview(animalButton)
        stackViewTF.addArrangedSubview(browseButton)
        NSLayoutConstraint.activate([
            stackViewTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackViewTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            stackViewTF.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -40),
            stackViewTF.centerXAnchor.constraint(equalTo: view.centerXAnchor)
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

