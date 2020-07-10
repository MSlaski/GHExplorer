//
//  AppCoordinator.swift
//  GHExplorer
//
//  Created by Mateusz Ślaski on 10/07/2020.
//  Copyright © 2020 Mateusz Ślaski. All rights reserved.
//

import UIKit

class AppCoordinator: Coordinator {
  let presenter: UINavigationController
  
  init() {
    presenter = UINavigationController()
    presenter.navigationBar.prefersLargeTitles = true
  }
  
  func start() {
    // TODO: Instaniate First VC
  }
}
