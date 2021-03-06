//
//  TableViewController.swift
//  MVVM-2
//
//  Created by Дамир Лутфуллин on 06.02.2020.
//  Copyright © 2020 Damir Lutfullin. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var viewModel: TableViewViewModelType?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = TableViewModel()
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.numberOfRows ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell
        
        cell?.viewModel =  viewModel?.cellViewModel(from: indexPath)
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let viewModel = viewModel else { return }
        viewModel.seletedRowAtIndexPath(from: indexPath)
        
        performSegue(withIdentifier: "segue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue" {
            guard let dvc = segue.destination as? DetailViewController else { return }
            dvc.viewModel = viewModel?.viewModelForSelectedRow()
        }
    }
}
