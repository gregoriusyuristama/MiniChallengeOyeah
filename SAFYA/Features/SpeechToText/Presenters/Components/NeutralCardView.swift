//
//  NeutralCardView.swift
//  MiniChallengeOyeah
//
//  Created by Gregorius Yuristama Nugraha on 5/3/23.
//

import SwiftUI

struct NeutralCardView: View {
    var body: some View {
        ZStack {
            Capsule()
                .fill(AppColor.blueCapsuleColor)
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
                    Text("This sounds FINE, ")
                        .font(.custom(AppFonts.semiboldFont, size: 10))
                    + Text("but if you want it better, you could add more positive statements")
                        .font(.custom(AppFonts.mediumFont, size: 10))
                }
                .font(.system(size: 11))
                .padding(.trailing, 46)
                .foregroundColor(.white)
            }
            .frame(width: 300, height: 120)
                
        }    }
}

struct NeutralCardView_Previews: PreviewProvider {
    static var previews: some View {
        NeutralCardView()
    }
}
