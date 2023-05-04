//
//  CategoryTipsPage.swift
//  MiniChallengeOyeah
//
//  Created by Asyifa Tasya Fadilah on 02/05/23.
//

import SwiftUI

struct CategoryTipsPage: View {
    var body: some View {
            GeometryReader{ geo in
                ZStack{
                    Image("CTP")
                        .resizable()
                        .frame(width:geo.size.width, height:geo.size.height)
                        .scaledToFit()
                    
                    VStack{
                        ZStack{
                            Rectangle()
                                .frame(width: 500, height: 30)
                                .padding(.trailing, -100)
                                .foregroundColor(Color(red: 1.002, green: 0.788, blue: 0.002))
                            
                            ZStack {
                                Image("BB")
                                    .resizable()
                                    .frame(width: 300, height:100)
                                
                                NavigationLink(destination:TipsPage())
                                {
                                    Text("FINANCE")
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
                                .foregroundColor(Color(red: 1.002, green: 0.788, blue: 0.002))
                            
                            ZStack {
                                Image("BB")
                                    .resizable()
                                    .frame(width: 300, height:100)
                                
                                NavigationLink(destination:TipsPage())
                                {
                                    Text("CAREER")
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
                                .foregroundColor(Color(red: 1.002, green: 0.788, blue: 0.002))
                            
                            ZStack {
                                Image("BB")
                                    .resizable()
                                    .frame(width: 300, height:100)
                                
                                NavigationLink(destination:TipsPage())
                                {
                                    Text("RELATIONSHIP")
                                        .font(Font.title.weight(.bold))
                                        .frame(maxWidth: .infinity, maxHeight:100)
                                        .foregroundColor(Color.white)
                                }
                            }
                        }
                        .padding(.bottom, 300)
                        
                    }
                }
            }
            .ignoresSafeArea()
        }

    }
}

struct CategoryTipsPage_Previews: PreviewProvider {
    static var previews: some View {
        CategoryTipsPage()
    }
}
