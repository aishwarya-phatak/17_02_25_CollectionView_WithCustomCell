//
//  ViewController.swift
//  17_02_25_CollectionView_WithCustomCell
//
//  Created by Vishal Jagtap on 27/03/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var productsCollectionView: UICollectionView!
    private let productCollectionViewCellIdentifier : String = "ProductCollectionViewCell"
    var productCollectionViewCell : ProductCollectionViewCell?
    var products : [Product] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
        initArrayList()
        registerCollectionViewWithXIB()
    }
    
    private func initArrayList(){
        for i in 1...20{
            products.append(Product(
                productId: i,
                productTitle: "Product \(i)",
                productPrice: i * 500 + 100))
        }
    }
    
    private func initViews(){
        productsCollectionView.delegate = self
        productsCollectionView.dataSource = self
    }
    
    private func registerCollectionViewWithXIB(){
        let uiNib = UINib(nibName: productCollectionViewCellIdentifier, bundle: nil)
        self.productsCollectionView.register(uiNib, forCellWithReuseIdentifier: productCollectionViewCellIdentifier)
    }
}


extension ViewController : UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        productCollectionViewCell = self.productsCollectionView.dequeueReusableCell(withReuseIdentifier: productCollectionViewCellIdentifier, for: indexPath) as! ProductCollectionViewCell
        productCollectionViewCell?.productImageView.image = UIImage(named: "test_image_1")
        productCollectionViewCell?.productTitleLabel.text = products[indexPath.row].productTitle
        productCollectionViewCell?.productPriceLabel.text = "\(products[indexPath.row].productPrice)"
        
        return productCollectionViewCell ?? UICollectionViewCell()
    }
}

extension ViewController : UICollectionViewDelegateFlowLayout{
    
}
