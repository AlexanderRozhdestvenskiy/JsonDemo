//
//  UsersView.swift
//  JsonDemo
//
//  Created by Alexander Rozhdestvenskiy on 15.10.2021.
//

import SwiftUI

struct UserView: View {
    
    @ObservedObject var viewModel: UserViewModel
    
    var body: some View {
        
        ZStack {
            
            Color.blue
                .edgesIgnoringSafeArea(.top)
            
            ScrollView {
                Text("All Users")
                    .font(.title)
                    .bold()
                VStack(alignment: .leading) {
                    ForEach(viewModel.users) { user in
                        HStack(alignment: .top) {
                            Text("\(user.id)")
                            
                            VStack(alignment: .leading) {
                                Text(user.name)
                                    .bold()
                                Text(user.email.lowercased())
                                Text(user.phone)
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
                viewModel.getUsers()
            }
        }
    }
}

struct UsersView_Previews: PreviewProvider {
    static var previews: some View {
        UserView(viewModel: UserViewModel())
    }
}
