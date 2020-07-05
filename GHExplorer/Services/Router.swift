//
//  Router.swift
//  GHExplorer
//
//  Created by Mateusz Ślaski on 05/07/2020.
//  Copyright © 2020 Mateusz Ślaski. All rights reserved.
//

import Foundation

enum Router {
  case getRepos(query: String, page: String)
  case getAllUserRepos(name: String)
  
  var scheme: String {
    return "https"
  }
  
  var host: String {
    return "api.github.com"
  }
  
  var path: String {
    switch self {
    case .getRepos:
      return "/search/repositories"
    case .getAllUserRepos(let name):
      return "/users/\(name)/repos"
    }
  }
  
  var parameters: [URLQueryItem] {
    switch self {
    case .getRepos(let query, let page):
      return [
        URLQueryItem(name: "q", value: query),
        URLQueryItem(name: "sort", value: "stars"),
        URLQueryItem(name: "order", value: "desc"),
        URLQueryItem(name: "page", value: page)
      ]
    case .getAllUserRepos:
      return [
        URLQueryItem(name: "sort", value: "stars"),
        URLQueryItem(name: "order", value: "desc")
      ]
    }
  }
  
  var method: String {
    return "GET"
  }
}
