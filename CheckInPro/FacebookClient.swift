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
        consumerKey:    "261970457534546",
        consumerSecret: "830882057f0f683dc3902d35caacbede",
        authorizeUrl:   "https://www.facebook.com/dialog/oauth",
        responseType:   "token"
    )
    
    func login(){
        self.authorize(
            withCallbackURL: "CIP://oauth-callback/facebook",
            scope: "email",
            state:"FACEBOOK",
            success: { credential, response, parameters in
                
            },
            failure: { error in
                
            }
        )
    }
    
    func postToTwitter(status: String){
        
    }
}
