//
//  CollectionViewController.swift
//  IOSCollectionViewControllerTutorial
//
//  Created by Maksim Nosov on 25/03/2019.
//  Copyright © 2019 Maksim Nosov. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class CollectionViewController: UICollectionViewController {

    var cellColor = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 100
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        cell.backgroundColor = cellColor ? UIColor.red : UIColor.blue
        cellColor = !cellColor
        
        // Configure the cell
    
        return cell
    }
}
