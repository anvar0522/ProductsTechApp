//
//  AddProductViewController.swift
//  ProductsTechApp
//
//  Created by anvar on 09/05/22.
//

import UIKit
import Spring

class AddProductViewController: UIViewController {
    @IBOutlet var productImage: UIImageView!
    @IBOutlet var descriptionOfProduct: UILabel!
    @IBOutlet var nameOfProduct: UILabel!
    @IBOutlet var totalInBox: UILabel!
    @IBOutlet var pricePerOne: UILabel!
    @IBOutlet var receiptLb: SpringLabel!
    @IBOutlet var quantityOfProduct: UILabel!
    @IBOutlet var availableLb: SpringLabel!
    
    var cell: ProductModel!
    var int = 0
    var price = 0
    
    override func viewWillAppear(_ animated: Bool) {
        setView()
    }
    
    @IBAction func reduceQuantityPressed(_ sender: Any) {
        reduceProducts()
    }
    
    private func animateLabels() {
        availableLb.animation = "fadeInUp"
        availableLb.curve = "easeInOutQuad"
        availableLb.duration = 1.5
        availableLb.animate()
        
        receiptLb.animation = "fadeInUp"
        receiptLb.curve = "easeInOutQuad"
        receiptLb.duration = 1.5
        receiptLb.animate()
    }
    
    @IBAction func cancelButton(_ sender: Any) {
        dismiss(animated: true)
    }
    
    private func addProducts() {
        if int != cell.totalAvailable {
            int +=  1
            cell.totalAvailable -= 1
            quantityOfProduct.text = "\(int)"
            availableLb.text = "\(cell.totalAvailable)"
            print(cell.totalAvailable)
            price += cell.priceLb
            receiptLb.text = "\(price) сум"
        } else {
            showAlert(title: "Oooops", message: "Value cannot be more than \(cell.totalAvailable)")
        }
    }
    
    private func reduceProducts() {
        if int != 0 {
            int -=  1
            cell.totalAvailable += 1
            quantityOfProduct.text = "\(int)"
            availableLb.text = "\(cell.totalAvailable)"
            print(cell.totalAvailable)
            price -= cell.priceLb
            animateLabels()
        } else {
            showAlert(title: "Oooops", message: "Value cannot be less than 0")
        }
    }
    
    @IBAction func addQuantityPressed(_ sender: Any) {
        addProducts()
        animateLabels()
    }
    
    func setView() {
        productImage.image = cell.image
        descriptionOfProduct.text = cell.descriptionLb
        nameOfProduct.text = cell.productName
        totalInBox.text = "Qadoqdagi miqdor: \(cell.boxQuantity)"
        availableLb.text = "\(cell.totalAvailable)"
        pricePerOne.text = "\(cell.priceLb) сум"
    }
}

extension AddProductViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
