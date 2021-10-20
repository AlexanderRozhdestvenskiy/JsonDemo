//
//  Progress.swift
//  JsonDemo
//
//  Created by Alexander Rozhdestvenskiy on 16.10.2021.
//

import SwiftUI


struct Progress: View {
    
    @State private var level = 0.3
    
    var body: some View {
        ProgressView(value: level)
    }
}

struct Progress_Previews: PreviewProvider {
    static var previews: some View {
        Progress()
    }
}
