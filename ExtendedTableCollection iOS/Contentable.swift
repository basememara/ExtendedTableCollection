//
//  Contentable.swift
//  ExtendedTableCollection
//
//  Created by Basem Emara on 4/23/16.
//  Copyright © 2016 Zamzam Inc. All rights reserved.
//

import Foundation

public protocol Contentable {
    var title: String { get set }
    var content: String { get set }
    var image: String { get set }
}