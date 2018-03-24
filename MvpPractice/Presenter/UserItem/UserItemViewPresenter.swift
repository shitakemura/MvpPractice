
import Foundation

protocol UserItemPresenter: class {
    func fetchUserItems()
    var numberOfItems: Int { get }
    func userItem(at index: Int) -> UserItem
}

final class UserItemViewPresenter: UserItemPresenter {
    private var view: UserItemView
    private var userItems: [UserItem] = [] {
        didSet {
            view.reloadData()
        }
    }
    
    init(view: UserItemView) {
        self.view = view
        fetchUserItems()
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
}
