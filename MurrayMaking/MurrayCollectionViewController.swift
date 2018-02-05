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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
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
}
