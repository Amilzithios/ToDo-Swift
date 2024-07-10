//
//  MainCollectionViewCell.swift
//  ToDo-Swift
//
//  Created by Amilzith on 11/07/24.
//

import UIKit

class MainCollectionViewCell: UICollectionViewCell {
    // MARK: - IBOutlet Declarations
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var indicatorView: UIView!
    
    // MARK: - Override Functions
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    //MARK: - Mthods
    
    func configureCell(component: UIKITComponent) {
        titleLabel.text = component.componentTopic
        indicatorView.backgroundColor = component.self == UIKITComponent.selectedComponent ? .blue : .clear
    }
}
