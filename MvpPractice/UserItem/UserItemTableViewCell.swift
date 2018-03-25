//
//  UserItemTableViewCell.swift
//  MvpPractice
//
//  Created by Shintaro Takemura on 2018/03/24.
//  Copyright © 2018年 Shintaro Takemura. All rights reserved.
//

import UIKit

class UserItemTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setup(with userItem: UserItem) {
        textLabel?.text = userItem.name
    }
}
