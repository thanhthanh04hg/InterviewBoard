//
//  SecondCollectionViewCell.swift
//  CollectionView
//
//  Created by Macbook on 10/12/20.
//  Copyright © 2020 Macbook. All rights reserved.
//

import UIKit

class SecondCollectionViewCell: UICollectionViewCell {
    var listLabel = ["Thanh","Thang","Mai"]
    @IBOutlet var collView: UICollectionView!
    @IBOutlet var topView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        topView.layer.cornerRadius = 20
        let nib = UINib(nibName: "SuggetCollectionViewCell", bundle: nil)
        collView.register(nib, forCellWithReuseIdentifier: "SuggetCollectionViewCell")
        collView.dataSource = self
        collView.delegate = self
        let layoutSuggetCell = UICollectionViewFlowLayout()
        layoutSuggetCell.minimumLineSpacing = 20
        layoutSuggetCell.scrollDirection = .horizontal
        layoutSuggetCell.itemSize = CGSize(width: self.collView.bounds.width/6, height: self.collView.bounds.height/2)
        collView.collectionViewLayout = layoutSuggetCell
        collView.showsHorizontalScrollIndicator = true
        
        
    }

}
extension SecondCollectionViewCell : UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collView.dequeueReusableCell(withReuseIdentifier: "SuggetCollectionViewCell", for: indexPath)
//        switch indexPath.count {
//        case 0:
//            cell.label.text = listLabel[indexPath.item]
//        default:
//            print("See you again")
//        }
        return cell
    }
    
    
}
