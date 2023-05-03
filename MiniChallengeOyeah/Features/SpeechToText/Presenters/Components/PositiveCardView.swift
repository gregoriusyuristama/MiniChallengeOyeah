//
//  PositiveCardView.swift
//  MiniChallengeOyeah
//
//  Created by Gregorius Yuristama Nugraha on 5/2/23.
//

import SwiftUI

struct PositiveCardView: View {
    var doClose: () -> ()
    var body: some View {
        ZStack {
            ZStack{
                RoundedRectangle(cornerRadius: 40)
                    .fill(.gray)
                    .offset(x: 5,y: 5)
                .frame(width: 300, height: 300)
                RoundedRectangle(cornerRadius: 40)
                    .fill(AppColor.orangeCard)
                .frame(width: 300, height: 300)
                Text("YOU ARE GOOD TO GO!")
                    .font(.custom(AppFonts.italicSemiBoldFont, size: 50))
//                    .font(.system(size: 50))
//                    .bold()
//                    .italic()
                    .multilineTextAlignment(.center)
                    .frame(width: 300, height: 300)
            }
            .rotationEffect(Angle(degrees: -10))
            ZStack{
                Circle()
                    .fill(.white)
                    .frame(width: 125, height: 125)
                    .overlay{
                        Circle()
                            .stroke(AppColor.orangeStroke
                                    , lineWidth: 7)
                    }
                Image("RobotIcon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 125, height: 125)
                HStack{
                    Spacer()
                    VStack{
                        Button{
                            self.doClose()
                        } label: {
                            Circle()
                                .fill(.black)
                                .frame(width: 24, height: 24)
                                .overlay{
                                    Image(systemName: "xmark")
                                        .resizable()
                                        .frame(width: 10, height: 10)
                                        .foregroundColor(.white)
                                }
                        }
                        .frame(width: 24, height: 24)
                        Spacer()
                    }
                }
                
            }
            .offset(x: 50, y: -180)
            .frame(width: 125, height: 125)
        }
    }
}

struct PositiveCardView_Previews: PreviewProvider {
    static var previews: some View {
        PositiveCardView(doClose: {})
    }
}
