//
//  UserCell.swift
//  practice_MVVM
//
//  Created by 中野湧仁 on 2019/08/03.
//  Copyright © 2019 中野湧仁. All rights reserved.
//

import UIKit
import GitHub

final class UserCell: UITableViewCell {
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    private var task: URLSessionTask?
    
    // 非表示となって必要なくなったセルが再利用されるときに呼び出される
    override func prepareForReuse() {
        super.prepareForReuse()
        
        
    }
    
    
    func configure(user: User) {
        
    }
}


