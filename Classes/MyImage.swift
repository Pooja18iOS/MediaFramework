//
//  MyImage.swift
//  Pods
//
//  Created by theonetech on 30/10/23.
//

import Foundation

public class MyImage {
  public class func getImage() -> UIImage? {
      let bundle = Bundle(for: self)
      return UIImage(named: "Ocean", in: bundle, compatibleWith: nil)
  }
}
