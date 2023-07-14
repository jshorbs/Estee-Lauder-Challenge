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
            ZStack{
                Rectangle()
                    .frame(width: 500.0, height: 900.0)
                    .foregroundColor(Color(red: 0.937, green: 0.9137254901960784, blue: 0.9411764705882353))
                VStack(alignment: .center) {
                    Image("Estee_Lauder_Logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:200)
                        
                    ZStack{
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                            .stroke(Color(red: 0.8196078431372549, green: 0.0784313725490196, blue: 0.2549019607843137), lineWidth: 2)
                            .frame(width: 375.0, height: 40.0)
                            
                        HStack{
                            Text("🔎 search cosmetics")
                                .font(.custom("OptimaDisplay", size: 20))
                                .foregroundColor(Color(red: 0.82, green: 0.082, blue: 0.255))
                            Spacer()
                           
                        }
                        .padding(.all, 5.0)
                    }
                    
                    Image("estee 49")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 500.0)
                        .shadow(radius:8)
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                            .frame(height: 50.0)
                            .foregroundColor(Color(red: 0.82, green: 0.082, blue: 0.255))
                        NavigationLink(destination: quiz()) {
                            Text("Find Your Perfect Product ")
                                .font(.custom("JGDRFE+OptimaEL-Roman",size : 25))
                                .padding(.all, 20.0)
                                .foregroundColor(Color.white)
                        }
                    }
               
                    
                    Text("Nutritious Collection")
                        .font( .custom("JGDRFE+OptimaEL-Roman",size : 30))
                        .padding(.all, 10.0)
                        .foregroundColor(Color(red: 0.8196078431372549, green: 0.0784313725490196, blue: 0.2549019607843137))
                    Spacer()

                    ZStack{
                        
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                            .stroke(Color(red: 0.8196078431372549, green: 0.0784313725490196, blue: 0.2549019607843137), lineWidth: 2)
                            .frame(width: 375, height: 250.0)
                        VStack{
                            Spacer()
                            HStack{
                                VStack{
                                    NavigationLink(destination:MoisturizerInfo()){
                                        ZStack{
                                            RoundedRectangle(cornerRadius:10)
                                                .frame(width: 200.0, height: 100.0)
                                                .foregroundColor(Color(red: 0.922, green: 0.898, blue: 0.886))
                                            HStack{
                                                Image("estee 19")
                                                    .resizable(resizingMode: .stretch)
                                                    .aspectRatio(contentMode: .fit)
                                                    .frame(width: 100.0, height: 100.0)
                                                Text("2-in-1 Foam Cleanser")
                                                    .font(.custom("OptimaDisplay-Light", size: 14))
                                                
                                                    
                                                    .foregroundColor(Color(red: 0.8196078431372549, green: 0.0784313725490196, blue: 0.2549019607843137))
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: 100.0)
                                            }
                                        }
                                        .shadow(radius:5)
                                    }
                                    NavigationLink(destination:MoisturizerInfo())
                                    {
                                        ZStack{
                                            RoundedRectangle(cornerRadius:10)
                                                .frame(width: 200.0, height: 100.0)
                                                .foregroundColor(Color(red: 0.922, green: 0.898, blue: 0.886))
                                            HStack{
                                                Image("estee 20")
                                                    .resizable(resizingMode: .stretch)
                                                    .aspectRatio(contentMode: .fit)
                                                    .frame(width: 100.0, height: 100.0)
                                                Text("Melting Soft Creme/Mask Moisturizer")
                                                    .font(.custom("OptimaDisplay-Light", size: 14))
                                                    .foregroundColor(Color(red: 0.8196078431372549, green: 0.0784313725490196, blue: 0.2549019607843137))
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: 100.0)
                                            }
                                        }
                                        .shadow(radius:5)
                                    }
                                }
                                NavigationLink(destination: MoisturizerInfo()) {
                                    
                                    
                                    ZStack{
                                        RoundedRectangle(cornerRadius:10)
                                            .frame(width: 100.0, height: 200.0)
                                            .foregroundColor(Color(red: 0.922, green: 0.898, blue: 0.886))
                                        VStack{
                                            Image("estee 17")
                                                .resizable(resizingMode: .stretch)
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 100.0, height: 100.0)
                                            Text("Radient Essence Treatment Lotion")
                                                .font(.custom("OptimaDisplay-Light", size: 14))
                                                .foregroundColor(Color(red: 0.8196078431372549, green: 0.0784313725490196, blue: 0.2549019607843137))
                                                .multilineTextAlignment(.leading)
                                                .padding(.bottom, 10.0)
                                                .frame(width: 100.0, height: 90.0)
                                           
                                        }
                                        .frame(height: 200.0)
                                        
                                    }
                                    .shadow(radius:5)
                                }
                                
                            }
                            Spacer()
                        }
                        
                        .padding(.all, 10.0)
                    }
                    .frame(height: 200.0)
                    Spacer()
                   
                }
               
                .frame(width: 375.0, height: 750.0)
            }
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
}
