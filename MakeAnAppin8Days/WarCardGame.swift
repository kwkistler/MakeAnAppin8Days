//
//  WarCardGame.swift
//  MakeAnAppin8Days
//
//  Created by Kraig Kistler on 8/25/23.
//  Copyright © 2023 Kraig Kistler. All rights reserved.
//

import SwiftUI

struct WarCardGame: View {
    
    var playerCard = "card7"
    var cpuCard = "card13"
    var playerScore = 0
    var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                
                Image("logo")
                    .padding(.bottom, 50)
                
                HStack {
                    
                    Spacer()
                    
                    Image(playerCard)
                    
                    Spacer()
                    
                    Image(cpuCard)
                    
                    Spacer()
                }
                .padding(.bottom,50)
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                
                HStack {
                    
                    Spacer()
                    
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom,10)
                        Text(String(playerScore)) // Casting converting the Int data to String data
                            .font(.largeTitle)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("App")
                            .font(.headline)
                            .padding(.bottom,10)
                        Text(String(cpuScore)) // Casting converting the Int data to String data
                            .font(.largeTitle)
                    }
                    
                    Spacer()
                }
                .foregroundColor(.white)
                .padding(.top, 50)
            }
            .padding()
        }
    }
    
    func deal() {
        print("Deal Cards")
    }
}

struct WarCardGame_Previews: PreviewProvider {
    static var previews: some View {
        WarCardGame()
    }
}
