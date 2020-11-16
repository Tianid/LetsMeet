//
//  PartyControllCell.swift
//  LetsMeet
//
//  Created by Tianid on 16.11.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

import UIKit

class PartyControllCell: UITableViewCell {

    @IBOutlet weak var partyNameLabel: UILabel!
    @IBAction func newMeetingAction(_ sender: UIButton) {
        print(#function)
    }
    
    
    var viewModel: IPartyControllCellViewModel? {
        didSet {
            guard let _viewModel = viewModel else { return }
            partyNameLabel.text = _viewModel.partyName
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
