//
//  PostView.swift
//  JsonDemo
//
//  Created by Alexander Rozhdestvenskiy on 15.10.2021.
//

import SwiftUI

struct PostView: View {
    
    @ObservedObject var viewModel: PostViewModel
    
    var body: some View {
        
        ZStack {
            
            Color.orange
                .edgesIgnoringSafeArea(.top)
            
            ScrollView {
                Text("All Posts")
                    .font(.title)
                    .bold()
                VStack(alignment: .leading) {
                    ForEach(viewModel.posts) { post in
                        HStack(alignment: .top) {
                            Text("\(post.id)")
                            
                            VStack(alignment: .leading) {
                                Text(post.title)
                                    .bold()
                                Spacer()
                                Text(post.body)
                            }
                        }
                        .frame(width: 300, alignment: .leading)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(16)
                    }
                }
            }
            .onAppear {
                viewModel.getPosts()
            }
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(viewModel: PostViewModel())
    }
}
