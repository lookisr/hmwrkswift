//
//  BrowseViewController.swift
//  UIKitBasics
//
//  Created by Rafael Shamsutdinov on 07.10.2022.
//

import UIKit

class BrowseViewController: UIViewController {
    @IBOutlet weak var browseButton: UIButton!
    @IBOutlet weak var pagesLabel: UILabel!
    override func viewDidLoad() {
        var pages = navigationController?.viewControllers.count ?? 0
        pagesLabel.text = "Catalog, Page \(pages - 1)"
        super.viewDidLoad()
        setConstraints()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTap(_ sender: Any) {
        let browseVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "BrowseViewController")
        navigationController?.pushViewController(browseVC, animated: true)
    }
    private func setConstraints() {
        browseButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            browseButton.topAnchor.constraint(equalTo: pagesLabel.bottomAnchor, constant: 20),
            browseButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        pagesLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pagesLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            pagesLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
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
