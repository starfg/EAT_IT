//
//  Extension.swift
//  Eat-it
//
//  Created by sungnni on 2018. 6. 5..
//  Copyright © 2018년 sungeun. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    struct Custom {
        static let backGroundColor = UIColor.rgb(red: 245, green: 245, blue: 245, alpha: 1)
        
        static let good = UIColor.rgb(red: 115, green: 202, blue: 196, alpha: 1)
        static let soso = UIColor.rgb(red: 227, green: 229, blue: 70, alpha: 1)
        static let bad = UIColor.rgb(red: 242, green: 120, blue: 143, alpha: 1)
    }
    
    
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: alpha)
    }
    
}