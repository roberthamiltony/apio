//
//  SceneDelegate.swift
//  apio
//
//  Created by Robert Hamilton on 23/08/2020.
//  Copyright © 2020 Robert Hamilton. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    var appCoordinator: AppCoordinator?
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            self.window = window
            let navigator = UINavigationController()
            let coordinator = AppCoordinator(navigationController: navigator)
            appCoordinator = coordinator
            window.rootViewController = navigator
            window.makeKeyAndVisible()
            coordinator.start()
        }
    }
}
