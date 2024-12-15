//
//  UserModel.swift
//  Less7HW
//

//

import Foundation

struct UserModel {
    
    let userAvatarName: String
    let userFirstName: String
    let userLastName: String
    let userEmail: String
    let userAdderss: String
}

extension UserModel: ProfileData {
    var avatarName: String {
        get {
            return userAvatarName
        }
       
    }
    
    var firstName: String {
        get {
            return userFirstName
        }
     
    }
    
    var lastName: String {
        get {
            return userLastName
        }
        
    }
    
    var email: String {
        get {
            return userEmail
        }
        
    }
    
    var adress: String {
        get {
            return userAdderss
        }
        
    }
    
        
}
