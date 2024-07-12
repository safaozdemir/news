//
//  NewsCell.swift
//  news
//
//  Created by Muhammed Safa Ozdemir on 11.07.2024.
//

import UIKit

class NewsCell: UITableViewCell {

    @IBOutlet weak var Icerik: UILabel!
    @IBOutlet weak var Baslik: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
