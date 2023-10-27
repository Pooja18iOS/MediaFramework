//
//  ViewController.swift
//  MediaKits
//
//  Created by Rinkl on 26/10/23.
//

import UIKit

public func MyCustomFrameworkBundle() -> Bundle? {
    let frameworkBundle = Bundle(for: MediaMainViewController.self)
    return frameworkBundle
}

public func returnImage(_ named:String) -> UIImage {
    let myBundle = Bundle.init(identifier: "org.cocoapods.MediaFramework")
    let imagePath = (myBundle?.path(forResource: "images", ofType: "bundle"))! + "/" + named
    let theImage = UIImage(contentsOfFile: imagePath)
    return theImage!
}

public class MediaKitCell: UICollectionViewCell {
    @IBOutlet weak public var imgMedia: UIImageView!
}

public class CreateMediaKitCell: UICollectionViewCell {
    @IBOutlet weak public var btnCreateMediakit: UIButton!
}

public class MediaMainViewController: UIViewController {

    public let arrMediaKit = [1,2]
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setNavigationBar()
    }

    public func setNavigationBar() {
        self.title = "MediaKits"
        self.navigationController?.navigationBar.backgroundColor = .white
        
        let backButtonItem = UIBarButtonItem(image: UIImage(named: "back"),
                                             style: .plain,
                                             target: self,
                                             action: #selector(didTapBack(_:)))
        backButtonItem.tintColor = .black
        navigationItem.leftBarButtonItem = backButtonItem
        
        let notificationButtonItem = UIBarButtonItem(image: UIImage(named: "notification"),
                                             style: .plain,
                                             target: self,
                                             action: #selector(didTapNotification(_:)))
        notificationButtonItem.tintColor = .black
       
        
        let addButtonItem = UIBarButtonItem(image: UIImage(named: "plus"),
                                             style: .plain,
                                             target: self,
                                             action: #selector(didTapAdd(_:)))
        addButtonItem.tintColor = .black
        navigationItem.rightBarButtonItems = [addButtonItem, notificationButtonItem]
    }
    
    @objc public func didTapBack(_ sender: UIButton) {

    }
    
    @objc public func didTapNotification(_ sender: UIButton) {

    }
    
    @objc public func didTapAdd(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "CreateMediaKitViewController") as! CreateMediaKitViewController
        vc.isEdit = false
//        vc.titleLabel = "Create Mediakit"
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction public func didTapViewMediaKit(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "MediaKitViewController") as! MediaKitViewController
        self.present(vc, animated: true, completion: nil)
    }
    
}

extension MediaMainViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrMediaKit.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.row == arrMediaKit.count - 1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CreateMediaKitCell", for: indexPath) as! CreateMediaKitCell
            cell.btnCreateMediakit.addTarget(self, action: #selector(didTapAdd(_:)), for: .touchUpInside)
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MediaKitCell", for: indexPath) as! MediaKitCell
            
            return cell
        }
    }
    
    public func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "MediaKitViewController") as! MediaKitViewController
        
        self.present(vc, animated: true, completion: nil)
    }
}
