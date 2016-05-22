//
//  ChooseFileViewCell.swift
//  GroupLock
//
//  Created by Sergej Jaskiewicz on 21.05.16.
//  Copyright © 2016 Lanit-Tercom School. All rights reserved.
//

import UIKit

class ChooseFileViewCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbnailView: UIImageView!
    @IBOutlet weak var filenameLabel: UILabel!
    
    override func prepareForReuse() {
        if !selected {
            layer.borderWidth = 0
        }
    }
    override func preferredLayoutAttributesFittingAttributes(layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
        return layoutAttributes
    }
}