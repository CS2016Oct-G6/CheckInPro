//
//  Post.swift
//  CheckInPro
//
//  Created by Liem Ly Quan on 11/7/16.
//  Copyright © 2016 coderschool. All rights reserved.
//

import Foundation
import ObjectMapper
import CoreLocation

class Post: Mappable {
    var status:String?
    var location: CLLocation?
    var imageUrl: String?
    var imageData: NSData?
    
    required init?(map: Map) {
        
    }
    
    // Mappable
    func mapping(map: Map) {

    }
}
