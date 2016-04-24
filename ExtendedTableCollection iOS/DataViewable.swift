//
//  DataScrollable.swift
//  ExtendedTableCollection
//
//  Created by Basem Emara on 4/23/16.
//  Copyright © 2016 Zamzam Inc. All rights reserved.
//

import UIKit

public protocol DataViewable {
    func reloadData()
    func registerNib(nibName: String, cellIdentifier: String, bundleIdentifier: String?)
}

extension UITableView: DataViewable {}
extension UICollectionView: DataViewable {}