//
//  AppColor.swift
//  MiniChallengeOyeah
//
//  Created by Gregorius Yuristama Nugraha on 5/2/23.
//

import SwiftUI

struct AppColor {
    static let blueGradientStart = Color("blueGradientStart")
    static let blueGradientEnd = Color("blueGradientEnd")
    static let orangeApp = Color("orangeColorApp")
    static let orangeCapsuleColor = Color("orangeCapsuleColor")
    static let orangeStroke = Color("orangeStroke")
    static let orangeCard = Color("orangeCard")
    
    static let blueGradient = LinearGradient(gradient: Gradient(colors: [Color("blueGradientStart"), Color("blueGradientEnd")]), startPoint: .leading, endPoint: .trailing)

    private init() {}
}
