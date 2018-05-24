//
//  PrevisionJournaliere.swift
//  CodabeeMeteo
//
//  Created by Riad Korimbacus on 24/05/2018.
//  Copyright © 2018 Riad Korimbacus. All rights reserved.
//

import UIKit

class PrevisionJournaliere {
    
    private var _jour: String
    private var _icone: String
    private var _min: Double
    private var _max: Double
    private var _desc: String
    
    var jour: String {
        return _jour
    }
    
    var icone: String {
        return _icone
    }
    
    var min: Double {
        return _min
    }
    
    var max: Double {
        return _max
    }
    
    var desc: String {
        return _desc
    }
    
    init(jour: String, icone: String, min: Double, max: Double, desc: String) {
        
        _jour = jour
        _icone = icone
        _min = min
        _max = max
        _desc = desc
    }
    
}
