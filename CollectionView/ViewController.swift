//
//  ViewController.swift
//  CollectionView
//
//  Created by Macbook on 10/12/20.
//  Copyright © 2020 Macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let layout = UICollectionViewFlowLayout()
    @IBOutlet var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib.init(nibName: "FirstCollectionViewCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "FirstCollectionViewCell")
        let nib2 = UINib.init(nibName: "SecondCollectionViewCell", bundle: nil)
        collectionView.register(nib2, forCellWithReuseIdentifier: "SecondCollectionViewCell")
        let nib3 = UINib.init(nibName: "DiscoverCollectionViewCell", bundle: nil)
        collectionView.register(nib3, forCellWithReuseIdentifier: "DiscoverCollectionViewCell")
        collectionView.dataSource = self
        collectionView.delegate = self
        layout.minimumLineSpacing = -40
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width:self.view.bounds.width, height: self.view.bounds.height/2)
        collectionView.collectionViewLayout = layout
        collectionView.showsVerticalScrollIndicator = true
        collectionView.isPagingEnabled = true
        
    }

}
extension ViewController : UICollectionViewDataSource,UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.item == 0{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FirstCollectionViewCell", for: indexPath)
            print(0)
            return cell
            
        }
            
        if indexPath.item == 1{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SecondCollectionViewCell", for: indexPath)
            print(1)
            return cell
        }
        else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DiscoverCollectionViewCell", for: indexPath)
            return cell
        }
    }
    
    
}
