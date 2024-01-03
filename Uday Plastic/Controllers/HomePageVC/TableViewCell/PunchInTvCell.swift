//
//  PunchInTvCell.swift
//  Uday Plastic
//
//  Created by bd05 on 1/3/24.
//

import UIKit

class PunchInTvCell: UITableViewCell {
    @IBOutlet var bgView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        bgView.clipsToBounds = false
        bgView.layer.cornerRadius = 30
        bgView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
