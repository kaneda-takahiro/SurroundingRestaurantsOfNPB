//
//  NPBListCell.swift
//  SurroundingRestaurantsOfNPB
//
//  Created by 金田岳大 on 2022/07/12.
//

import UIKit

final class NPBListCell: UITableViewCell {
    
    @IBOutlet weak var stadiumNameLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
}

