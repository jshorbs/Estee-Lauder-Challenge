//
//  ContentView.swift
//  Estee Lauder Challenge
//
//  Created by Jude Shorbaji on 7/4/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack {
                HStack{
                    Text("Welcome Guest")
                    Spacer()
                    Text("Estee Lauder")
                }
                .padding(.all, 10.0)
                Image("estee 49")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .padding(.all, 10.0)
                    .frame(width: 500.0)
                 
                Text("Nutritious collection")
                    .padding(.all, 10.0)
                HStack{
                    Image("estee 19")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100.0, height: 100.0)
                    Image("estee 20")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100.0, height: 100.0)
                    Image("estee 17")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100.0, height: 100.0)
                    
                }
                .padding(.all, 10.0)
                NavigationLink(destination: quiz()) {
                    Text("Find the perfect product ")
                        .padding(.all, 10.0)
                }
                Spacer()
                HStack{
                    Text("🔎")
                    Text("👤")
                    Text("⚙️")
                }
                }
            }
            .padding()
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
