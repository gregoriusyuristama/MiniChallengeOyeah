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
                        
                    Image("RobotIcon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                        .padding(.leading, 40)
                        .padding(.top, -10)
                }
                Spacer()
                Group{
                    Text("Hmm.. It’s sounds a little bit ")
                        .font(.custom(AppFonts.mediumFont, size: 12))
                    + Text("NEGATIVE ")
                        .font(.custom(AppFonts.semiboldFont, size: 12))
                        .foregroundColor(AppColor.blueCapsuleColor)
                    + Text("Let’s try another approach ;)")
                        .font(.custom(AppFonts.mediumFont, size: 12))
//                        .font(.system(size: 11))
                    
                }
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
