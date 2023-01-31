//
//  SecondCollectionViewCell.swift
//  AppStore
//
//  Created by Sevval Alev on 28.01.2023.
//

import UIKit

class SecondCollectionViewCell: UICollectionViewCell {

    
    @IBOutlet var gameImage: UIImageView!
    @IBOutlet var gameNameLabel: UILabel!
    @IBOutlet var gameCategoryLabel: UILabel!
    @IBOutlet var downloadButton: UIButton!
    
    static let identifier = "secondCollectionViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        gameImage.layer.cornerRadius = 10
        downloadButton.layer.cornerRadius = 15
    }

}
