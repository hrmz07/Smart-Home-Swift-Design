//
//  Category.swift
//  SmartHome
//
//  Created by Hürmüs Sürücüoğlu on 26.12.2024.
//

import SwiftUI

struct Category: View {
   // var CategoryName: String = ""
    var CategoryName = LocalizedStringKey("default")
    var CategoryImage: String = ""
    var body: some View {
//        Button(action: {
//            
//        }, label: {
//            VStack {
//                Image(CategoryImage)
//                    .resizable()
//                    .frame(width: 80,height: 65)
//                    .opacity(0.5)
//                
//             
//                Text(CategoryName)
//                    .foregroundStyle(.gray)
//            }
//            
//        })
        Button(action: {
            
        }, label: {
            VStack {
                Image(systemName: CategoryImage)
                    .font(Font.system(size: 35))
                    .foregroundStyle(Color.gray)
                    .padding(15)
                    //.padding(.vertical,10)
                    .overlay{
                        
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color("txtBlack"), lineWidth: 1)
                    }
                
             
                Text(CategoryName)
                    .foregroundStyle(Color("txtBlack"))
            }
            
            
        })
    }
}

#Preview {
    Category()
}
