//
//  ProductsModel.swift
//  ProductsTechApp
//
//  Created by anvar on 08/05/22.
//

import UIKit

struct ProductModel {
    var image: UIImage
    var productName: String
    var descriptionLb: String
    var totalAvailable: Int
    var priceLb:Int
    var boxQuantity: Int
    
    static func fetchProducts() -> [ProductModel] {
        let someItem = ProductModel(image: UIImage(named: "file1413189310")!,
                                    productName: "Air time havo tozalagich 300 ml 4 v 1 yabloko",
                                    descriptionLb: "Флинт гренки 100 гр молодой чеснок, юбалдыфлвфылвфлылвфылвлфлвфы",
                                    totalAvailable: 100,
                                    priceLb: 44000 ,
                                    boxQuantity: 20)
        let someItem2 = ProductModel(image: UIImage(named: "Optimized-AhhLn8TOyDK4apsQ8gJNag")!,
                                     productName: "Flint",
                                     descriptionLb: "Очень вкусно с частицами корицы",
                                     totalAvailable: 50,
                                     priceLb:44000 ,
                                     boxQuantity: 20)
        let someItem3 = ProductModel(image: UIImage(named: "Optimized-AhhLn8TOyDK4apsQ8gJNag")!,
                                     productName: "Kirieshki",
                                     descriptionLb: "Очень вкусно с частицами корицы",
                                     totalAvailable: 50,
                                     priceLb:44000 ,
                                     boxQuantity: 20)
        let someItem4 = ProductModel(image: UIImage(named: "Optimized-AhhLn8TOyDK4apsQ8gJNag")!,
                                     productName: "Lays",
                                     descriptionLb: "Очень вкусно с частицами корицы",
                                     totalAvailable: 50,
                                     priceLb:44000 ,
                                     boxQuantity: 20)
        let someItem5 = ProductModel(image: UIImage(named: "Optimized-AhhLn8TOyDK4apsQ8gJNag")!,
                                     productName: "Pringles",
                                     descriptionLb: "Очень вкусно с частицами корицы",
                                     totalAvailable: 50,
                                     priceLb:44000 ,
                                     boxQuantity: 20)
        let someItem6 = ProductModel(image: UIImage(named: "Optimized-AhhLn8TOyDK4apsQ8gJNag")!,
                                     productName: "Smprite",
                                     descriptionLb: "Очень вкусно с частицами корицы",
                                     totalAvailable: 50,
                                     priceLb:44000 ,
                                     boxQuantity: 20)
        
        return [someItem,someItem2, someItem3, someItem4, someItem5, someItem6]
    }
}
