//
//  SecondViewController.swift
//  ExtendedTableCollection
//
//  Created by Basem Emara on 4/23/16.
//  Copyright © 2016 Zamzam Inc. All rights reserved.
//

import UIKit
import ExtendedTableCollection_iOS

class CollectionViewController: UICollectionViewController, DataControllable {

    let cellNibName = "CollectionViewCell"
    let service: Serviceable = PostService()
    var models: [Contentable] = []
    
    var dataView: DataViewable {
        return collectionView!
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        didLoad(self as DataControllable)
    }

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return models.count
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView[indexPath] as! CollectionViewCell
        let model = models[indexPath.row]
        return cell.bind(model)
    }

}