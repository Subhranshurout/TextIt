//
//  Constants.swift
//  CustomTabBar
//
//  Created by Yudiz-subhranshu on 03/11/23.
//

import UIKit
import Foundation

let _screenSize     = UIScreen.main.bounds.size
let _screenFrame    = UIScreen.main.bounds

let _defaultCenter  = NotificationCenter.default
let _userDefault    = UserDefaults.standard
let _appDelegator   = UIApplication.shared.delegate! as! AppDelegate
let _application    = UIApplication.shared

//let _facebookPermission              = ["public_profile", "email", "user_friends"]
//let _facebookMeUrl                   = "me"
//let _facebookAlbumUrl                = "me/albums"
//let _facebookUserField: [String:Any] = ["fields" : "id,first_name,last_name,gender,birthday,email,education,work,picture.height(700)"]
//let _facebookJobSchoolField          = ["fields" : "education,work"]
//let _facebookAlbumField              = ["fields":"id,name,count,picture"]
//let _facebookPhotoField              = ["fields":"id,picture"]

// Privacy and Terms URL
let _aboutUsUrl        = "https://www.google.com"
let _privacyUrl        = "https://www.google.com"
let _helpUrl            = "https://www.google.com"
let _termsUrl         = "https://www.google.com"

//Notification
let _showAdNoti        = NSNotification.Name(rawValue: "showAdNotification")
let _hideAdNoti        = NSNotification.Name(rawValue: "hideAdNotification")
let _scrollToTop        = NSNotification.Name(rawValue: "tabBarTapAgain")

let app_store_ID: String = { "1567587067" }()
let app_iTunes_URL: String =  {"https://apps.apple.com/us/app/lionsbusinessnetwork/id\(app_store_ID)"}() //{ "https://itunes.apple.com/us/app/id\(app_store_ID)" }()
// MARK: Paging Structure

struct LoadMore {
    var index: Int = 0
    var isLoading: Bool = false
    var limit: Int = 20
    var isAllLoaded = false
    
    var offset: Int {
        return index * limit
    }
}

// Place Holder image
let _userPlaceImage = UIImage(named: "icProfile")
let _companyPlaceImage = UIImage(named: "ic_company_place")

// Current loggedIn User
//var _user: User!

let _heighRatio : CGFloat = { _screenSize.height / 667 }()

let _widthRatio : CGFloat = { _screenSize.width / 375 }()

//let _serverFormatter: DateFormatter = {
//    let df = DateFormatter()
//    df.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
//    df.timeZone = TimeZone(secondsFromGMT: 0)
//    df.locale = Locale(identifier: "en_US_POSIX")
//    return df
//}()

//let _deviceFormatter: DateFormatter = {
//    let df = DateFormatter()
//    df.timeZone = TimeZone.current
//    df.dateFormat = "MM-dd-yyyy"
//    return df
//}()

//var _user: User!

//var isRequestPush = false
var isAnnocePush = false

// User Default keys
//let o7AuthTokenKey  = "o7AuthorizationKey"


// MARK: Comment in release mode
func kprint(items: Any...) {
    #if DEBUG
    for item in items {
        print(item)
    }
    #endif
}

// MARK: - Settings Version Maintenance
//func getAppVersionAndBuild() -> String {
//    if let build = Bundle.main.infoDictionary?["CFBundleVersion"] as? String,
//        let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String {
//        return "Version - \(version)(\(build))"
//    } else {
//        return ""
//    }
//}

//func getAppBuildVersionString() -> String {
//    if let build = Bundle.main.infoDictionary?["CFBundleVersion"] as? String,
//       let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String {
//        return "\(version).\(build)"
//    } else {
//        return ""
//    }
//}
//
//func getAppversion() -> String {
//    Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? ""
//}

//func setAppSettingsBundleInformation() {
//    if let build = Bundle.main.infoDictionary?["CFBundleVersion"] as? String,
//        let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String {
//        _userDefault.set(build, forKey: "application_build")
//        _userDefault.set(version, forKey: "application_version")
//        _userDefault.synchronize()
//    }
//}

extension UIDevice {
    var iPhoneX: Bool {
        return UIScreen.main.nativeBounds.height == 2436
    }
}

//MARK: - Constant
//-------------------------------------------------------------------------------------------
// Common
//-------------------------------------------------------------------------------------------
let _statusBarHeight           : CGFloat = _appDelegator.window!.safeAreaInsets.top
let _bottomBarHeight           : CGFloat = _appDelegator.window!.safeAreaInsets.bottom + 0
var _bottomAreaSpacing         : CGFloat = _appDelegator.window!.layoutMargins.bottom
var _topAreaSpacing            : CGFloat = _appDelegator.window!.layoutMargins.top
let _topNavigationHeight       : CGFloat = 44
let _topMsgBarConstant         : CGFloat = _statusBarHeight + _topNavigationHeight
let _vcTransitionTime                    = 0.4
let _1mileToMeter              : Double  = 1609.34
let _browseAgeRangeExpandLimit : Int     = 10
let _imageFadeTransitionTime   : Double  = 0.3

/*---------------------------------------------------
 Device Extention
 ---------------------------------------------------*/
extension UIDevice {
    
    var hasNotch: Bool {
        if #available(iOS 11.0, *) {
            let bottom = UIApplication.shared.windows.first { $0.isKeyWindow }?.safeAreaInsets.bottom ?? 0
            return bottom > 0
        } else {
            return false
        }
    }
}

//-------------------------------------------------------------------------------------------
// Custom Picker
//-------------------------------------------------------------------------------------------
/// Picker bottom constant
//let _customDatePickerHideConstant: CGFloat  = 385 * _widthRatio
//let _datePickerHideConstant  = 278 * _widthRatio
//let _dataPickerHideConstant  = 278 * _widthRatio
//let _rangePickerHideConstant = 278 * _widthRatio
//
//// Picker Min - Max values
//let _ageMinValue:      Double = 18
//let _ageMaxValue:      Double = 80
//let _distanceMaxValue: Double = 100
//let _pickerAnimationTime      = 0.25
//
//let kFirstTimeUser = "isAppOpenForFirstTime"
//let _minAppVersion = "2.8"


