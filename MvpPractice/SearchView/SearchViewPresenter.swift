
import Foundation

protocol SearchPresenter: class {
    var title: String { get }
    func showUserItem()
}

final class SearchViewPresenter: SearchPresenter {
    private weak var view: SearchView?
    var title: String {
        return "Top"
    }
    init(view: SearchView) {
        self.view = view
    }
    func showUserItem() {
        view?.showUserItem()
    }
}
