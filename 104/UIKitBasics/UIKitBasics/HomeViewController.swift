//
//  HomeViewController.swift
//  UIKitBasics
//
//  Created by Rafael Shamsutdinov on 07.10.2022.
//
import UIKit

class HomeViewController: UIViewController {
    var namess: String = "First vc"
    let defs = UserDefaults.standard
    @IBOutlet weak var name: UILabel!
    override func viewDidLoad() {
        var pages = navigationController?.viewControllers.count ?? 0
        name.text = "Hello, \(String(describing: defs.string(forKey: "name")!))"
        super.viewDidLoad()
        
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
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

