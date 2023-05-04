//
//  Prompt.swift
//  MiniChallengeOyeah
//
//  Created by Gregorius Yuristama Nugraha on 5/1/23.
//

import Foundation

struct Prompt { private init() {} }

extension Prompt {
}

extension Prompt {
    struct Title {
        
        private init() {}
    }
}

extension Prompt {
    struct Button {
        static let review = "REVIEW"
        
        private init() {}
    }
}

extension Prompt {
    struct Tips {
        
        static let instruction = ["TAP TIPS ICON ON THE LEFT FOR SCANNING YOUR SENTENCE", "HI! IM ROBBY, I WILL BE YOUR FRIEND TODAY", "TAP MIC ICON ON THE RIGHT FOR SCANNING YOUR SENTENCE"]
        private init() {}
        
    }
}

extension Prompt {
    struct Icon {
        static let startRecordIcon = "mic.fill"
        static let stopRecordIcon = "stop.fill"
        static var name = (first: "Taylor", last: "Swift")
        private init () {}
    }
}

extension Prompt{
    struct Card{
        static let positiveText = "YOU ARE GOOD TO GO!"
        private init () {}
    }
}
