//
//  AnimalViewController.swift
//  UIKitBasics
//
//  Created by Rafael Shamsutdinov on 07.10.2022.
//

import UIKit

class AnimalViewController: UIViewController {
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var labeltext: UILabel!
    let images = [
        "1.jpeg",
        "2.jpeg",
        "3.jpeg",
        "4.jpeg"
        ]
    override func viewDidLoad() {
        image.image = UIImage(named: images.shuffled().randomElement()!)
        super.viewDidLoad()
        setConstraints()
        // Do any additional setup after loading the view.
    }
    private func setConstraints() {
        labeltext.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labeltext.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 130),
            labeltext.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            labeltext.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labeltext.topAnchor.constraint(equalTo: image.topAnchor, constant: -30)
            ])
        image.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            image.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            image.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            image.heightAnchor.constraint(equalToConstant: 380),
            image.heightAnchor.constraint(equalTo: image.widthAnchor)
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
