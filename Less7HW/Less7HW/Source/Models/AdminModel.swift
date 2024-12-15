//
//  AdminModel.swift
//  Less7HW
//

//

import Foundation

struct AdminModel {
    
    let adminAvatarName: String
    let adminFirstName: String
    let adminLastName: String
    let adminEmail: String
    let adminAdderss: String
}

extension AdminModel: ProfileData {
    var avatarName: String {
        get {
            return adminAvatarName
        }
        
    }
    
    var firstName: String {
        get {
            return adminFirstName
        }
        
    }
    
    var lastName: String {
        get {
            return adminLastName
        }
        
    }
    
    var email: String {
        get {
            return adminEmail
        }
        
    }
    
    var adress: String {
        get {
            return adminAdderss
        }
        
    }
    
    
}
