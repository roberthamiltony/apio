//
//  AppCoordinator.swift
//  apio
//
//  Created by Robert Hamilton on 28/01/2020.
//  Copyright © 2020 Robert Hamilton. All rights reserved.
//

import Foundation
import UIKit

/// The intention of the AppCoordinator class is to provide coordination between the different app flows. In
/// practise, this means handling the Coordinator instances for the subflowa through the app.
class AppCoordinator: Coordinator {
    override func start() {
        navigationController.navigationBar.prefersLargeTitles = true
        navigationController.navigationBar.largeTitleTextAttributes = [
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 100)
        ]
        navigationController.view.backgroundColor = UIColor.white
        navigationController.interactivePopGestureRecognizer?.isEnabled = false
    }
}
