//
//  DetailViewController.swift
//  MVVM-2
//
//  Created by Дамир Лутфуллин on 07.02.2020.
//  Copyright © 2020 Damir Lutfullin. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var viewModel: DetailViewModelType?
    @IBOutlet weak var fullNameLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let viewModel = viewModel else { return }
        self.fullNameLabel.text = viewModel.description
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel?.age.bind(listener: { (value) in
            guard let value = value else { return }
            self.fullNameLabel.text = value
        })
        
        delay(delay: 5) {
            self.viewModel?.age.value = "Happy new year!"
        }
    }
    
    func delay( delay: Double, clousure: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
            clousure()
        }
    }
}
