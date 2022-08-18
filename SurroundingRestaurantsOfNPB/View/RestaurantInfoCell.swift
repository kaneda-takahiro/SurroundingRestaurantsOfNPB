//
//  RestaurantInfoCell.swift
//  SurroundingRestaurantsOfNPB
//
//  Created by 金田岳大 on 2022/07/14.
//

import UIKit

final class RestaurantInfoCell: UITableViewCell {
    
    @IBOutlet private weak var thumbnailImageView: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var genreLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setNameLabel()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setNameLabel() {
        print("nameLabelプロパティにレスポンスで返ってきた値を入れる")
        
    }
}
