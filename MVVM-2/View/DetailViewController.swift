//
//  DetailViewController.swift
//  MVVM-2
//
//  Created by Дамир Лутфуллин on 07.02.2020.
//  Copyright © 2020 Damir Lutfullin. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var fullNameLabel: UILabel!
    
    var viewModel: DetailViewModelType?

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let viewModel = viewModel else { return }
        self.fullNameLabel.text = viewModel.description
    }
}
