//
//  MoisturizerInfo.swift
//  Estee Lauder Challenge
//
//  Created by Jude Shorbaji on 7/10/23.
//

import SwiftUI

struct MoisturizerInfo: View {
    @State private var review=""
    var body: some View {
        VStack{
            //image of product
            Image("estee 39")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            //product name
            
            Text("Radient Essence Treatment Moisturizer")
            Text("Nutritious Collection")
            //product rating
            Text("★★★★☆")
            //product price
            Text("42.00")
            HStack{
                //add to cart
                ZStack{
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                        .stroke(.black)
                        .frame(width:250, height:40)
                    Text("Add To Cart")
                }
                // wishlist
                ZStack{
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                        .stroke(.black)
                        .frame(width:40, height:40)
                    Text("♡")
                }
            }
            //product description
            Text("Description")
            Text("If your skin is grumpy, dull and irritable, this collection is what you need. Ingeniously calibrated, nutrient-rich formulas feature naturally derived ingredients. Skincare that will help skin flourish and flaunt its natural vibrancy. It’s as simple as that.")
            //leave a review
            ZStack{
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                    .stroke(.black)
                    .frame(width:375, height:100)
                TextField("leave a review",text: $review)
                    
            }
                
            
           
        }
        .padding(17.5)
    }
}

struct MoisturizerInfo_Previews: PreviewProvider {
    static var previews: some View {
        MoisturizerInfo()
    }
}
