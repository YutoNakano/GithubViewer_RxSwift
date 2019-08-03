//
//  SearchUserViewController.swift
//  practice_MVVM
//
//  Created by 中野湧仁 on 2019/08/02.
//  Copyright © 2019 中野湧仁. All rights reserved.
//

import UIKit
import GitHub
import RxSwift
import RxCocoa

final class SearchUserViewController: UIViewController {
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        
    }
    
    func setup() {
        // Storyboard上でのCellの高さ
//        tableView.estimatedRowHeight = 64
        // Cellの高さを自動的に決定する
        tableView.rowHeight = 89
        tableView.register(UINib(nibName: "UserCell", bundle: nil), forCellReuseIdentifier: "UserCell")
    }
    
}

extension SearchUserViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell") as? UserCell else { fatalError() }
        return cell
    }
}

extension SearchUserViewController: UITableViewDelegate {
    
}

