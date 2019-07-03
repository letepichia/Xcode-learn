//
//  PlayersViewController.swift
//  Storyboard
//
//  Created by Eduardo Letepichia on 7/1/19.
//  Copyright © 2019 Eduardo Letepichia. All rights reserved.
//

import UIKit

class PlayersViewController: UITableViewController {
    
    // MARK: - Properties
    var players = SampleData.generatePlayersData()
}
// MARK: - UITableViewDataSource
extension PlayersViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerCell",
                                                 for: indexPath) as! PlayerCell
        
        let player = players[indexPath.row]
        cell.player = player
        return cell
    }
}

// MARK: - IBActions
extension PlayersViewController {
    
    @IBAction func cancelToPlayersViewController(_ segue: UIStoryboardSegue) {
    }
    
    @IBAction func savePlayerDetail(_ segue: UIStoryboardSegue) {
        if let vc = segue.source as? PlayerDetailViewController {
            print("Player: \(vc.player)")
        }
        
        guard let playerDetailViewController = segue.source as? PlayerDetailViewController,
            let player = playerDetailViewController.player else {
                print("Return guard let")
                return
        }

        // add the new player to the players array
        players.append(player)
        
        // update the tableView
        let indexPath = IndexPath(row: players.count - 1, section: 0)
        tableView.insertRows(at: [indexPath], with: .automatic)
    }
}
