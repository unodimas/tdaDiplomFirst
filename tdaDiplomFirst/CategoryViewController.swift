import UIKit
import Alamofire
import AlamofireImage
import DeveloperToolsSupport


var currentCategorySubcategoriesInclude: NSArray = []

class ViewController: UIViewController {
    
    @IBOutlet weak var CategoryTableView: UITableView!
    var category: [NSDictionary] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        CatalogDataLoader().loadCategory{category in
            self.category = category
            self.CategoryTableView.reloadData()
        }
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return category.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell") as! CategoryTableViewCell
        
        let category = category[indexPath.row]
        let categoryNameActual = category["name"]! as! String
        cell.categoryNameLabel.text = categoryNameActual
        
        let categoryIcon = category["iconImage"]! as! String
        let categoryIconURL = URL(string: "https://blackstarshop.ru/\(categoryIcon)")
        cell.categoryIcon.af.setImage(withURL: categoryIconURL!)
        
        return cell
    }
    

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        currentCategorySubcategoriesInclude = category[indexPath.item]["subcategories"] as! NSArray
//        print (currentCategorySubcategoriesInclude)
//        print (currentCategorySubcategoriesInclude.count)
        self.performSegue(withIdentifier: "CollectionViewController", sender: self)
}

}
