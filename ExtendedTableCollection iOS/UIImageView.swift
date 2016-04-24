//
//  UIImageView.swift
//  ExtendedTableCollection
//
//  Created by Basem Emara on 4/23/16.
//  Copyright © 2016 Zamzam Inc. All rights reserved.
//

import UIKit

public extension UIImageView {

    /**
     Asynchronously set an image with a URL.
     TODO: Replace with Kingfisher in real project: https://github.com/onevcat/Kingfisher

     - parameter URL: The URL of the image.
     */
    func setURL(URL: String) {
        guard let url = NSURL(string: URL) else { return }
        
        NSURLSession.sharedSession().dataTaskWithURL(url) { data, response, error in
            guard let httpURLResponse = response as? NSHTTPURLResponse
                    where error == nil && httpURLResponse.statusCode == 200,
                let mimeType = response?.MIMEType where mimeType.hasPrefix("image"),
                let data = data,
                let image = UIImage(data: data)
                else { return }
            
            dispatch_async(dispatch_get_main_queue()) {
                self.image = image
            }
        }.resume()
    }
    
}