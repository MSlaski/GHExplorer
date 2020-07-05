//
//  NetworkService.swift
//  GHExplorer
//
//  Created by Mateusz Ślaski on 05/07/2020.
//  Copyright © 2020 Mateusz Ślaski. All rights reserved.
//

import Foundation

class NetworkService {
  class func request<T: Decodable>(router: Router, completion: @escaping(Result<[T], Error>) -> Void) {
    var components = URLComponents()
    components.scheme = router.scheme
    components.host = router.host
    components.path = router.path
    components.queryItems = router.parameters
    
    guard let url = components.url else { return }
    var urlRequest = URLRequest(url: url)
    urlRequest.httpMethod = router.method
    
    let urlSession = URLSession(configuration: .default)
    let dataTask = urlSession.dataTask(with: urlRequest) { (data, response, error) in
      // TODO: Finish
    }
  }
}
