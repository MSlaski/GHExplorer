//
//  NetworkService.swift
//  GHExplorer
//
//  Created by Mateusz Ślaski on 05/07/2020.
//  Copyright © 2020 Mateusz Ślaski. All rights reserved.
//

import Foundation

enum Router {
  case getRepos(query: String, page: String)
  case getAllUserRepos
}
