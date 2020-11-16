//
//  PartyCell.swift
//  LetsMeet
//
//  Created by Tianid on 15.11.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

import UIKit

class PartyCell: UICollectionViewCell {
    private let controllCellIdentifier = "ControllCell"
    private let cellIdentifier = "MeetCell"
    @IBOutlet weak var tableView: UITableView!
    
    var viewModel: IPartyCellViewModel? {
        didSet {
            tableView.reloadData()
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        configureViews()
    }
    
    private func configureViews() {
        tableView.register(UINib(nibName: "\(PartyControllCell.self)", bundle: nil), forCellReuseIdentifier: controllCellIdentifier)
        tableView.register(UINib(nibName: "\(MeetCell.self)", bundle: nil), forCellReuseIdentifier: cellIdentifier)
    }

}

extension PartyCell: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? 1 : viewModel?.numberOfItems() ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell: UITableViewCell!
        
        if indexPath.section == 0 {
            guard let _cell = tableView.dequeueReusableCell(withIdentifier: controllCellIdentifier, for: indexPath) as? PartyControllCell else { return UITableViewCell() }
            _cell.viewModel = viewModel?.partyControllCellViewModel()
            cell = _cell
            
        } else  if indexPath.section == 1 {
            guard let _cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? MeetCell else { return UITableViewCell() }
            _cell.viewModel = viewModel?.cellViewModel(index: indexPath)
            cell = _cell
        }
        
        return cell
    }
}

extension PartyCell: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let cell = tableView.cellForRow(at: indexPath) as? MeetCell else { return }
        cell.tapped()
    }
}

