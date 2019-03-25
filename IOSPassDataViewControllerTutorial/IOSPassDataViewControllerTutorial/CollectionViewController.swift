//
//  CollectionViewController.swift
//  IOSPassDataViewControllerTutorial
//
//  Created by Maksim Nosov on 25/03/2019.
//  Copyright © 2019 Maksim Nosov. All rights reserved.
//

import UIKit


class CollectionViewController: UICollectionViewController {

    let modelData = ["1","2","3","4","5","6","7","8","9"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return modelData.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellId", for: indexPath)
    
        // Configure the cell
        if let label = cell.viewWithTag(100) as? UILabel {
            label.text = modelData[indexPath.row]
        }
    
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DetailViewController,
            let index = collectionView.indexPathsForSelectedItems?.first {
            destination.selectedNumber = modelData[index.row]
        }
    }
}
