
import UIKit

protocol ResultDetailView: class {
    
}

final class ResultDetailViewController: UIViewController, ResultDetailView {

    private var presenter: ResultDetailPresenter!
    
    init(userItem: UserItem) {
        presenter = ItemDetailViewPresenter(userItem: userItem)
        super.init(nibName: ResultDetailViewController.className, bundle: nil)
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
