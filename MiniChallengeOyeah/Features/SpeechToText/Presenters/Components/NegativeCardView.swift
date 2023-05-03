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
                .frame(width: 247, height: 105)
            HStack{
                ZStack{
                    Circle()
                        .fill(.white)
                        .frame(width: 70, height: 70)
                        .overlay{
                            Circle()
                                .stroke(AppColor.orangeStroke
                                        , lineWidth: 4)
                        }
                        .padding(.leading, 40)
//                        .padding(.top, 10)
                        
                    Image("RobotIcon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                        .padding(.leading, 40)
                        .padding(.top, -10)
                }
                Spacer()
                Text("HMM... IT'S SOUNDS\nA LITTLE BIT NEGATIVE\nLET'S TRY ANOTHER\nAPPROACH :)")
                    .font(.system(size: 11))
                    .padding(.trailing, 47)
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
