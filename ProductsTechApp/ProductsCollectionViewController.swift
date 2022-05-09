//
//  ProductsCollectionViewController.swift
//  ProductsTechApp
//
//  Created by anvar on 08/05/22.
//

import UIKit

class ProductsCollectionViewController: UIViewController{
   
    let width = UIScreen.main.bounds.size.width
    let height = UIScreen.main.bounds.size.height
    var cells = [ProductModel]()

    @IBOutlet var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        set(cells: ProductModel.fetchProducts())
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
        collectionView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navController = segue.destination as? UINavigationController else {return}
        guard let addProduct = navController.topViewController as? AddProductViewController else {return}
        addProduct.cell = sender as? ProductModel
    }
    
    private func set(cells: [ProductModel]) {
        self.cells = cells
    }
}

// MARK: UICollectionViewDataSource & UICollectionViewDelegate

    extension ProductsCollectionViewController: UICollectionViewDelegate, UICollectionViewDataSource {
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         cells.count
    }
    
     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ProductCollectionViewCell
        let product = cells[indexPath.section] 
        cell.configure(with:product )
        return cell
    }
        
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            let product = cells[indexPath.row]
            performSegue(withIdentifier: "addProduct", sender: product)
        }
    }

// MARK: UICollectionViewDelegateFlowLayout

extension ProductsCollectionViewController: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if CGFloat(570) < height {
            return CGSize(width: CGFloat(width) / 3 - 16, height: 200)
        } else {
                return CGSize(width: CGFloat(width) / 2 - 16, height: 220)
            }
        }
    
    func collectionView(_: UICollectionView, layout: UICollectionViewLayout, insetForSectionAt: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 20, left: 10, bottom: 20, right: 10)
    }
    func collectionView(_: UICollectionView, layout: UICollectionViewLayout, minimumLineSpacingForSectionAt: Int) -> CGFloat {
        return 8
    }
}


