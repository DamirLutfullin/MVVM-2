//
//  TableViewCell.swift
//  MVVM-2
//
//  Created by Дамир Лутфуллин on 06.02.2020.
//  Copyright © 2020 Damir Lutfullin. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var age: UILabel!
    
    weak var viewModel: TableViewCellViewModelType? {
        willSet {
            name.text = newValue?.fullName
            age.text = newValue?.age
        }
    }

}
