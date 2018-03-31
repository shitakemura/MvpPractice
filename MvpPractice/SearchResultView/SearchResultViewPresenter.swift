
import Foundation

protocol SearchResultPresenter: class {
    var title: String { get }
    var numberOfItems: Int { get }
    func fetchUserItems()
    func userItem(at index: Int) -> UserItem
    func showUserItem(at index: Int)
}

final class SearchResultViewPresenter: SearchResultPresenter {
    private weak var view: SearchResultView?
    private var userItems: [UserItem] = [] {
        didSet {
            view?.reloadData()
        }
    }
    
    init(view: SearchResultView) {
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
