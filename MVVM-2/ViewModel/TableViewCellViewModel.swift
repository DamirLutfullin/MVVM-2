//
//  TableViewCellViewModel.swift
//  MVVM-2
//
//  Created by Дамир Лутфуллин on 06.02.2020.
//  Copyright © 2020 Damir Lutfullin. All rights reserved.
//

import Foundation

class TableViewCellViewModel: TableViewCellViewModelType {
    
    var fullName: String
    
    var age: String
    
    init(profile: Profile) {
        self.fullName = profile.secondName + " " + profile.name
        self.age = String(profile.age)
    }
}
