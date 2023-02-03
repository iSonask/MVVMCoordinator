//
//  UserCoordinator.swift
//  MVVMCoordinator
//
//  Created by Akash S on 30/01/2023.
//

import Foundation
import UIKit


// MARK: - Coordinator
class UserCoordinator: Coordinator {
    var navigationController: UINavigationController
    var user: User
    
    init(navigationController: UINavigationController, user: User) {
        self.navigationController = navigationController
        self.user = user
    }
    
    func start() {
        let userViewModel = UserViewModel(user: user)
        if let userViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as? ViewController {
            userViewController.viewModel = userViewModel
            navigationController.pushViewController(userViewController, animated: true)
        }
    }
    
    func goToDetail(detail: DetailModel) {
        let viewModel = DetailViewModel(detail: detail)
        if let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController {
            viewController.viewModel = viewModel
            navigationController.pushViewController(viewController, animated: true)
        }
    }
}
