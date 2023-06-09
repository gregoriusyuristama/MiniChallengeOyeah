//
//  LandingPage.swift
//  MiniChallengeOyeah
//
//  Created by Asyifa Tasya Fadilah on 02/05/23.
//

import SwiftUI

struct LandingPage: View {
    @State private var currentTextIndex = 1
    @State private var timer: Timer?
    
    var body: some View {
        NavigationView{
            GeometryReader { geo in
                ZStack{
                    Image("LandingPage")
                        .resizable()
                        .frame(width:geo.size.width, height:geo.size.height)
                        .scaledToFit()
                    
                    VStack {
                        Group{
                            if currentTextIndex == 0 {
                                Group{
                                    Text(Prompt.Tips.instruction[currentTextIndex][0])
                                        .foregroundColor(Color.black)
                                    + Text(Prompt.Tips.instruction[currentTextIndex][1])
                                        .foregroundColor(AppColor.orangeInstructionText)
                                    + Text(Prompt.Tips.instruction[currentTextIndex][2])
                                        .foregroundColor(Color.black)
                                    + Text(Prompt.Tips.instruction[currentTextIndex][3])
                                        .foregroundColor(AppColor.orangeInstructionText)
                                    + Text(Prompt.Tips.instruction[currentTextIndex][4])
                                        .foregroundColor(Color.black)
                                }
                                .frame(width: 250, height: 105)
                                .offset(y: -230)
                                .font(.custom(AppFonts.mediumFont, size: 18))
                                .multilineTextAlignment(.center)
                            }
                            else if currentTextIndex == 1 {
                                Text(
                                    Prompt.Tips.instruction[currentTextIndex][0]
                                )
                                .frame(width: 250, height: 105)
                                .offset(y: -230)
                                .font(.custom(AppFonts.mediumFont, size: 18))
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.center)
                                
                            } else {
                                Group{
                                    Text(Prompt.Tips.instruction[currentTextIndex][0])
                                        .foregroundColor(Color.black)
                                    + Text(Prompt.Tips.instruction[currentTextIndex][1]).foregroundColor(AppColor.blueInstructionText)
                                    + Text(Prompt.Tips.instruction[currentTextIndex][2])
                                        .foregroundColor(Color.black)
                                    + Text(Prompt.Tips.instruction[currentTextIndex][3])
                                        .foregroundColor(AppColor.blueInstructionText)
                                    + Text(Prompt.Tips.instruction[currentTextIndex][4])
                                        .foregroundColor(Color.black)
                                }
                                .frame(width: 250, height: 105)
                                .offset(y: -230)
                                .font(.custom(AppFonts.mediumFont, size: 18))
                                .multilineTextAlignment(.center)
                            }
                            
                        }
                        .onAppear{
                            timer = Timer.scheduledTimer(withTimeInterval: 3, repeats: true) { _ in
                                currentTextIndex = (currentTextIndex + 1) % Prompt.Tips.instruction.count
                            }
                        }
                        .onDisappear{
                            timer?.invalidate()
                            timer = nil
                        }
                        
                            
                        
                        HStack{
                            NavigationLink(destination:CategoryTipsPage())
                            {
                                Circle()
                                    .fill(.clear)
                            }
                            .frame(width: 120, height: 105)
                            .offset(y: -200)
                            .offset(x:-11)
          
                            NavigationLink(destination: InputPage()){
                                Circle()
                                    .fill(.clear)
                            }
                            .frame(width: 120, height: 105)
                            .offset(y: -200)
                            .offset(x:-11)
                        }
                    }
                }
            }
            .ignoresSafeArea()
        }
    }
    
}

struct LandingPage_Previews: PreviewProvider {
    static var previews: some View {
        LandingPage()
    }
}
