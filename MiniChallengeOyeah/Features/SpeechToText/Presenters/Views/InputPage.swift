//
//  InputView.swift
//  MiniChallengeOyeah
//
//  Created by Gregorius Yuristama Nugraha on 4/25/23.
//

import SwiftUI
import CoreML

struct InputPage: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @StateObject var speechRecognizer = SpeechRecognizer()
    
    @State private var textFieldText: String = ""
    @State private var sentimentOutput = ""
    @State private var isButtonTapped = false
    @State private var isRecording = false
    
    let textMlModel = try? IndoTextClassifier.init(configuration: MLModelConfiguration())
    var body: some View {
        GeometryReader{ geo in
            ZStack{
                Image("inputPageBackground")
                    .resizable()
                    .scaledToFit()
                    .frame(width: geo.size.width, height: geo.size.height)
                    .opacity(0.2)
                    .gesture(
                        TapGesture()
                            .onEnded { UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil) }
                    )
                VStack(spacing: 20){
                    TextEditor(text: $textFieldText)
                        .disabled(isRecording)
                        .scrollContentBackground(.hidden)
                        .padding(.all, 30)
                        .background(.white)
                        .foregroundColor(.black)
                        .frame(width: 300, height: 500)
                        .cornerRadius(50)
                        .shadow(radius: 10, x: 10, y:5)
                        .onChange(of: speechRecognizer.transcript){ newValue in
                            textFieldText = newValue
                        }
                        .overlay(RoundedRectangle(cornerRadius: 50)
                            .stroke(AppColor.blueGradient
                                    , lineWidth: 5))
                        .padding(.top, 160)
                    Button{
                        isRecording.toggle()
                        if isRecording {
                            speechRecognizer.resetTranscript()
                            speechRecognizer.startTranscribing()
                        } else {
                            speechRecognizer.stopTranscribing()
                        }
                    }label: {
                        ZStack{
                            Circle()
                                .fill(.white)
                                .frame(width: 80, height: 80)
                                .overlay{
                                    Circle()
                                        .stroke(AppColor.blueGradient
                                                , lineWidth: 4)
                                }
                            AppColor.blueGradient
                            .mask{
                                Image(systemName: isRecording ? Prompt.Icon.stopRecordIcon : Prompt.Icon.startRecordIcon)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 40, height: 40)
                            }
                            .frame(width: 50, height: 50)
                        }
                    }
                    .offset(y: -65)
                    Button{
                        sentimentOutput = try! textMlModel!.prediction(text: textFieldText).label
                        isButtonTapped = true
                    }label: {
                        ZStack {
                            AppColor.blueGradient
                                .frame(width: 214, height: 77)
                                .mask{
                                    RoundedRectangle(cornerRadius: 26)
                                        .frame(width: 214, height: 77)
                                }
                           
                            Text(Prompt.Button.review)
                                .padding()
                                .font(.custom(AppFonts.mediumFont, size: 39))
                                .foregroundColor(AppColor.orangeApp)
                        }
                    }
                    .offset(y: -45)
                }
                if sentimentOutput == "positive" {
                    PositiveCardView(doClose: self.doToggleShowCard)
                        .offset(y: -35)
                        .opacity(isButtonTapped ? 1 : 0)
                } else if sentimentOutput == "negative"{
                    NegativeCardView()
                        .offset(y: -300)
                } else if sentimentOutput == "neutral" {
                    NeutralCardView()
                        .offset(y: -300)
                }
                InstructionCardView()
                        .offset(y: -300)
                        .opacity(isButtonTapped ? 0 : 1)
            }
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
    func doToggleShowCard(){
        isButtonTapped.toggle()
    }
}


struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputPage()
    }
}


