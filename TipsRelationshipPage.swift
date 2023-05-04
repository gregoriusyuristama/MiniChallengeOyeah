//
//  TipsRelationshipPage.swift
//  MiniChallengeOyeah
//
//  Created by Brandon Nicolas Marlim on 03/05/23.
//

import SwiftUI

struct TipsRelationshipPage: View {
    private var tips: [String] = [
        "Use an assertive I statement to tell your family members how they affect you because sometimes they may not realize it",
        
        "Pay attention to the parents mood and condition before interacting with them because it can affect their response and behavior",
        
        "Pay attention to your own communication style and habits. You might need to record yourself practicing in front of the mirror or talk to other people and get their feedback regarding your speech clarity, intonation, speed and politeness",
        
        "Eye contact during a conversation is vital because it shows you are being truthful and shows attentiveness in what is being said. But do not stare, it creates a feeling of uneasiness between you and your parents",
        
        "Communication is a two way process. In a conversation, give your parents an opportunity to talk when you are feeling being too dominant or take the initiative to politely state your opinion when you are feeling being too submissive"].reversed()
    
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
