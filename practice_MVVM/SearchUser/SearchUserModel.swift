//
//  SearchUserModel.swift
//  practice_MVVM
//
//  Created by 中野湧仁 on 2019/08/03.
//  Copyright © 2019 中野湧仁. All rights reserved.
//

import GitHub
import RxSwift

protocol SearchUserModelProtocol {
    func fetchUser(query: String) -> Observable<[User]>
}

final class SearchUserModel: SearchUserModelProtocol {
    let session = Session()
    
    func fetchUser(query: String) -> Observable<[User]> {
        
    }
}
