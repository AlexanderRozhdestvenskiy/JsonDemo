//
//  Progress.swift
//  JsonDemo
//
//  Created by Alexander Rozhdestvenskiy on 16.10.2021.
//

import SwiftUI

struct Progress: View {
    var body: some View {
        Canvas { context, size in
                
            let gradient = Gradient(colors: [.blue, .pink, .orange])
            let rect = CGRect(origin: .zero, size: size).insetBy(dx: 5, dy: 5)
            let path = Path(ellipseIn: rect)
            let midPoint = CGPoint(x: size.width / 2, y: size.height / 2)
            let text = Text("DevTechie")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
                
            context.stroke(path, with: .color(.orange), lineWidth: 10)
                
            context.fill(path, with: .linearGradient(gradient, startPoint: rect.origin, endPoint: CGPoint(x: rect.width, y: 0)))
                
            context.draw(text, at: midPoint, anchor: .center)
        }
        .frame(width: 300, height: 200)
    }
}

struct Progress_Previews: PreviewProvider {
    static var previews: some View {
        Progress()
    }
}
