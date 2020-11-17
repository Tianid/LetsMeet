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
        viewModel?.addNewMeet()
    }
    
    
    var viewModel: IPartyControllCellViewModel? {
        didSet {
            makeBind()
            setDataToLabel()
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
    
    private func setDataToLabel() {
        guard let _viewModel = viewModel else { return }
        partyNameLabel.text = _viewModel.partyName
    }
    
    private func makeBind() {
        viewModel?.partyNameLabel.bind { [unowned self] in
            guard let name = $0 else { return }
            self.partyNameLabel.text = name
            
        }
    }
    
}
