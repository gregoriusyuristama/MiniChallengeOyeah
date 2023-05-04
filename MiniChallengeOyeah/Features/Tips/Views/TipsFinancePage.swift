//
//  TipsPage.swift
//  MiniChallengeOyeah
//
//  Created by Brandon Nicolas Marlim on 02/05/23.
//

import SwiftUI

struct TipsFinancePage: View {
    private var tips: [String] = [
        "Knowing the financial situation of the family in advance by taking an approach in the form of exchanging information so that the goals and effectiveness of a communication process are achieved",
        
        "Be open with parents about the financial problems they are experiencing and discuss to find the best solution to the problems they are facing",
        
        "Do some professional research and read basic references on personal financial planning and how to manage those finances",
        
        "Planning a retirement financial strategy by saving at the age of 20, managing budget circulation which is a priority in life, allocating assets, and managing risks based on needs",
        
        "Talk about how to arrange cash flow, ask them how to do a good calculating and comprehensive financial effectiveness ratios based on priority budgets"].reversed()
    
    var body: some View {
        GeometryReader{ geo in
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
