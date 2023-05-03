//
//  InstructionCardView.swift
//  MiniChallengeOyeah
//
//  Created by Gregorius Yuristama Nugraha on 5/3/23.
//

import SwiftUI

struct InstructionCardView: View {
    var body: some View {
        ZStack {
            Capsule()
                .fill(AppColor.blueCapsuleColor)
            .frame(width: 290, height: 87)
            Group{
                Text("Tap \(Image(systemName: "mic.fill")) to start")
                    .foregroundColor(AppColor.orangeCapsuleColor)
                    .fontWeight(.semibold)
                    .font(.custom(AppFonts.mediumFont, size: 15))
                + Text(" ,\ntap again when you")
                    .foregroundColor(Color.white)
                    .fontWeight(.semibold)
                    .font(.custom(AppFonts.mediumFont, size: 15))
                + Text("\nwant it to stop")
                    .foregroundColor(Color.white)
                    .fontWeight(.semibold)
                    .font(.custom(AppFonts.mediumFont, size: 15))
            }
            .multilineTextAlignment(.center)
        }
    }
}

struct InstructionCardView_Previews: PreviewProvider {
    static var previews: some View {
        InstructionCardView()
    }
}
