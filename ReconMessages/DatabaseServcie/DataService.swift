//
//  DataService.swift
//  ReconMessages
//
//  Created by Brett Schumann on 26/06/2017.
//  Copyright © 2017 Brett Schumann. All rights reserved.
//

import Foundation
import Firebase
import FirebaseDatabase
import FirebaseAuth

class DataService {
    
    lazy var database = Database.database().reference()
    
    
    func createUser(user: User ) {
        let userValues: Dictionary = [
        "EmailAddress": user.email,
        "ProfileName" : user.displayName
            
        ]
        

        let userData = database.child("users").child(user.uid)
        userData.updateChildValues(userValues as! [AnyHashable : Any])
    }
    
//    func AddConversationWithProfile(profileId: Int, completion: @escaping () -> ()) {
//     
//        let conversationValues : Dictionary = [
//            "ConversationId" : "",
//            "Timestamp": "",
//        ]
//        
//    }
}
