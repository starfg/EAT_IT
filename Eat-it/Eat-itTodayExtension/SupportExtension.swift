//
//  SupportExtension.swift
//  Eat-itTodayExtension
//
//  Created by sungnni on 2018. 6. 25..
//  Copyright © 2018년 sungeun. All rights reserved.
//

import Foundation
import UIKit

extension UserDefaults {
  func colorForKey(key: String) -> UIColor? {
    var color: UIColor?
    if let colorData = data(forKey: key) {
      color = NSKeyedUnarchiver.unarchiveObject(with: colorData) as? UIColor
    }
    return color
  }
}


extension Date {
  public func trasformInt(from date: Date) -> Int {
    let dateFormatter = DateFormatter()
    
    dateFormatter.dateFormat = "yyyyMMdd"
    let str = dateFormatter.string(from: date)
    
    return Int(str)!
  }
}


extension UIView {
  public func cornerRoundOnlyTop(radius: CGFloat) {
    if #available(iOS 11.0, *){
      self.clipsToBounds = false
      self.layer.cornerRadius = radius
      self.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
    }else{
      let rectShape = CAShapeLayer()
      rectShape.bounds = self.frame
      rectShape.position = self.center
      rectShape.path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: radius*2, height: radius*2)).cgPath
      self.layer.mask = rectShape
    }
  }
}

extension UIColor {
  convenience init(hex: String) {
    
    let scanner = Scanner(string: hex)
    scanner.scanLocation = 0
    
    var rgbValue: UInt64 = 0
    
    scanner.scanHexInt64(&rgbValue)
    
    let r = (rgbValue & 0xff0000) >> 16
    let g = (rgbValue & 0xff00) >> 8
    let b = rgbValue & 0xff
    
    self.init(
      red: CGFloat(r) / 0xff,
      green: CGFloat(g) / 0xff,
      blue: CGFloat(b) / 0xff, alpha: 1
    )
  }
}
