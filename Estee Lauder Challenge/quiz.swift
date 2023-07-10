//
//  quiz.swift
//  Estee Lauder Challenge
//
//  Created by Jude Shorbaji on 7/4/23.
//

import SwiftUI
struct quiz: View {
    @State private var maskMoisturizer=0
    @State private var treatmentLotion=0
    @State private var foamCleanser=0
    @State private var QuestionNum=0
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius:0)
                .foregroundColor(Color(red: 0.8196078431372549, green: 0.0784313725490196, blue: 0.2549019607843137))
                .frame(width:400,height:900)
            
            if QuestionNum==0{
                VStack{
                    Text("lets find your perfect NUTRITIOUS product")
                        .foregroundColor(Color(red: 0.937, green: 0.9137254901960784, blue: 0.9411764705882353))
                    Button{
                        QuestionNum=1
                    }label:{
                        ZStack{
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                                .frame(width:70,height:40)
                                .foregroundColor(Color(red: 0.937, green: 0.9137254901960784, blue: 0.9411764705882353))
                            Text("Lets go")
                                .foregroundColor(Color(red: 0.8196078431372549, green: 0.0784313725490196, blue: 0.2549019607843137))
                        }
                    }
                }
            }
            else if QuestionNum==1{
                VStack{
                    Text("what is your biggest skin goal?")
                        .foregroundColor(Color(red: 0.937, green: 0.9137254901960784, blue: 0.9411764705882353))
                    Button{
                        treatmentLotion+=1
                        QuestionNum=2
                    }label:{
                        ZStack{
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                                .frame(width:70,height:40)
                                .foregroundColor(Color(red: 0.937, green: 0.9137254901960784, blue: 0.9411764705882353))
                            Text("glow")
                                .foregroundColor(Color(red: 0.8196078431372549, green: 0.0784313725490196, blue: 0.2549019607843137))
                        }
                        
                    }
                    Button{
                        foamCleanser+=1
                        QuestionNum=2
                    }label:{
                        ZStack{
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                                .frame(width:70,height:40)
                                .foregroundColor(Color(red: 0.937, green: 0.9137254901960784, blue: 0.9411764705882353))
                            Text("Cleanse")
                                .foregroundColor(Color(red: 0.8196078431372549, green: 0.0784313725490196, blue: 0.2549019607843137))
                        }
                        
                    }
                    Button{
                        maskMoisturizer+=1
                        QuestionNum=2
                    }label:{
                        ZStack{
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                                .frame(width:70,height:40)
                                .foregroundColor(Color(red: 0.937, green: 0.9137254901960784, blue: 0.9411764705882353))
                            Text("Hydrate")
                                .foregroundColor(Color(red: 0.8196078431372549, green: 0.0784313725490196, blue: 0.2549019607843137))
                        }
                    }
                    
                    
                    
                }
                
            }
            
            
            //irritated skin, dull skin, large pores
            
            else if QuestionNum==2{
                VStack{
                    Text("do you have any concerns?")
                        .foregroundColor(Color(red: 0.937, green: 0.9137254901960784, blue: 0.9411764705882353))
                    Button{
                        maskMoisturizer+=1
                        QuestionNum=3
                    }label:{
                        ZStack{
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                                .frame(width:70,height:40)
                                .foregroundColor(Color(red: 0.937, green: 0.9137254901960784, blue: 0.9411764705882353))
                            Text("Dullness")
                                .foregroundColor(Color(red: 0.8196078431372549, green: 0.0784313725490196, blue: 0.2549019607843137))
                        }
                    }
                    Button{
                        treatmentLotion+=1
                        QuestionNum=3
                        
                    }label:{
                        ZStack{
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                                .frame(width:70,height:40)
                                .foregroundColor(Color(red: 0.937, green: 0.9137254901960784, blue: 0.9411764705882353))
                            Text("Irritation")
                                .foregroundColor(Color(red: 0.8196078431372549, green: 0.0784313725490196, blue: 0.2549019607843137))
                        }
                    }
                    Button{
                        foamCleanser+=1
                        QuestionNum=3
                        
                    }label:{
                        ZStack{
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                                .frame(width:70,height:40)
                                .foregroundColor(Color(red: 0.937, green: 0.9137254901960784, blue: 0.9411764705882353))
                            Text("Large Pores")
                                .foregroundColor(Color(red: 0.8196078431372549, green: 0.0784313725490196, blue: 0.2549019607843137))
                        }
                    }
                    
                }
            }
            else if QuestionNum==3{
                VStack{
                    Text("are you a morning bird or a night owl?")
                        .foregroundColor(Color(red: 0.937, green: 0.9137254901960784, blue: 0.9411764705882353))
                    Button{
                        foamCleanser+=1
                        treatmentLotion+=1
                        QuestionNum=4
                    }label:{
                        ZStack{
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                                .frame(width:70,height:40)
                                .foregroundColor(Color(red: 0.937, green: 0.9137254901960784, blue: 0.9411764705882353))
                            Text("Morning Bird")
                                .foregroundColor(Color(red: 0.8196078431372549, green: 0.0784313725490196, blue: 0.2549019607843137))
                        }
                    }
                    Button{
                        maskMoisturizer+=1
                        QuestionNum=4
                    }label:{
                        ZStack{
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                                .frame(width:70,height:40)
                                .foregroundColor(Color(red: 0.937, green: 0.9137254901960784, blue: 0.9411764705882353))
                            Text("Night owl")
                                .foregroundColor(Color(red: 0.8196078431372549, green: 0.0784313725490196, blue: 0.2549019607843137))
                        }
                    }
                    
                    
                }
            }
            else if QuestionNum==4{
                if (maskMoisturizer>foamCleanser && maskMoisturizer>treatmentLotion){
                    Text("The mask moisturizer is perfect")
                }
                else if (foamCleanser>maskMoisturizer && foamCleanser>treatmentLotion){
                    Text("the foam cleanser is perfect")
                }
                else if(treatmentLotion>maskMoisturizer && treatmentLotion>foamCleanser){
                    Text("the treatment lotion is perfect")
                }
                else if(treatmentLotion==foamCleanser){
                    Text("its a tie between the treetment lotion and the foam cleanser!")
                }
            }
        }
    }
    }

struct quiz_Previews: PreviewProvider {
    static var previews: some View {
        quiz()
    }
}

