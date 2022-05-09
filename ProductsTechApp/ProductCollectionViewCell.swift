//
//  ProductCollectionViewCell.swift
//  ProductsTechApp
//
//  Created by anvar on 08/05/22.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {
    static let reuseid = "cell"
    @IBOutlet var descriptionLb: UILabel!
    @IBOutlet var available: UILabel!
    @IBOutlet var inBoxQuantity: UILabel!
    @IBOutlet var priceLb: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    func configure(with product: ProductModel ) {
        descriptionLb.text = product.descriptionLb
        inBoxQuantity.text = String(product.boxQuantity)
        available.text = String(product.totalAvailable)
        priceLb.text = "\(product.priceLb) сум"
        imageView.image = product.image
    }
}
