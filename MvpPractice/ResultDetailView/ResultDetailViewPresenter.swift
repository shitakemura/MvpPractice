
import Foundation

protocol ResultDetailPresenter: class {
    weak var view: ResultDetailView? { get set }
    var title: String { get }
}

final class ItemDetailViewPresenter: ResultDetailPresenter {
    weak var view: ResultDetailView?
    private let userItem: UserItem
    var title: String {
        return userItem.name
    }
    
    init(userItem: UserItem) {
        self.userItem = userItem
    }
}
