//
//  PlayerDetailViewController.swift
//  Storyboard
//
//  Created by Eduardo Letepichia on 7/1/19.
//  Copyright © 2019 Eduardo Letepichia. All rights reserved.
//

import UIKit



class PlayerDetailViewController: UITableViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var detailLabel: UILabel!
    // MARK: - Properties
    var player: Player?
    var game: String = "Chess" {
        didSet {
            detailLabel.text = game
        }
    }

    deinit {
        print("deinit PlayerDetailsViewController")
    }

    required init?(coder aDecoder: NSCoder) {
        print("init PlayerDetailsViewController")
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SavePlayerDetail",
            let playerName = nameTextField.text {
            player = Player(name: playerName, game: game, rating: 1)
        }

        if segue.identifier == "PickGame",
            let gamePickerViewController = segue.destination as? GamePickerViewController {
            gamePickerViewController.selectedGame = game
        }
    }

}


// MARK: - UITableViewDelegate
extension PlayerDetailViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            nameTextField.becomeFirstResponder()
        }
    }
}

// MARK: - IBActions
extension PlayerDetailViewController {
    
    @IBAction func unwindWithSelectedGame(segue: UIStoryboardSegue) {
        if let gamePickerViewController = segue.source as? GamePickerViewController,
            let selectedGame = gamePickerViewController.selectedGame {
            game = selectedGame
        }
    }
}
