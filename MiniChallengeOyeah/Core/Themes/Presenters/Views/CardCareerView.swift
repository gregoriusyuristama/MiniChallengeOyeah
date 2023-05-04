//
//  CardCareerView.swift
//  MiniChallengeOyeah
//
//  Created by Brandon Nicolas Marlim on 03/05/23.
//
import SwiftUI

struct CardCareerView: View {
    var info: String
    @State private var offset = CGSize.zero
    var body: some View {
        
            ZStack{
                Rectangle()
                    .frame(width: 320, height: 480)
                    .cornerRadius(35)
                    .foregroundColor(Color("colorbg"))
                    .shadow(radius: 4)
                            
                HStack{
                    VStack{
                        Text(info)
                            .frame(width: 300, height: 520)
                            .font(.title)
                            .foregroundColor(.white)
                            .bold()
                            .padding()
//                        Spacer(minLength: 50)
                    }
                }
            }
            .ignoresSafeArea()
        
        .offset(x: offset.width, y: offset.height * 0.4)
        .rotationEffect(.degrees(Double(offset.width / 40)))
        .gesture(
            DragGesture()
                .onChanged{ gesture in
                    offset = gesture.translation
                    
                } .onEnded{ _ in
                    withAnimation{
                        swipeCard(width: offset.width)
                    }
                }
        )
    }
    
    func swipeCard(width: CGFloat){
        switch width {
        case -500...(-150):
            print("\(info) removed")
            offset = CGSize(width: -500, height: 0)
        case 150...500:
            print("\(info) added")
            offset = CGSize(width: 500, height: 0)
        default:
            offset = .zero
        }
    }
}



struct CardCareerView_Previews: PreviewProvider {
    static var previews: some View {
        CardCareerView(info: "It is a good idea to discuss your future and what you want to achieve in life with your parents because they have likely encountered similar challenges that you're facing or the one that you are going to face")
    }
}
