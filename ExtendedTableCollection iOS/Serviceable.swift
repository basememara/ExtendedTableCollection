//
//  Serviceable.swift
//  ExtendedTableCollection
//
//  Created by Basem Emara on 4/23/16.
//  Copyright © 2016 Zamzam Inc. All rights reserved.
//

import Foundation

public protocol Serviceable {
    
    func get(handler: [Contentable] -> Void)
    
}