//
//  ContentView.swift
//  Estee Lauder Challenge
//
//  Created by Jude Shorbaji on 7/4/23.
//

import SwiftUI

struct ContentView: View {
    @State private var Slides=["estee 49","estee 23","estee 25","estee 26"]
    @State private var CurrentPhoto=0
    @State private var Search=false
    var body: some View {
        if Search==true{
            MoisturizerInfo()
        }
        else{
            NavigationStack{
                ZStack{
                    Rectangle()
                        .frame(width: 500.0, height: 950.0)
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
                               
                                NavigationLink(destination: Searching()) {
                                    Text("🔎 search cosmetics")
                                        .font(.custom("OptimaDisplay", size: 20))
                                        .foregroundColor(Color(red: 0.82, green: 0.082, blue: 0.255))
                                    Spacer()
                                }
                                    
                                
                            }
                            .padding(.all, 5.0)
                            
                        }
                        ZStack{
                            Image(Slides[CurrentPhoto])
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .shadow(radius:8)
                                .frame(width: 400.0)
                            HStack{
                                
                                Button{
                                    if CurrentPhoto==0{
                                        CurrentPhoto=3
                                    }
                                    else{
                                        CurrentPhoto-=1
                                    }
                                }label:{
                                    ZStack{
                                        Circle()
                                            .frame(width: 20.0)
                                            .foregroundColor(Color.white)
                                            .opacity(0.6)
                                        Text("←")
                                            .foregroundColor(Color.gray)
                                    }
                                }
                                Spacer()
                                Button{
                                    if CurrentPhoto==3{
                                        CurrentPhoto=0
                                    }
                                    else{
                                        CurrentPhoto+=1
                                    }
                                }label:{
                                    ZStack{
                                        Circle()
                                            .frame(width: 20.0)
                                            .foregroundColor(Color.white)
                                            .opacity(0.6)
                                        Text("→")
                                            .foregroundColor(Color.gray)
                                    }
                                }
                            }
                            .padding(.horizontal)
                        }
                        
                        
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
                            .padding(.top, 20.0)
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
                                        NavigationLink(destination:CleanserInfo()){
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
                                        NavigationLink(destination:FaceMaskInfo())
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
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
}
