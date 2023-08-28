//
//  CategoryTipsPage.swift
//  MiniChallengeOyeah
//
//  Created by Asyifa Tasya Fadilah on 02/05/23.
//

import SwiftUI

struct CategoryTipsPage: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
            GeometryReader{ geo in
                ZStack{
                    Image("CTP")
                        .resizable()
                        .scaledToFill()
                    
                    VStack{
                        ZStack{
                            Rectangle()
                                .frame(width: 500, height: 30)
                                .padding(.trailing, -100)
                                .foregroundColor(AppColor.yelowLineColor)
                            
                            ZStack {
                                Image("BB")
                                    .resizable()
                                    .frame(width: 300, height:100)
                                
                                NavigationLink(destination:TipsFinancePage())
                                {
                                    Text(Prompt.Tips.financeTitle)
                                        .font(Font.title.weight(.bold))
                                        .frame(maxWidth: .infinity, maxHeight:100)
                                        .foregroundColor(Color.white)
                                }
                            }
                            .padding(.bottom, 20)
                        }
                        ZStack{
                            Rectangle()
                                .frame(width: 500, height: 30)
                                .padding(.trailing, -100)
                                .foregroundColor(AppColor.yelowLineColor)
                            
                            ZStack {
                                Image("BB")
                                    .resizable()
                                    .frame(width: 300, height:100)
                                
                                NavigationLink(destination:TipsCareerPage())
                                {
                                    Text(Prompt.Tips.careerTitle)
                                        .font(Font.title.weight(.bold))
                                        .frame(maxWidth: .infinity, maxHeight:100)
                                        .foregroundColor(Color.white)
                                }
                            }
                            .padding(.bottom, 20)
                        }
                        ZStack{
                            Rectangle()
                                .frame(width: 500, height: 30)
                                .padding(.trailing, -100)
                                .foregroundColor(AppColor.yelowLineColor)
                            
                            ZStack {
                                Image("BB")
                                    .resizable()
                                    .frame(width: 300, height:100)
                                
                                NavigationLink(destination:TipsRelationshipPage())
                                {
                                    Text(Prompt.Tips.relationshipTitle)
                                        .font(Font.title.weight(.bold))
                                        .frame(maxWidth: .infinity, maxHeight:100)
                                        .foregroundColor(Color.white)
                                }
                            }
                        }
                        .padding(.bottom, 300)
                        
                    }
                }
                .frame(width:geo.size.width, height:geo.size.height)
            }
            .ignoresSafeArea()
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading:
                Button{
                self.presentationMode.wrappedValue.dismiss()
            }label:{
                Image(systemName: "house.fill")
                    .foregroundColor(AppColor.orangeHomeIconColor)
            })
        }

    }


struct CategoryTipsPage_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            CategoryTipsPage()
        }
    }
}
