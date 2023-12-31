//
//  MyImage.swift
//  Pods
//
//  Created by theonetech on 30/10/23.
//

import Foundation
import UIKit

public func getPicture() -> UIImage? {
    return UIImage(named: "Ocean")
}

public class MyImage {
    public class func getImage() -> UIImage? {
        let bundle = Bundle(for: self)
        return UIImage(named: "Ocean", in: bundle, compatibleWith: nil)
    }
    
    func getPngImage (named name : String) -> UIImage? {
        if let imgPath = Bundle.main.path(forResource: name, ofType: ".png") {
            return UIImage(contentsOfFile: imgPath)
        }
        return nil
    }
    
}

public class ImageProvider {
    // convenient for specific image
    public static func picture() -> UIImage {
        if #available(iOS 13.0, *) {
            return UIImage(named: "Ocean", in: Bundle(for: self), with: nil) ?? UIImage()
        } else {
            // Fallback on earlier versions
            return UIImage()
        }
    }
    
    // for any image located in bundle where this class has built
    public static func image(named: String) -> UIImage? {
        if #available(iOS 13.0, *) {
            return UIImage(named: named, in: Bundle(for: self), with: nil)
        } else {
            // Fallback on earlier versions
            return UIImage()
        }
    }
}
