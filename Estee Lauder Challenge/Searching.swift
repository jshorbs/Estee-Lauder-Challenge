//
//  Searching.swift
//  Estee Lauder Challenge
//
//  Created by Jude Shorbaji on 7/14/23.
//

import SwiftUI

struct Searching: View {
    @State private var currentSearch=""
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 500.0, height: 950.0)
                .foregroundColor(Color(red: 0.937, green: 0.9137254901960784, blue: 0.9411764705882353))
            VStack{
                Image("Estee_Lauder_Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:200)
                ZStack{
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                        .stroke(Color(red: 0.8196078431372549, green: 0.0784313725490196, blue: 0.2549019607843137), lineWidth: 2)
                        .frame(width: 375.0, height: 40.0)
                    
                    HStack{
                        Text("🔎 ")
                        TextField("search cosmetics", text: $currentSearch )
                            .font(.custom("OptimaDisplay", size: 20))
                            .foregroundColor(Color(red: 0.82, green: 0.082, blue: 0.255))
                        Spacer()
                    }
                    
                    
                    
                    .padding(.all, 15.0)
                    
                    
                }
                Spacer()
            }
            .frame(width: 400.0, height: 750.0)
        }
    }
}
struct Searching_Previews: PreviewProvider {
    static var previews: some View {
        Searching()
    }
}
