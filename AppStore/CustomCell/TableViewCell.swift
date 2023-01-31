//
//  TableViewCell.swift
//  AppStore
//
//  Created by Sevval Alev on 28.01.2023.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var collectionView: UICollectionView!
    
    static let identifier = "tableViewCell"
    
    var gamesOneList = [GamesOne]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionViewDelegate()
        customNibs()
        configureLayout()
        configureData()
        
    }
    
    func configureData() {
        let g1 = GamesOne(name: "The Sims™ FreePlay",gameNameDetail: "Design the perfect Sim life", pictureOne: "simsDark", pictureTwo: "simsTwo", category: "Virtual Town & Story Builder")
        let g2 = GamesOne(name: "Minecraft",gameNameDetail: "Your world awaits", pictureOne: "minecraftOne", pictureTwo: "minecraftTwo", category: "Create, explore and survive!")
        let g3 = GamesOne(name: "Playdead's INSIDE",gameNameDetail: "Haunting and fascinating", pictureOne: "insideOne", pictureTwo: "insideTwo", category: "From the Creators of LIMBO")
        let g4 = GamesOne(name: "Township",gameNameDetail: "Join the expedition", pictureOne: "township", pictureTwo: "townshipTwo", category: "Turn a town into a metropolis!")
        let g5 = GamesOne(name: "Subway Surfes",gameNameDetail: "Run these streets", pictureOne: "subwaysurfersOne", pictureTwo: "subwaysurfersTwo", category: "Join the endless running!")
        gamesOneList.append(g1)
        gamesOneList.append(g2)
        gamesOneList.append(g3)
        gamesOneList.append(g4)
        gamesOneList.append(g5)
    }
    
    func configureLayout() {
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
        layout.scrollDirection = .horizontal
        let screenWidth = UIScreen.main.bounds.width
        let itemWidth = (screenWidth - 16) / 1
        layout.itemSize = CGSize(width: itemWidth , height: itemWidth * 0.75)
        collectionView.collectionViewLayout = layout
    }
    
    func collectionViewDelegate() {
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    func customNibs() {
        let customCellNib: UINib = UINib(nibName: "CollectionViewCell", bundle: nil)
        collectionView.register(customCellNib, forCellWithReuseIdentifier: "collectionViewCell")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}

extension TableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return gamesOneList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifier, for: indexPath) as? CollectionViewCell{
            let games = gamesOneList[indexPath.row]
            cell.gameDetail.text = games.gameNameDetail!
            cell.firstLabel.text = games.name!
            cell.gameImage.image = UIImage(named: games.pictureOne!)
            
            cell.gameImageTwo.image = UIImage(named: games.pictureTwo!)
            cell.smallName.text = games.name!
            cell.smallDetail.text = games.gameNameDetail!
            return cell
        }
        return UICollectionViewCell()
    }
}
