//
//  TextLP.swift
//  MiniChallengeOyeah
//
//  Created by Asyifa Tasya Fadilah on 03/05/23.
//

import Foundation

struct Quest: Identifiable {
    let id = UUID()
    let description: String

}

class DataSeeder: ObservableObject {
    
    var arrOfData:[Quest] = []
    func seedData() {
        var quest1 = Quest(description: "haha")
        var quest2 = Quest(description: "haha")
        var quest3 = Quest(description: "haha")
    
        arrOfData.append(quest1)
        arrOfData.append(quest2)
        arrOfData.append(quest3)
    }
    
    func randomizedQuest() -> Quest {
        var shuffledNumber = Int.random(in: 0..<arrOfData.count)
        return arrOfData[shuffledNumber]
    }
}
