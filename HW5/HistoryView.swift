//
//  HistoryView.swift
//  HW5
//
//  Created by Arman on 12/8/21.
//

import SwiftUI

struct HistoryView: View {
    var body: some View {
        HistoryList()
        .background(Color(red: 28/255, green: 28/255, blue: 30/255))
    }
}

struct HistoryList: View {
    var body: some View {
        VStack{
            Text("Settings")
                .fontWeight(.bold)
                .padding(.bottom,34)
                .foregroundColor(.white)
            OneHistory()
            OneHistory()
            OneHistory()
            Spacer()
        }
    }
}


struct OneHistory: View {
    var body: some View {
        VStack{
            HStack{
                Text("21.11.21")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .padding(.bottom,23)
                Spacer()
            }
            HStack{
                Text("Focus Time")
                Spacer()
                Text("25:00")
            }
            Divider()
            HStack{
                Text("Break Time")
                Spacer()
                Text("05:00")
            }
            Divider()
            HStack{
                Text("Session")
                Spacer()
                Text("2")
            }
            Divider()
        }
//        .background(Color(red: 28/255, green: 28/255, blue: 30/255))
        .foregroundColor(.white)
        .padding(.horizontal)
        .padding(.vertical,32)
        .font(.system(size: 17))
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
