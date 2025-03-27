//
//  ProductCollectionViewCell.swift
//  17_02_25_CollectionView_WithCustomCell
//
//  Created by Vishal Jagtap on 27/03/25.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productTitleLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
}
