//
//  ContentView.swift
//  JsonDemo
//
//  Created by Alexander Rozhdestvenskiy on 08.10.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tab: Section = .users
    
    enum Section {
        case users
        case posts
        case yandex
        case canvas
    }
    
    var body: some View {
        TabView(selection: $tab) {
            UserView(viewModel: UserViewModel())
                .tabItem { Text("Users") }.tag(Section.users)
            PostView(viewModel: PostViewModel())
                .tabItem { Text("Posts") }.tag(Section.posts)
            URLView()
                .tabItem { Text("URL") }.tag(Section.yandex)
            Progress()
                .tabItem { Text("Canvas") }.tag(Section.canvas)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
