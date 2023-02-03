//
//  MainCoordinator.swift
//  MVVMCoordinator
//
//  Created by Akash S on 30/01/2023.
//

import Foundation
import UIKit


protocol Coordinator {
  func start()
}


// MARK: - Main Coordinator
class MainCoordinator: Coordinator {
  var navigationController: UINavigationController

  init(navigationController: UINavigationController) {
    self.navigationController = navigationController
  }

  func start() {
    let user = User(name: "John Doe", age: 30)
    let userCoordinator = UserCoordinator(navigationController: navigationController, user: user)
    userCoordinator.start()
  }
}
