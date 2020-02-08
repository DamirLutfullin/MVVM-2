//
//  DetailViewModelType.swift
//  MVVM-2
//
//  Created by Дамир Лутфуллин on 07.02.2020.
//  Copyright © 2020 Damir Lutfullin. All rights reserved.
//

import Foundation

protocol DetailViewModelType {
    var description: String { get }
    var age: Box<String?> { get }
}
