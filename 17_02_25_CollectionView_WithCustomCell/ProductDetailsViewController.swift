//
//  ProductDetailsViewController.swift
//  17_02_25_CollectionView_WithCustomCell
//
//  Created by Vishal Jagtap on 31/03/25.
//

import UIKit
import SDWebImage

class ProductDetailsViewController: UIViewController {
    
    @IBOutlet weak var productTitleLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
    
    @IBOutlet weak var dummyImageView: UIImageView!
    
    var productContainer : Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        extractAndBindProductData()
        extractImageUsingPodAndBind()
    }
    
    private func extractImageUsingPodAndBind(){
        var urlString = "https://picsum.photos/seed/picsum/200/300"
        var url = URL(string: urlString)
        
        dummyImageView.sd_setImage(with: url,
                                   placeholderImage:
                                    UIImage(named: "test_image_2"))
    }
    
    private func extractAndBindProductData(){
        self.productTitleLabel.text = productContainer?.productTitle
        self.productPriceLabel.text = "\(productContainer?.productPrice)"
    }
}
