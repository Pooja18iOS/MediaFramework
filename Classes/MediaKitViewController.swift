//
//  MediaKitViewController.swift
//  MediaKits
//
//  Created by Rinkl on 26/10/23.
//

import Foundation
import UIKit

class MediaKitViewController: UIViewController {
    
    @IBOutlet weak var btnContactMe: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        btnContactMe.applyGradient(colours: [.purple, .systemPink])
    }
    
    @IBAction func didTapBack(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func didTapShare(_ sender: UIButton) {
        let textToShare = "Thank you for checking out my Mediakit - Let's connect!" // Replace with your text
        
        let activityViewController = UIActivityViewController(activityItems: [textToShare], applicationActivities: nil)
        
        // For iPad, you need to specify a source view or bar button item.
        activityViewController.popoverPresentationController?.sourceView = self.view
        
        // Present the activity view controller
        present(activityViewController, animated: true, completion: nil)
    }
    
    @IBAction func didTapEdit(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "CreateMediaKitViewController") as! CreateMediaKitViewController
        vc.isEdit = true
        self.present(vc, animated: true, completion: nil)
    }
}

extension UIView {
    
    func applyGradient(colours: [UIColor]) -> CAGradientLayer {
        return self.applyGradient(colours: colours, locations: nil)
    }
    
    func applyGradient(colours: [UIColor], locations: [NSNumber]?) -> CAGradientLayer {
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = colours.map { $0.cgColor }
        gradient.locations = locations
        self.layer.insertSublayer(gradient, at: 0)
        return gradient
    }
    
    func roundTopCorners(radius: CGFloat) {
        let maskPath = UIBezierPath(
            roundedRect: bounds,
            byRoundingCorners: [.topLeft, .topRight],
            cornerRadii: CGSize(width: radius, height: radius)
        )
        
        let maskLayer = CAShapeLayer()
        maskLayer.frame = bounds
        maskLayer.path = maskPath.cgPath
        
        layer.mask = maskLayer
    }
}
