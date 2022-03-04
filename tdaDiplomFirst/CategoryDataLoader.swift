
import Foundation
import Alamofire

class CatalogDataLoader{    
    
    func loadCategory(completion: @escaping ([NSDictionary])->Void) {
        AF.request("https://blackstarshop.ru/index.php?route=api/v1/categories").responseJSON{response in
            if let objects = try? response.result.get(),
               let jsonDict = objects as? NSDictionary{
                var category: [NSDictionary] = []
                for (_ , data) in jsonDict where data is NSDictionary{
                category.append(data as! NSDictionary)
                }
                DispatchQueue.main.async {
                    completion(category)
                }
            }
        }
    }
}
