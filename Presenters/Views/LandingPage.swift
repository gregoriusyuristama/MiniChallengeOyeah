//
//  LandingPage.swift
//  MiniChallengeOyeah
//
//  Created by Asyifa Tasya Fadilah on 02/05/23.
//

import SwiftUI

struct LandingPage: View {
    var body: some View {
        NavigationView{
            GeometryReader { geo in
                ZStack{
                    Image("LandingPage")
                        .resizable()
                        .frame(width:geo.size.width, height:geo.size.height)
                        .scaledToFit()
                    
                    VStack {
                        Text("ahhaha")
                            .frame(width: 120, height: 105)
                            .offset(y: -230)
                        
                        HStack{
                            NavigationLink(destination:CategoryTipsPage())
                            {
                                Circle()
                                    .fill(.clear)
                            }
                            .frame(width: 120, height: 105)
                            .offset(y: -200)
                            .offset(x:-11)
                            
                            NavigationLink(destination:InputPage())
                            {
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
