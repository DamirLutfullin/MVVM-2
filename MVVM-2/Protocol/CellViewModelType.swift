//
//  CellViewModelType.swift
//  MVVM-2
//
//  Created by Дамир Лутфуллин on 06.02.2020.
//  Copyright © 2020 Damir Lutfullin. All rights reserved.
//

import Foundation

protocol TableViewCellViewModelType: AnyObject {
    var fullName: String { get }
    var age: String { get }
}
