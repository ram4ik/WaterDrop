//
//  ContentView.swift
//  WaterDrop
//
//  Created by Ramill Ibragimov on 06.09.2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action: {
            
        }, label: {
            ZStack {
                WaterDropShape()
                    .fill(LinearGradient(gradient: Gradient(colors: [.white, .blue]), startPoint: .topLeading, endPoint: .bottom))
                    .frame(width: 110, height: 60)
                    .shadow(color: .black, radius: 3, x: 1, y: 2)
                Text("100ml")
                    .foregroundColor(.white)
                    .offset(y: 12)
            }
        })
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WaterDropShape: Shape {
    
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.size.width/2, y: 0))
            path.addQuadCurve(to: CGPoint(x: rect.size.width/2, y: rect.size.height), control: CGPoint(x: rect.size.width, y: rect.size.height))
            path.addQuadCurve(to: CGPoint(x: rect.size.width/2, y: 0), control: CGPoint(x: 0, y: rect.size.height))
        }
    }
}

