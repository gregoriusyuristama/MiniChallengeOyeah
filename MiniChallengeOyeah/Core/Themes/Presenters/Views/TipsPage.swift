//
//  TipsPage.swift
//  MiniChallengeOyeah
//
//  Created by Brandon Nicolas Marlim on 02/05/23.
//

import SwiftUI

import SwiftUI

struct TipsPage: View {
    private var tips: [String] = ["Dalam sebuah hubungan ada baiknya kita mengalah agar tidak berdebat", "untuk finansial", "tips3", "tips4", "tips5"].reversed()
    
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

                    
                ForEach(tips, id:\.self) { info in
                    CardView(info: info)
                        .padding(.bottom, 200)
                        .padding(.trailing, 20)
                }
            }
            .ignoresSafeArea()
        }
    }
}
    

struct TipsPage_Previews: PreviewProvider {
    static var previews: some View {
        TipsPage()
    }
}
