//
//  InputView.swift
//  MiniChallengeOyeah
//
//  Created by Gregorius Yuristama Nugraha on 4/25/23.
//

import SwiftUI
import Speech
import CoreML

struct InputPage: View {
    @State private var textFieldText: String = ""
    @StateObject var speechRecognizer = SpeechRecognizer()
    
    @State private var testOutput = ""
//    @State private var isFocused: FocusState = FocusState()
    
    let textMlModel = try? IndoTextClassifier.init(configuration: MLModelConfiguration())
    @State private var isRecording = false
    var body: some View {
        VStack(spacing: 20){
            TextEditor(text: $textFieldText)
                .disabled(isRecording)
                .scrollContentBackground(.hidden)
                .padding()
                .background(.white)
                .foregroundColor(.black)
                .frame(width: 300, height: 500)
                .cornerRadius(16)
                .shadow(radius: 10, x: 10, y:5)
                
//                .border(.black)
                .onChange(of: speechRecognizer.transcript){ newValue in
                    textFieldText = newValue
                }
                .gesture(
                    TapGesture()
                        .onEnded { UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil) }
                )
                .overlay(RoundedRectangle(cornerRadius: 16)
                    .stroke(Color.blue, lineWidth: 3))
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
                        .frame(width: 50, height: 50)
                        .overlay{
                            Circle()
                                .stroke(Color.blue, lineWidth: 2)
                        }
                    Image(systemName: isRecording ? Prompt.Icon.stopRecordIcon : Prompt.Icon.startRecordIcon)
                }
            }
            .offset(y: -45)
            Button{
                testOutput = try! textMlModel!.prediction(text: textFieldText).label
            }label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(Color.orange)
                        .frame(width: 150, height: 75)
                    Text(Prompt.Button.review)
                        .padding()
                        .font(.system(size: 24,weight: .bold))
                }
            }
            .offset(y: -45)
            Text(testOutput)
        }
    }
}


struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputPage()
    }
}


