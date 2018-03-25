
import Foundation

protocol UserItemPresenter: class {
    var title: String { get }
    var numberOfItems: Int { get }
    func fetchUserItems()
    func userItem(at index: Int) -> UserItem
    func showUserItem(at index: Int)
}

final class UserItemViewPresenter: UserItemPresenter {
    private weak var view: UserItemView?
    private var userItems: [UserItem] = [] {
        didSet {
            view?.reloadData()
        }
    }
    
    init(view: UserItemView) {
        self.view = view
        fetchUserItems()
    }
    
    var title: String {
        return "UserItem"
    }
    
    var numberOfItems: Int {
        return userItems.count
    }
    
    func fetchUserItems() {
        userItems = [UserItem(name: "Item1"), UserItem(name: "Item2")]
    }
    
    func userItem(at index: Int) -> UserItem {
        return userItems[index]
    }
    
    func showUserItem(at index: Int) {
        let userItem = userItems[index]
        view?.show(userItem: userItem)
    }
}
