//
//  Settings.swift
//  HW5
//
//  Created by Arman on 12/8/21.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        SettingList()
            .background(Color(red: 28/255, green: 28/255, blue: 30/255))
    }
}

struct SettingList: View {
    var body: some View {
        VStack{
            Text("Settings")
                .fontWeight(.bold)
                .padding(.bottom,34)
            HStack{
                Text("Focus Time")
                Spacer()
                TextField("TimeOfFocus", text: .constant("25:00"))
                    .keyboardType(.numberPad)
                    .multilineTextAlignment(.trailing)
            }
            Divider()
            HStack{
                Text("Break Time")
                Spacer()
                TextField("TimeOfBreak", text: .constant("05:00"))
                    .keyboardType(.numberPad)
                    .multilineTextAlignment(.trailing)
            }
            Divider()
            HStack{
                Text("Session")
                Spacer()
                TextField("TimesOfSession", text: .constant("2"))
                    .keyboardType(.numberPad)
                    .multilineTextAlignment(.trailing)
            }
            Divider()
            Spacer()
        }
//        .background(Color(red: 28/255, green: 28/255, blue: 30/255))
        .foregroundColor(.white)
        .padding(.horizontal)
        .font(.system(size: 17))
    }
}



struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
