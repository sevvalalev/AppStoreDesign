//
//  CollectionViewCell.swift
//  AppStore
//
//  Created by Sevval Alev on 28.01.2023.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet var gameDetail: UILabel!
    @IBOutlet var firstLabel: UILabel!
    @IBOutlet var gameImage: UIImageView!
    @IBOutlet var gameImageTwo: UIImageView!
    
    @IBOutlet var smallName: UILabel!
    @IBOutlet var smallDetail: UILabel!
    
    
    @IBOutlet var downloadButton: UIButton!
    
    static let identifier = "collectionViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureUI()
    }
    
    func configureUI() {
        gameImage.layer.cornerRadius = 10
        downloadButton.layer.cornerRadius = 15
        gameImageTwo.layer.cornerRadius = 10
    }

}
