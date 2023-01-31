//
//  GamesOne.swift
//  AppStore
//
//  Created by Sevval Alev on 29.01.2023.
//

import Foundation

class GamesOne {
    var name:String?
    var gameNameDetail:String?
    var pictureOne:String?
    var pictureTwo:String?
    var category:String?
    
    init(name: String, gameNameDetail: String, pictureOne: String, pictureTwo: String, category: String) {
        self.name = name
        self.gameNameDetail = gameNameDetail
        self.pictureOne = pictureOne
        self.pictureTwo = pictureTwo
        self.category = category
    }
}
