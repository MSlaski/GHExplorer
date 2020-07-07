//
//  HTTPURLResponse+Extension.swift
//  GHExplorer
//
//  Created by Mateusz Ślaski on 07/07/2020.
//  Copyright © 2020 Mateusz Ślaski. All rights reserved.
//

import Foundation

extension HTTPURLResponse {
  func isResponseOK() -> Bool {
    return (200...299).contains(self.statusCode)
  }
}
