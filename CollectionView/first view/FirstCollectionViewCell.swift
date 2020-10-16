//
//  FirstCollectionViewCell.swift
//  CollectionView
//
//  Created by Macbook on 10/12/20.
//  Copyright © 2020 Macbook. All rights reserved.
//

import UIKit

class FirstCollectionViewCell: UICollectionViewCell {

    @IBOutlet var view: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        setGradientBackground(colorLeft: #colorLiteral(red: 0.1746702492, green: 0.8784618378, blue: 0.9749967456, alpha: 1), colorRight: #colorLiteral(red: 0.08990073949, green: 0.6880795956, blue: 0.6809570193, alpha: 1))
    }
    func setGradientBackground(colorLeft: UIColor, colorRight: UIColor) {
         let gradientLayer = CAGradientLayer()
         gradientLayer.colors = [colorRight.cgColor, colorLeft.cgColor]
         gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
         gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
         gradientLayer.locations = [0, 1]
         gradientLayer.frame = view.bounds
         view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
