//
//  FacebookClient.swift
//  CheckInPro
//
//  Created by Liem Ly Quan on 11/8/16.
//  Copyright © 2016 coderschool. All rights reserved.
//

import Foundation
import OAuthSwift

class FacebookClient: OAuth2Swift {
    
    static var sharedInstance = FacebookClient(
        consumerKey:    "********",
        consumerSecret: "********",
        authorizeUrl:   "https://api.instagram.com/oauth/authorize",
        responseType:   "token"
    )
    
    func login(){
        self.authorize(
            withCallbackURL: "CIP://facebook",
            scope: "likes+comments", state:"INSTAGRAM",

            success: { credential, response, parameters in
                
            },
            failure: { error in
                
            }
        )
    }
    
    func postToTwitter(status: String){
        
    }
}
