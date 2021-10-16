//
//  ViewModel.swift
//  JsonDemo
//
//  Created by Alexander Rozhdestvenskiy on 08.10.2021.
//

import SwiftUI

final class UserViewModel: ObservableObject {
    
    @Published var users: [User] = []
    
    func getUsers() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else { fatalError("Missing URL") }
        
        let urlRequest = URLRequest(url: url)
        
        let dataTask = URLSession.shared.dataTask(with: urlRequest) { (data, reponce, error) in
            if let error = error {
                print("Request Error: ", error)
                return
            }
            guard let reponce = reponce as? HTTPURLResponse else { return }
            
            if reponce.statusCode == 200 {
                guard let data = data else { return }
                DispatchQueue.main.async {
                    do {
                        let decodedUsers = try JSONDecoder().decode([User].self, from: data)
                        self.users = decodedUsers
                    } catch let error {
                        print("Error Decoding", error)
                    }
                }
            }
        }
        dataTask.resume()
    }
}
