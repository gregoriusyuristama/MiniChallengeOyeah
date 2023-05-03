//
//  NegativeCardView.swift
//  MiniChallengeOyeah
//
//  Created by Gregorius Yuristama Nugraha on 5/2/23.
//

import SwiftUI

struct NegativeCardView: View {
    var body: some View {
        ZStack {
            Capsule()
                .fill(AppColor.orangeCapsuleColor)
                .frame(width: 300, height: 120)
            HStack{
                ZStack{
                    Circle()
                        .fill(.white)
                        .frame(width: 90, height: 90)
                        .overlay{
                            Circle()
                                .stroke(AppColor.orangeStroke
                                        , lineWidth: 4)
                        }
                        .padding(.leading, 10)
//                        .padding(.top, 10)
                        
                    Image("RobotIcon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .padding(.leading, 10)
                        .padding(.top, -10)
                }
                Spacer()
                Text("HMM... IT'S SOUNDS\nA LITTLE BIT NEGATIVE\nLET'S TRY ANOTHER\nAPPROACH :)")
                    .font(.system(size: 13))
                    .padding(.trailing, 30)
            }
            .frame(width: 300, height: 120)
                
        }
    }
}

struct NegativeCardView_Previews: PreviewProvider {
    static var previews: some View {
        NegativeCardView()
    }
}
