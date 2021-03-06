//
//  ViewModelType.swift
//  MVVM-2
//
//  Created by Дамир Лутфуллин on 06.02.2020.
//  Copyright © 2020 Damir Lutfullin. All rights reserved.
//

import Foundation

protocol TableViewViewModelType: AnyObject {
    var numberOfRows: Int { get }
    func cellViewModel(from indextPath: IndexPath) -> TableViewCellViewModelType?
    
    func viewModelForSelectedRow() -> DetailViewModelType?
    func seletedRowAtIndexPath(from indexPath: IndexPath) 
}
