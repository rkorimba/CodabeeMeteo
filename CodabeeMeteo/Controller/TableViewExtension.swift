//
//  TableViewExtension.swift
//  CodabeeMeteo
//
//  Created by Riad Korimbacus on 24/05/2018.
//  Copyright © 2018 Riad Korimbacus. All rights reserved.
//

import UIKit

extension MeteoController: UITableViewDelegate, UITableViewDataSource {
    
    func miseEnPlaceTableView() {
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return previsionsJournalieres.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            if let cell = tableView.dequeueReusableCell(withIdentifier: previsionCell) as? PrevisionCell {
                cell.miseEnPlace(previsions: previsions)
                return cell
            }
        } else {
            let prevision = previsionsJournalieres[indexPath.row - 1]
            if let cell = tableView.dequeueReusableCell(withIdentifier: "JourCell") as? JourCell {
                cell.miseEnPlace(prevision: prevision)
                return cell
            }
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 160
        }
        return 100
    }
    
}
