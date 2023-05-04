//
//  TipsRelationshipPage.swift
//  MiniChallengeOyeah
//
//  Created by Brandon Nicolas Marlim on 03/05/23.
//

import SwiftUI

struct TipsRelationshipPage: View {
       
    
    var body: some View {
        VStack{
            ZStack{
                Image("tipsbg")
                    .resizable()
                    .scaledToFit()
                
                (Text("Swipe to see more ")
                                .foregroundColor(.black)
                                + Text("tips")
                                    .bold()
                                    .foregroundColor(.orange))
                                .offset(y: 200)
                                .offset(x: 65)

                    
                ForEach(TipsRelationship.tips
                        , id:\.self) { info in
                    CardFinanceView(info: info)
                        .padding(.bottom, 180)
                        .padding(.trailing, 27)
                }
            }
            .ignoresSafeArea()
        }
    }
}
    

struct TipsRelationshipPage_Previews: PreviewProvider {
    static var previews: some View {
        TipsRelationshipPage()
    }
}
