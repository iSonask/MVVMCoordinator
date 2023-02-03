//
//  DetailViewController.swift
//  MVVMCoordinator
//
//  Created by Akash S on 30/01/2023.
//

import UIKit

class DetailViewController: UIViewController {
    var viewModel: DetailViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        guard let viewModel = viewModel else { return }
        print(viewModel.detail.name,viewModel.detail.address)
        
    }
    

}
