//
//  L3Demo.swift
//  MakeAnAppin8Days
//
//  Created by Kraig Kistler on 8/25/23.
//  Copyright © 2023 Kraig Kistler. All rights reserved.
//

import SwiftUI

struct L3DemoCard: View {
    
    var body: some View {
        
        ZStack {
            Color(.systemMint)
                .ignoresSafeArea()
            
            CardView()
        }
    }
    
    struct L3DemoCard_Previews: PreviewProvider {
        static var previews: some View {
            L3DemoCard()
        }
    }
    
    struct CardView: View {
        
        var body: some View {
            
            VStack(alignment: .leading, spacing: 20.0) {
                Image("niagara-falls")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                
                HStack {
                    Text("Niagara Falls")
                        .font(.title)
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
                    VStack(alignment: .trailing) {
                        HStack {
                            ForEach(0..<4) { _ in
                                Image(systemName: "star.fill")
                            }
                            Image(systemName: "star.leadinghalf.filled")
                        }
                    .padding(.bottom, -4)
                        Text("(Reviews 361)")
                    }
                    .foregroundColor(.orange)
                    .font(.caption)
                    
                }
                
                Text("Come visit the falls for an experience of a lifetime.")
                
                HStack{
                    
                    Spacer()
                    
                    Image(systemName: "fork.knife")
                    Image(systemName: "binoculars.fill")
                }
                .foregroundColor(.gray)
                .font(.caption)
            }
            .padding()
            .background(Rectangle()
                .foregroundColor(.white))
            .cornerRadius(15)
            .shadow(radius: 15)
            .padding()
        }
    }
    
}
