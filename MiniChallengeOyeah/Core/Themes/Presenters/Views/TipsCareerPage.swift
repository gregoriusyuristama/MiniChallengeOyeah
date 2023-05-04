//
//  TipsCareerPage.swift
//  MiniChallengeOyeah
//
//  Created by Brandon Nicolas Marlim on 03/05/23.
//

import SwiftUI

struct TipsCareerPage: View {
    private var tips: [String] = [
        "It is a good idea to discuss your future and what you want to achieve in life with your parents because  they have likely encountered similar challenges that you're facing or the one that you are going to face",
        
        "When you are heading and working towards a personal goal, you can gain valuable insights and encouragement that can help you improve by asking for a feedback from your parents",
        
        "When you are doubting yourself or when you feel hesitate about the decision that you have made or the one that you are going to made, asking for advice and support from your parents can be an uplifting experience that can help you gain confidence",
        
        "Keep an open mind because you may find your parents have a different perspective.  Be patient, understanding, and respectful of their opinions and don't let it be the reason for you to stop communicating with them",
        
        "Mapping career plans for the next few years along with the best alternatives, such as companies that are targeted and targeted for promotion to increase the level of seriousness in career"].reversed()
    
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
    

struct TipsCareerPage_Previews: PreviewProvider {
    static var previews: some View {
        TipsCareerPage()
    }
}

