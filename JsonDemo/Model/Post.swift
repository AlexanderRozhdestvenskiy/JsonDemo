//
//  Post.swift
//  JsonDemo
//
//  Created by Alexander Rozhdestvenskiy on 15.10.2021.
//

import Foundation

struct Post: Identifiable, Decodable {
    var userId: Int
    var id: Int
    var title: String
    var body: String
}
