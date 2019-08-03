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
        return Observable.create { [weak self] observer in
            let request = SearchUsersRequest(query: query, sort: nil, order: nil, page: nil, perPage: nil)
            let task = self?.session.send(request) { result in
                switch result {
                case .success(let response):
                    observer.onNext(response.0.items)
                    observer.onCompleted()
                case .failure(let error):
                    observer.onError(error)
                }
            }
            // 開放時に実行すべき処理や関連したdisposableなどある場合は、別途指定する必要がある
            return Disposables.create {
                task?.cancel()
            }
        }
    }
}
