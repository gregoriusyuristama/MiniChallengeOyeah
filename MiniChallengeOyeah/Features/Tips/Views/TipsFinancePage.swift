//
//  TipsPage.swift
//  MiniChallengeOyeah
//
//  Created by Brandon Nicolas Marlim on 02/05/23.
//

import SwiftUI

struct TipsFinancePage: View {
    
    var body: some View {
        GeometryReader{ geo in
            ZStack{
                Image("tipsbg")
                    .resizable()
                    .scaledToFit()
                
                Group{
                    Text("Swipe to see more ")
                        .foregroundColor(.black)
                    + Text("tips")
                        .bold()
                        .foregroundColor(.orange)
                }
                
                .offset(y: 200)
                .offset(x: 65)

                    
                ForEach(TipsFinance.tips, id:\.self) { info in
                    CardFinanceView(info: info)
                        .padding(.bottom, 180)
//                        .padding(.trailing, 27)
                }
            }
            .frame(width: geo.size.width, height: geo.size.height)
        }
        .ignoresSafeArea()
    }
}
    

struct TipsPage_Previews: PreviewProvider {
    static var previews: some View {
        TipsFinancePage()
    }
}
