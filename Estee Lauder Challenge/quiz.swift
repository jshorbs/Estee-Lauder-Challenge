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
        if QuestionNum==0{
            VStack{
                Text("lets find your perfect NUTRITIOUS product")
                Button{
                    QuestionNum=1
                }label:{
                    Text("Lets go")
                }
            }
        }
        else if QuestionNum==1{
            VStack{
                Text("what is your biggest skin goal?")
                Button{
                    treatmentLotion+=1
                }label:{
                    Text("glow")
                }
                Button{
                    foamCleanser+=1
                }label:{
                    Text("Cleanse")
                }
                Button{
                    maskMoisturizer+=1
                }label:{
                    Text("Hydrate")
                }
                
                Button{
                    QuestionNum=2
                }label:{
                    Text("Next")
                }
                
            }
            
        }
        
        
        //irritated skin, dull skin, large pores
        
        else if QuestionNum==2{
            VStack{
                Text("do you have any concerns?")
                Button{
                    maskMoisturizer+=1
                }label:{
                    Text("dullness")
                }
                Button{
                    treatmentLotion+=1
                        
                }label:{
                    Text("Irritation")
                }
                Button{
                    foamCleanser+=1
                    
                }label:{
                   Text( "large pores")
                }
                Button{
                    QuestionNum+=1
                }label:{
                    Text("next")
                }
                }
            }
        else if QuestionNum==3{
            VStack{
                Text("are you a morning bird or a night owl?")
                Button{
                    foamCleanser+=1
                    treatmentLotion+=1
                }label:{
                    Text("morning bird")
                }
                Button{
                    maskMoisturizer+=1
                }label:{
                    Text("night owl")
                }
                Button{
                    QuestionNum=4
                }label:{
                    Text("Done")
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

