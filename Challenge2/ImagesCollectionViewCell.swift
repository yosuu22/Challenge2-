//
//  ImagesCollectionViewCell.swift
//  Challenge2
//
//  Created by Yosua Candra  on 01/05/19.
//  Copyright © 2019 Yosua Candra . All rights reserved.
//

import UIKit

class ImagesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    var image :UIImage! {
        didSet{
            imageView.image = image
        }
    }
    
}
