//
//  MurrayCollectionViewController.swift
//  MurrayMaking
//
//  Created by Katherine Owens on 2/4/18.
//  Copyright © 2018 Katherine Owens. All rights reserved.
//

import UIKit
import Foundation

private let reuseIdentifier = "Cell"

class MurrayCollectionViewController: UICollectionViewController {

    var murrays: [UIImage] = []
    var murrayCollectionViewCell: MurrayCollectionViewCell!
    var selectedMurray: UIImage = UIImage()
    var murrayDictionary: [String: UIImage] = [String: UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return murrays.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        murrayCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! MurrayCollectionViewCell
        
        let murrayImage = murrays[indexPath.row]
        murrayCollectionViewCell.murrayImageView.image = murrayImage
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectedMurray = murrays[indexPath.item]
        murrayDictionary = ["murrayNotification": selectedMurray]
        
        NotificationCenter.default.post(name: murrayNotification, object: nil, userInfo: murrayDictionary)
        self.navigationController?.popToRootViewController(animated: true)
    }
}
