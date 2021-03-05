//
//  HeaderView.swift
//  vkApp
//
//  Created by Алёночка on 04.03.2021.
//

import UIKit

class HeaderView: UIView {

    static func instantiate() -> HeaderView {
        let view: HeaderView = initFromNib()
        return view
    }
   

}


extension UIView {
    class func initFromNib<T: UIView>() -> T {
        return Bundle.main.loadNibNamed(String(describing: self), owner: nil, options: nil)?[0] as! T
    }
}
