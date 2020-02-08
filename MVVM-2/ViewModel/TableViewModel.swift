//
//  ViewModel.swift
//  MVVM-2
//
//  Created by Дамир Лутфуллин on 06.02.2020.
//  Copyright © 2020 Damir Lutfullin. All rights reserved.
//

import Foundation

class TableViewModel: TableViewViewModelType {
    
    private var indexPath: IndexPath?
    
    var profiles = [Profile(name: "Gosha", secondName: "Dudar", age: 33),
                    Profile(name: "Misha", secondName: "Smith", age: 22),
                    Profile(name: "John", secondName: "Less", age: 11),
                    Profile(name: "Anna", secondName: "Grett", age: 44)]
    
    var numberOfRows: Int {
        return profiles.count
    }
    
    func cellViewModel(from indextPath: IndexPath) -> TableViewCellViewModelType? {
        let profile = profiles[indextPath.row]
        return TableViewCellViewModel(profile: profile)
    }
    
    func viewModelForSelectedRow() -> DetailViewModelType? {
        guard let indexPath = indexPath else { return nil }
        return DetailViewViewModel(profile: profiles[indexPath.row])
    }

    func seletedRowAtIndexPath(from indexPath: IndexPath) {
        self.indexPath = indexPath
    }
    
    
    
}
