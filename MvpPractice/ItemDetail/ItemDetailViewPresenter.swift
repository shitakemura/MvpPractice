
import Foundation

protocol ItemDetailPresenter: class {
    weak var view: ItemDetailView? { get set }
    var title: String { get }
}

final class ItemDetailViewPresenter: ItemDetailPresenter {
    weak var view: ItemDetailView?
    private let userItem: UserItem
    var title: String {
        return userItem.name
    }
    
    init(userItem: UserItem) {
        self.userItem = userItem
    }
}
