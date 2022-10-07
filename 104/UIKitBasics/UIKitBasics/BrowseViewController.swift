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

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTap(_ sender: Any) {
        let browseVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "BrowseViewController")
        navigationController?.pushViewController(browseVC, animated: true)
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
