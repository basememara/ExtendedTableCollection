//
//  CollectionViewCell.swift
//  ExtendedTableCollection
//
//  Created by Basem Emara on 4/23/16.
//  Copyright © 2016 Zamzam Inc. All rights reserved.
//

import UIKit

public class CollectionViewCell: UICollectionViewCell {

    @IBOutlet public weak var itemImage: UIImageView!
    @IBOutlet public weak var itemTitle: UILabel!

    public func bind(model: Contentable) -> Self {
        itemTitle.text = model.title
        itemImage.setURL(model.image)
        return self
    }
    
}
