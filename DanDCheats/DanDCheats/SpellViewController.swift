

import UIKit
import SwiftUI


class SpellViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let url = "https://www.dnd5eapi.co/api/spells/"
            getData(from: url)
                }
    
    @IBOutlet weak var tableView: UITableView!
    func getData(from url: String){
        let task = URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: { data, response, error in
            
            guard let data = data, error == nil else{
                print("oups il y a un pb...")
                return
                }
            //have data
            var result: Response?
            do{
                result = try JSONDecoder().decode(Response.self, from: data)
            }
            catch{
                print("echec convertion des données\(error.localizedDescription)")
            }
            guard let json = result else{
                return
            }
            print(json.results.index)
        })
        task.resume()
}
    struct Response: Codable{
        let results: MyResult
        let status: String
}
    struct MyResult: Codable{
        let index: String
    }
    
}
