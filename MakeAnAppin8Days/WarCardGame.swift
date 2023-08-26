//
//  WarCardGame.swift
//  MakeAnAppin8Days
//
//  Created by Kraig Kistler on 8/25/23.
//  Copyright © 2023 Kraig Kistler. All rights reserved.
//

import SwiftUI

struct WarCardGame: View {
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
                    
                    Image("card2")
                    
                    Spacer()
                    
                    Image("card3")
                    
                    Spacer()
                }
                .padding(.bottom,50)
                
                Image("button")
                
                HStack {
                    
                    Spacer()
                    
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom,10)
                        Text("0")
                            .font(.largeTitle)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("App")
                            .font(.headline)
                            .padding(.bottom,10)
                        Text("0")
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
}

struct WarCardGame_Previews: PreviewProvider {
    static var previews: some View {
        WarCardGame()
    }
}
