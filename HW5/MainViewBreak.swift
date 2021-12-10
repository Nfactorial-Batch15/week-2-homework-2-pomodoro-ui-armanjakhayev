//
//  MainViewBreak.swift
//  HW5
//
//  Created by Arman on 12/9/21.
//

import SwiftUI

struct MainViewBreak: View {
    var body: some View {
        ZStack{
            Image("BG")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack{
                    ButtonCategory()
                .padding(.bottom,52)
                ProgressTrackBreak()
                HStack{
                    PauseButton()
                        .padding(.horizontal,40)
                    StopButton()
                        .padding(.horizontal,40)
                }
                .padding(.top,60)
                .padding(.bottom,160)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ProgressTrackBreak: View{
    var body: some View{
        ZStack{
//            Color.white.opacity(0.06).edgesIgnoringSafeArea(.all)
            ZStack{
                Circle()
                    .trim(from: 0, to: 1)
                    .stroke(Color.white.opacity(0.3), lineWidth: 6)
                    .frame(width: 248, height: 248)
                    .overlay(
                Circle()
                    .trim(from: 0, to: 0.1)
                    .stroke(Color.white, lineWidth: 6)
                    .rotationEffect(.init(degrees: -90)))
                VStack(spacing: 4){
                    Text("04:48")
                        .font(.system(size: 44, weight: .bold))
                        .foregroundColor(.white)
                    Text("Break")
                        .font(.system(size: 16))
                        .foregroundColor(.white)
                }
            }
        }
    }
}

struct MainViewBreak_Previews: PreviewProvider {
    static var previews: some View {
        MainViewBreak()
    }
}
