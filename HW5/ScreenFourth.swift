//
//  ScreenFourth.swift
//  HW5
//
//  Created by Arman on 12/9/21.
//

import SwiftUI

struct ScreenFourth: View {
    var body: some View {
        ZStack{
            MainViewBreak()
            dimming
            VStack{
                Spacer()
                FocusCategoryPanel
            }.edgesIgnoringSafeArea(.all)
            
        }
    }
    
    var dimming: some View {
        Color.black.opacity(0.2)
    }
    
    var FocusCategoryPanel: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
            Text("Focus Category")
                .font(.system(size: 16))
                .foregroundColor(.black)
                .padding(.bottom,318)
            bottomSheetHeader
            .padding(.bottom, 316)
            .padding(.horizontal,22)
            VStack {
                HStack(spacing: 20){
                    CustomButton(text: "Work")
                    CustomButton(text: "Study")
                }.padding(.vertical,10)
                HStack(spacing: 20){
                    CustomButton(text: "Workout")
                    CustomButton(text: "Reading")
                }.padding(.vertical,10)
                HStack(spacing: 20){
                    CustomButton(text: "Meditation")
                    CustomButton(text: "Others")
                }.padding(.vertical,10)
            }.padding(.top,40)
        }.frame(height: 390)
    }
    
    var bottomSheetHeader: some View {
        HStack {
            Spacer()
            Image(systemName: "xmark")
        }
    }
}

struct CustomButton: View {
    let text: String
    var action: () -> Void = {}

    var body: some View {
        Button(action: action) {
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color.black)
                    .border(Color.gray, width: 1)
                    .opacity(0.05)
                    .frame(width: 172, height: 60)
                Text(text)
                    .foregroundColor(.black)
                
            }
        }
    }
}



struct ScreenFourth_Previews: PreviewProvider {
    static var previews: some View {
        ScreenFourth()
    }
}
