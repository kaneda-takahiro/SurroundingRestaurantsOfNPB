//
//  TokyoDomeButtonView.swift
//  SurroundingRestaurantsOfNPB
//
//  Created by 金田岳大 on 2022/07/11.
//

import UIKit

final class TokyoDomeButtonView: UIView {

    @IBOutlet private weak var TokyoDomeButton: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadNib()
    }

    private func loadNib() {
        guard let view = Bundle.main.loadNibNamed(TokyoDomeButtonView.className, owner: self, options: nil)?.first as? UIView else { return }
        view.frame = self.bounds
        setup()
        self.addSubview(view)
    }

    private func setup() {
       
    }
    
    @IBAction private func didTapTokyoDomeButton(_ sender: UIButton) {
    }
    
}
