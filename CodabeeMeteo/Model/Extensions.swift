//
//  Extensions.swift
//  CodabeeMeteo
//
//  Created by Riad Korimbacus on 24/05/2018.
//  Copyright © 2018 Riad Korimbacus. All rights reserved.
//

import Foundation

extension Double {
    
    func convertirEnIntString() -> String {
        let int = Int(self)
        return String(int) + "ºC"
    }
}
