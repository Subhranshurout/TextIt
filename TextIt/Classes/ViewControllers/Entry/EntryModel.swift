//
//  EntryModel.swift
//  TextIt
//
//  Created by Subhranhu Sekhar Rout on 01/01/24.
//

import Foundation
import UIKit

enum EntryScreenType {
    case splash ,logIn , signUp
    
    var arrCells: [EntryCellType] {
        
        switch self {
        case .splash :
            return [.aboutApp, .socialMedia, .login]
        case .logIn :
            return [.socialMedia, .email, .password , .login]
        case .signUp :
            return[.socialMedia,.name , .email , .password,.confPassword, .createAccount]
        }
    }
    
}

enum EntryCellType {
    case socialMedia, login, aboutApp
    case name ,email, password, confPassword, createAccount
    
    
    var entryCellId: String {
        switch self {
        case .socialMedia:
            return "SocialTVC"
        case .login, .createAccount:
            return "ButtonsTVC"
        case .aboutApp:
            return "aboutApp"
        case .name, .email, .password,.confPassword :
            return "TextFieldTVC"
        }
    }
    
    var cellTitle: String {
        switch self {
            
        case .socialMedia:
            return ""
        case .login:
            return ""
        case .aboutApp:
            return ""
        case .name:
            return "Your name"
        case .email:
            return "Your email"
        case .password:
            return "Password"
        case .confPassword:
            return "Confirm Password" 
        case .createAccount:
            return ""
        }
    }
    
    var cellHeight: CGFloat {
        switch self {
        case .aboutApp :
            return 340
            
        case .socialMedia:
            return 225
        case .login:
            return 115
        case .name, .email, .password, .confPassword:
            return 90
            
        case .createAccount:
            return 100
        }
    }
    
    var keyboardType: UIKeyboardType {
        switch self {
            case .email :
                return .emailAddress
        case .password, .confPassword:
                return .numberPad
            default:
                return .asciiCapable
        }
    }
    
    var returnKeyType: UIReturnKeyType{
        switch self {
        case .confPassword,.password :
            return .done
            default: return .next
        }
    }
    
}
