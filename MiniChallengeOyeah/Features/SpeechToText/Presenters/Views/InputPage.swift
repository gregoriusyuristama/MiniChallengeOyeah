//
//  InputView.swift
//  MiniChallengeOyeah
//
//  Created by Gregorius Yuristama Nugraha on 4/25/23.
//

import SwiftUI
import CoreML

struct InputPage: View {
    @State private var textFieldText: String = ""
    @StateObject var speechRecognizer = SpeechRecognizer()
    
    @State private var testOutput = ""
    
    let textMlModel = try? IndoTextClassifier.init(configuration: MLModelConfiguration())
    @State private var isRecording = false
    var body: some View {
        GeometryReader{ geo in
            ZStack{
                Image("inputPageBackground")
                    .resizable()
                    .scaledToFit()
                    .frame(width: geo.size.width, height: geo.size.height)
//                    .opacity(0.2)
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
                        .gesture(
                            TapGesture()
                                .onEnded { UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil) }
                        )
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
    //                                .foregroundColor(.black)
                                    .frame(width: 40, height: 40)
                            }
                            .frame(width: 50, height: 50)
                        }
                    }
                    .offset(y: -65)
                    Button{
                        testOutput = try! textMlModel!.prediction(text: textFieldText).label
                    }label: {
                        ZStack {
                            AppColor.blueGradient
                                .frame(width: 150, height: 75)
                                .mask{
                                    RoundedRectangle(cornerRadius: 25)
                                        .frame(width: 150, height: 75)
                                }
                           
                            Text(Prompt.Button.review)
                                .padding()
                                .font(.system(size: 24,weight: .bold))
                                .foregroundColor(AppColor.orangeApp)
                        }
                    }
                    .offset(y: -45)
                }
                if testOutput == "positive" {
                    PositiveCardView()
                        .offset(y: -80)
                } else if testOutput == "negative"{
                    NegativeCardView()
                        .offset(y: -300)
                }
            }
            
        }
        .ignoresSafeArea()
        
        
    }
}


struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputPage()
    }
}


