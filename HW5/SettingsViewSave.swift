//
//  SettingsViewSave.swift
//  HW5
//
//  Created by Arman on 12/10/21.
//

import SwiftUI

struct SettingsViewSave: View {
    var body: some View {
        SettingListSave()
            .background(Color(red: 28/255, green: 28/255, blue: 30/255))
    }
}

struct SettingListSave: View {
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Image(systemName: "chevron.left")
                    Spacer()
                    Text("Save")
                }
                .font(.system(size: 17, weight: .bold))
                .padding(.horizontal,9)
                Spacer()
            }
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
        }
        .foregroundColor(.white)
        .padding(.horizontal)
        .font(.system(size: 17))
    }
}

struct SettingsViewSave_Previews: PreviewProvider {
    static var previews: some View {
        SettingsViewSave()
    }
}
