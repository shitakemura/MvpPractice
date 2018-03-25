
import Foundation

protocol TopPresenter: class {
    var title: String { get }
    func showUserItem()
}

final class TopViewPresenter: TopPresenter {
    private weak var view: TopView?
    var title: String {
        return "Top"
    }
    init(view: TopView) {
        self.view = view
    }
    func showUserItem() {
        view?.showUserItem()
    }
}
