//
//  TwitterClient.swift
//  CheckInPro
//
//  Created by Liem Ly Quan on 11/8/16.
//  Copyright © 2016 coderschool. All rights reserved.
//

import Foundation
import OAuthSwift

class TwitterClient: OAuth1Swift {
    static var sharedInstance = TwitterClient(
        consumerKey:        "in2VRiHafj4GEy2maakxE8BBC",
        consumerSecret:     "rg6PYmVIHuG7rPkgSJts2gxOad4VzkNkvVsKkFfYbvYQRYTSWA",
        requestTokenUrl:    "https://api.twitter.com/oauth/request_token",
        authorizeUrl:       "https://api.twitter.com/oauth/authorize",
        accessTokenUrl:     "https://api.twitter.com/oauth/access_token"
    )
    
    func login(){
        
        self.authorize(
            withCallbackURL: "CIP://oauth-callback/twitter",
            success: { credential, response, parameters in
                
            },
            failure: { error in
                print(error)
            }
        )
    }
    
    func post(status: String){
        client.post(
            "https://api.twitter.com/1.1/statuses/update.json",
            parameters: ["status": status],
            headers: nil,
            body: nil,
            success: { response in
                print(response)
            },
            failure: { error in
                print(error)
            }
        )
    }
}
