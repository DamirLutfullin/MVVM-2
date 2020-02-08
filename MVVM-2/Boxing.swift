//
//  Boxing.swift
//  MVVM-2
//
//  Created by Дамир Лутфуллин on 08.02.2020.
//  Copyright © 2020 Damir Lutfullin. All rights reserved.
//

import Foundation

class Box <T> {
    
    var listener: ((T) -> ())?
    
    var value: T {
        didSet {
            listener?(value)
        }
    }
    
    func bind(listener: @escaping (T)->() ) {
        self.listener = listener
        listener(value)
    }
    
    init (value: T) {
        self.value = value
    }
}
