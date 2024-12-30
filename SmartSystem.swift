//
//  SmartSystem.swift
//  SmartHome
//
//  Created by Hürmüs Sürücüoğlu on 27.12.2024.
//

import SwiftUI

struct SmartSystem: View {
    var SmartColor: String = ""
    var SmartImage: String = ""
    //var SmartText1: String = ""
    var SmartText1 = LocalizedStringKey("default")
    //var SmartText2: String = ""
    var SmartText2 = LocalizedStringKey("default")
    var body: some View {
        ZStack{
            Rectangle()
                .fill(Color(SmartColor))
                .frame(width: 170, height: 160)
                .cornerRadius(20)
            
            VStack (alignment: .leading){
                Image(SmartImage)
                    .resizable()
                    .frame(width: 100,height: 100)
                    .padding(.horizontal, -40)
                    .padding(.vertical, -50)
                Text(SmartText1)
                    .bold()
                    .font(.system(size: 20))
                    .padding(.top, 50)
                Text(SmartText2)
                    .font(.subheadline)
                    .foregroundStyle(.black)
            }
            
            
        }
    }
}

#Preview {
    SmartSystem()
}
