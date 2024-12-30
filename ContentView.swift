//
//  ContentView.swift
//  SmartHome
//
//  Created by Hürmüs Sürücüoğlu on 26.12.2024.
//

import SwiftUI

struct ContentView: View {
    init() {
        let appearance = UINavigationBarAppearance()
            appearance.backgroundColor = UIColor (named: "MainColor")

            UINavigationBar.appearance().standardAppearance = appearance
            UINavigationBar.appearance().compactAppearance = appearance
            UINavigationBar.appearance().scrollEdgeAppearance = appearance

        }
    @State private var agreed = false

    var body: some View {
        GeometryReader { geometry in
            let screenHeight = geometry.size.height
            let screenWidth = geometry.size.width
            
            NavigationStack {
                VStack{
                    VStack (alignment:.leading) {
                        
                        
                        Text("altbaslik1")
                            .bold()
                            .font(Font.system(size: 22))
                            .padding(.top, screenHeight/25)
                        

                        
                        HStack {
                            Category(CategoryName: "altbaslik1_1", CategoryImage: "sofa")
                            Category(CategoryName: "altbaslik1_2", CategoryImage: "bed.double")
                            Category(CategoryName: "altbaslik1_3", CategoryImage: "cooktop")
                            Category(CategoryName: "altbaslik1_4", CategoryImage: "bathtub")
                            
                        }.padding(.bottom, screenHeight/25)
                    }
                    
                    VStack(alignment:.leading){
                        Text("altbaslik2")
                            .bold()
                            .font(Font.system(size: 22))
                            .padding(.bottom, screenHeight/25)
                        
                        HStack {
                            SmartSystem(
                                SmartColor: "plan1",
                                SmartImage: "resim1",
                                SmartText1: "altbaslik2_1",
                                SmartText2: "2 \(NSLocalizedString("cihaz", comment: ""))"
                            )
                            SmartSystem(
                                SmartColor: "plan2",
                                SmartImage: "resim2",
                                SmartText1: "altbaslik2_2",
                                SmartText2: "1 \(NSLocalizedString("cihaz", comment: ""))"
                            )
                        }
                        .padding(.bottom, screenHeight/25)
                        HStack {
                             SmartSystem(
                                SmartColor: "plan3",
                                SmartImage: "resim3",
                                SmartText1: "altbaslik2_3",
                                SmartText2: "1 \(NSLocalizedString("cihaz", comment: ""))"
                            )
                            SmartSystem(
                               SmartColor: "plan4",
                               SmartImage: "resim4",
                               SmartText1: "altbaslik2_4",
                               SmartText2: "1 \(NSLocalizedString("cihaz", comment: ""))"
                           )
                            
                        }
                    }
                    
                    HStack{
                        
                        TabButtonView(str: "house")
                        TabButtonView(str: "person.3")
                        TabButtonView(str: "gearshape")
                        
                        
                    }
                    .padding()
                    .background(Color("tabColor"))
                    .cornerRadius(30)
                    .padding(.top, screenHeight/25)
                    
                }
                .navigationBarTitle(Text("baslik"), displayMode: .large)
                .navigationBarItems(trailing: Image("avatar")
                    .resizable()
                    .frame(width: screenWidth/5 ,height: screenWidth/5 ))
                
                
            }
        }
            
           
        }
        
        
    }


#Preview {
    ContentView()
}

struct TabButtonView: View {
    var str: String = ""
    var body: some View {
        Button {
            
        } label: {
            
            VStack {
                Image(systemName: str)
                    .font(Font.system(size: 20))
                    .foregroundStyle(Color("txtWhite"))
                    .padding(.horizontal, 20)
                
                
            }
            
            
        }
    }
}
