//
//  MainViewPause.swift
//  HW5
//
//  Created by Arman on 12/9/21.
//

import SwiftUI

struct MainViewPause: View {
    var body: some View {
        ZStack{
            Image("BG")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack{
                    ButtonCategory()
                .padding(.bottom,52)
                ProgressTrackStarted()
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

struct ProgressTrackStarted: View{
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
                    Text("24:32")
                        .font(.system(size: 44, weight: .bold))
                        .foregroundColor(.white)
                    Text("Focus on your task")
                        .font(.system(size: 16))
                        .foregroundColor(.white)
                }
            }
        }
    }
}

struct PauseButton: View{
    var body: some View{
        VStack{
            Button(action: {}){
                ZStack{
                    Circle()
                        .fill(.white)
                        .opacity(0.3)
                        .frame(width: 56, height: 56)
                    Image(systemName: "pause.fill")
                        .font(.system(size: 22.5, weight: .bold))
                        .foregroundColor(.white)
                }
            }
        }
    }
}

struct MainViewPause_Previews: PreviewProvider {
    static var previews: some View {
        MainViewPause()
    }
}
