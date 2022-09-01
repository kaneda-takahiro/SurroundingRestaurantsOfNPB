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
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setNameLabel(entity: Restaurant) {
        guard let shop = entity.results.shop.first else { return }
        let shopName = shop.name
        nameLabel.text = shopName
    }
    
    func setGenreLabel(entity: Restaurant) {
        guard let shop = entity.results.shop.first else { return }
        let shopGenre = shop.genre.name
        genreLabel.text = shopGenre
    }
    
    func setThumbnailImageView(entity: Restaurant) {
        guard let shop = entity.results.shop.first else { return }
        guard let shopThumbnailImage = shop.logoImage else { return }
        thumbnailImageView.setImageByDefault(with: shopThumbnailImage)
        print("📩",shopThumbnailImage)
    }
}

extension UIImageView {
    func setImageByDefault(with url: URL) {
        URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
            if error == nil, case .some(let result) = data, let image = UIImage(data: result) {
                DispatchQueue.main.async {
                    self?.image = image
                }
            } else {}
        }
        .resume()
    }
}

//Entityの中のShopのnameプロパティにアクセスしたい
//shopNameはstring型にしたい→なってる
