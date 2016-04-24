//
//  DataViewScrollable.swift
//  ExtendedTableCollection
//
//  Created by Basem Emara on 4/23/16.
//  Copyright © 2016 Zamzam Inc. All rights reserved.
//

import UIKit

public protocol DataControllable: class {
    var dataView: DataViewable { get }
    var models: [Contentable] { get set }
    var service: Serviceable { get }
    var cellNibName: String { get }
    var cellReuseIdentifier: String { get }
    var cellBundleIdentifier: String { get }
}

public extension DataControllable where Self: UIViewController {
    
    var cellReuseIdentifier: String {
        return "Cell"
    }
    
    var cellBundleIdentifier: String {
        return "io.zamzam.ExtendedTableCollection-iOS"
    }
    
    public func didLoad(delegate: DataControllable) {
        setupInterface()
        setupDataSource()
    }
    
    public func setupInterface() {
        self.dataView.registerNib(cellNibName,
            cellIdentifier: cellReuseIdentifier,
            bundleIdentifier: cellBundleIdentifier)
    }
    
    public func setupDataSource() {
        service.get { items in
            self.models = items
            self.dataView.reloadData()
        }
    }
}