//
//  PostService.swift
//  ExtendedTableCollection
//
//  Created by Basem Emara on 4/23/16.
//  Copyright © 2016 Zamzam Inc. All rights reserved.
//

import Foundation

public struct PostService: Serviceable {
    
    public init() { }

    public func get(handler: [Contentable] -> Void) {
        // TODO: Get real data from web service or database
        // i.e., Alamofire, Realm, etc
        handler([
            Post(title: "Protocol Conformance Extensions in Swift", content: "Swift is a unique language that has some revolutionary ideas. One of which is protocol conformance extension. This concept allows you to take an existing type and force it to adopt another protocol it never knew it existed before.", image: "http://basememara.com/wp-content/uploads/2015/04/swift-stage-1024x631.png"),
            Post(title: "Creating Cross-Platform Swift Frameworks for iOS, watchOS, and tvOS via Carthage and CocoaPods", content: "In this post, I’d like to show you how to create a Swift framework for iOS, watchOS, and tvOS and get them distributed via Carthage and CocoaPods. It’s a technique I use to share frameworks across all my apps and with the community.", image: "http://basememara.com/wp-content/uploads/2016/03/CapturFiles_330.png"),
            Post(title: "Unit Testing in Swift, Xcode, and Beyond", content: "Unit testing has a stigma of slowing you down while you’re trying to rock some code. The truth is unit testing doesn’t have to be so dry. Once you start flipping the script, unit testing can be an opportunity for refactoring, refreshing, and finding bugs. Besides, who wouldn’t want to see a bunch of green checkmarks next to their code?: A beauty", image: "http://basememara.com/wp-content/uploads/2016/01/Unit_Testing_Successes.png")
        ].flatMap { $0 as Contentable })
    }

}