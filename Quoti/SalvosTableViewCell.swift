//
//  SalvosTableViewCell.swift
//  Quoti
//
//  Created by Hélio Silva on 01/07/20.
//  Copyright © 2020 Apple Academy. All rights reserved.
//

import UIKit

class SalvosTableViewCell: UITableViewCell {
    
    @IBOutlet weak var viewCell: UIView!
    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var titleCell: UILabel!
    @IBOutlet weak var distanceCell: UILabel!
    @IBOutlet weak var visitadoCell: UILabel!
    @IBOutlet weak var favoritoCell: UIImageView!
        

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
