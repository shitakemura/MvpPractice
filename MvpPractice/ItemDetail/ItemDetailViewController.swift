
import UIKit

protocol ItemDetailView: class {
    
}

final class ItemDetailViewController: UIViewController, ItemDetailView {

    private var presenter: ItemDetailPresenter!
    
    init(userItem: UserItem) {
        presenter = ItemDetailViewPresenter(userItem: userItem)
        super.init(nibName: ItemDetailViewController.className, bundle: nil)
        presenter.view = self
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = presenter.title
    }
}
