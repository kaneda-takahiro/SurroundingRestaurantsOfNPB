//
//  NPBListCell.swift
//  SurroundingRestaurantsOfNPB
//
//  Created by 金田岳大 on 2022/07/12.
//

import UIKit

final class NPBListCell: UITableViewCell {
    
    @IBOutlet private weak var stadiumNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setupStadiumName(name: String) {
        stadiumNameLabel.text = name
    }
}
