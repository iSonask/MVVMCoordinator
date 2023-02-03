//
//  DetailCoordinator.swift
//  MVVMCoordinator
//
//  Created by Akash S on 30/01/2023.
//

import Foundation
import UIKit

// MARK: - Coordinator
class DetailCoordinator: Coordinator {
  var navigationController: UINavigationController
  var detail: DetailModel

  init(navigationController: UINavigationController, detail: DetailModel) {
    self.navigationController = navigationController
    self.detail = detail
  }

  func start() {
    let viewModel = DetailViewModel(detail: detail)
    let viewController = DetailViewController()
      viewController.viewModel = viewModel
    navigationController.pushViewController(viewController, animated: true)
  }
}
