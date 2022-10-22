//
//  SceneDelegate.swift
//  HW6
//
//  Created by Rafael Shamsutdinov on 21.10.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let scene = (scene as? UIWindowScene) else { return }
        let navigationController = UINavigationController.init(rootViewController: TableViewController())
        let window = UIWindow(windowScene: scene)
        self.window = window
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }

}
