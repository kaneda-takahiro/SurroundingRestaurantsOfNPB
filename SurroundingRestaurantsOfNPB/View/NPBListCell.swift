//
//  NPBListCell.swift
//  SurroundingRestaurantsOfNPB
//
//  Created by 金田岳大 on 2022/07/12.
//

import UIKit

class NPBListCell: UITableViewCell {
    
    
    @IBOutlet weak var stadiumNameButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func didTapStadiumNameButton(_ sender: UIButton) {
    }
    
    
}

