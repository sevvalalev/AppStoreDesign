//
//  SecondTableViewCell.swift
//  AppStore
//
//  Created by Sevval Alev on 28.01.2023.
//

import UIKit

class SecondTableViewCell: UITableViewCell {

    @IBOutlet var collectionView: UICollectionView!
    @IBOutlet var sectionHeaderLabel: UILabel!
    
    static let identifier = "secondTableViewCell"
    
    var gamesTwoList = [GamesTwo]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        collectionViewDelegate()
        customNibs()
        configureLayout()
        configureData()
        
    }
    
    func configureData() {
        let g1 = GamesTwo(name: "Brawl Stars", pictureOne: "brawlstars", category: "Epic 3v3 Battle Royal")
        let g2 = GamesTwo(name: "Genshin Impact", pictureOne: "genshin", category: "Explore a World of Adventure")
        let g3 = GamesTwo(name: "MARVEL SNAP", pictureOne: "marvelsnap", category: "Card Battler")
        let g4 = GamesTwo(name: "Cookie Run: Kingdom", pictureOne: "cookierun", category: "A New Cookie Run Rpg")
        let g5 = GamesTwo(name: "Clash of Clans", pictureOne: "clashofclans", category: "Lead Your Clan to Victory!")
        let g6 = GamesTwo(name: "Fiona's Farm", pictureOne: "fionasfarm", category: "Solve puzzles & build a farm!")
        let g7 = GamesTwo(name: "Call of Duty: Mobile", pictureOne: "callofduty", category: "Multiplayer, FPS, Shooter")
        let g8 = GamesTwo(name: "Cooking Madness", pictureOne: "cookingmadness", category: "Cook food in restaurants!")
        let g9 = GamesTwo(name: "Project Makeover", pictureOne: "projectmakeover", category: "Makeover Puzzle Game")
        gamesTwoList.append(g1)
        gamesTwoList.append(g2)
        gamesTwoList.append(g3)
        gamesTwoList.append(g4)
        gamesTwoList.append(g5)
        gamesTwoList.append(g6)
        gamesTwoList.append(g7)
        gamesTwoList.append(g8)
        gamesTwoList.append(g9)
    }
    
    func configureLayout() {
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
        layout.scrollDirection = .horizontal
        let screenWidth = UIScreen.main.bounds.width
        let itemWidth = (screenWidth - 16) / 1
        layout.itemSize = CGSize(width: itemWidth , height: itemWidth * 0.23)
        collectionView.collectionViewLayout = layout
    }
    
    func collectionViewDelegate() {
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    func customNibs() {
        let customCellNib: UINib = UINib(nibName: "SecondCollectionViewCell", bundle: nil)
        collectionView.register(customCellNib, forCellWithReuseIdentifier: "secondCollectionViewCell")
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
}

extension SecondTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 9
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SecondCollectionViewCell.identifier, for: indexPath) as? SecondCollectionViewCell {
            let games = gamesTwoList[indexPath.row]
            cell.gameNameLabel.text = games.name
            cell.gameCategoryLabel.text = games.category
            cell.gameImage.image = UIImage(named: games.pictureOne!)
            return cell
        }
        return UICollectionViewCell()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.size.width/2.5, height: view.frame.size.width/2.5)
    }
}
