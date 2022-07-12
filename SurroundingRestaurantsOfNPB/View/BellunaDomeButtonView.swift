//
//  BellunaDomeButtonView.swift
//  SurroundingRestaurantsOfNPB
//
//  Created by 金田岳大 on 2022/07/11.
//

import UIKit

final class BellunaDomeButtonView: UIView {

    @IBOutlet private weak var BellunaDomeButton: UIButton!
 
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadNib()
    }

    private func loadNib() {
        guard let view = Bundle.main.loadNibNamed(BellunaDomeButtonView.className, owner: self, options: nil)?.first as? UIView else { return }
        view.frame = self.bounds
        setup()
        self.addSubview(view)
    }

    private func setup() {
    }
    
    @IBAction func didTapBellunaDomeButton(_ sender: UIButton) {
    }
}
