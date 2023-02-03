//
//  ViewController.swift
//  MVVMCoordinator
//
//  Created by Akash S on 30/01/2023.
//

import UIKit
// MARK: - ViewController

class ViewController: UIViewController {

    var viewModel: UserViewModel?
    // UI Outlets
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var age: UILabel!

    override func viewDidLoad() {
      super.viewDidLoad()
        if let model = viewModel {
            name.text = model.user.name
            age.text = "\(model.user.age)"
            print(model.user.name)
            print(model.user.age)
        }
    }

    @IBAction func pushAction(_ sender: Any) {
        let detail = DetailModel(name: "name", address: "address")
        let userCoordinator = UserCoordinator(navigationController: self.navigationController ?? UINavigationController(), user: viewModel!.user)
        userCoordinator.goToDetail(detail: detail)
    }
    
}
