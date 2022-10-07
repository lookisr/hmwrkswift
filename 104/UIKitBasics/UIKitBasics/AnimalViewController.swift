//
//  AnimalViewController.swift
//  UIKitBasics
//
//  Created by Rafael Shamsutdinov on 07.10.2022.
//

import UIKit

class AnimalViewController: UIViewController {
    @IBOutlet weak var image: UIImageView!
    let images = [
        "1.jpeg",
        "2.jpeg",
        "3.jpeg",
        "4.jpeg"
        ]
    override func viewDidLoad() {
        image.image = UIImage(named: images.shuffled().randomElement()!)
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
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
