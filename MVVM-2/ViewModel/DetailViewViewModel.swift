//
//  DetailViewViewModel.swift
//  MVVM-2
//
//  Created by Дамир Лутфуллин on 07.02.2020.
//  Copyright © 2020 Damir Lutfullin. All rights reserved.
//

import Foundation


class DetailViewViewModel: DetailViewModelType {
    
    private var profile: Profile
    var description: String {
        return "\(profile.secondName) \(profile.name) is \(profile.age) old."
    }
    
    var age: Box<String?> = Box(value: nil)
    
    init(profile: Profile) {
        self.profile = profile
    }
}
