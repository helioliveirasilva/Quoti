//
//  trilhasTableViewCell.swift
//  Quoti
//
//  Created by Hélio Silva on 02/07/20.
//  Copyright © 2020 Apple Academy. All rights reserved.
//

import UIKit

class trilhasTableViewCell: UITableViewCell {
    
    @IBOutlet weak var trilhaViewCell: UIView!
    @IBOutlet weak var tituloCell: UILabel!
    @IBOutlet weak var distanciaCell: UILabel!
    @IBOutlet weak var descricaoCell: UILabel!
    @IBOutlet weak var trilhaImagemCell: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
