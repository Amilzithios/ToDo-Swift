//
//  MainTableViewCell.swift
//  ToDo-Swift
//
//  Created by Amilzith on 11/07/24.
//
import UIKit

class MainTableViewCell: UITableViewCell {
    
    // MARK: - Outlets
    
    @IBOutlet var titleLabel: UILabel!
    
    // MARK: - Initialization
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    // MARK: - Cell Configuration
    func configureCell(name: String) {
        titleLabel.text = name
    }
}
