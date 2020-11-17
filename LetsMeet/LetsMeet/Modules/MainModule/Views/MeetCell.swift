//
//  MeetCell.swift
//  LetsMeet
//
//  Created by Tianid on 16.11.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

import UIKit

class MeetCell: UITableViewCell {

    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    var viewModel: IMeetCellViewModel? {
        didSet {
            guard let _viewModel = viewModel else { return }
            bindViews()
            setDataToLabel(date: _viewModel.date, address: _viewModel.address, name: _viewModel.name)
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    private func bindViews() {
        viewModel?.meetDate.bind { [unowned self] in
            guard let date = $0 else { return }
            self.dateLabel.text = date.formattDate(formatType: .mothDayYear)
        }
        
        viewModel?.meetName.bind { [unowned self] in
            guard let name = $0 else { return }
            self.nameLabel.text = "\(name)"
        }
        
        viewModel?.meetAddress.bind { [unowned self] in
            guard let address = $0 else { return }
            self.addressLabel.text = "\(address)"
        }
    }
    
    private func setDataToLabel(date: Date, address: String, name: String) {
        viewModel?.meetDate.value = date
        viewModel?.meetAddress.value = address
        viewModel?.meetName.value = name
    }
    
    func tapped() {
        viewModel?.saveMeetChanges()
    }
    
    
    
}
