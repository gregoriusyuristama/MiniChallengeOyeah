//
//  TipsPage.swift
//  MiniChallengeOyeah
//
//  Created by Brandon Nicolas Marlim on 02/05/23.
//

import SwiftUI

struct TipsFinancePage: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var isButtonTapped = false

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
                }
            }
            .frame(width: geo.size.width, height: geo.size.height)
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading:
            Button{
            self.presentationMode.wrappedValue.dismiss()
        }label:{
            Image(systemName: "arrowshape.backward.fill")
                .foregroundColor(AppColor.orangeHomeIconColor)
        })
    }
    func doToggleShowCard(){
        isButtonTapped.toggle()
    }
}
//    }
//}
    

struct TipsPage_Previews: PreviewProvider {
    static var previews: some View {
        TipsFinancePage()
    }
}
