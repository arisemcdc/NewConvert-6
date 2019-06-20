import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    var cryptoCurrencies:[String] = []
    var activeCurrency: Double = 0
    var prices: [Double] = []
    var selectedRow: Int = 0
    var json: JSON? = nil
    
    @IBOutlet weak var pair: UILabel!
    @IBOutlet weak var result: UILabel!
    //    @IBOutlet weak var pickerView: UIPickerView!
    //    @IBOutlet weak var outputLabel: UILabel!
    //    @IBOutlet weak var result: UILabel!
    //    @IBOutlet weak var number: UITextField!
    //    @IBOutlet weak var pair: UILabel!
    //    @IBOutlet weak var pairResult: UILabel!
    var responseModel: Json4Swift_Base!
    @IBAction func outputPrice(_ sender: Any) {
//        var res:Double = Double(number.text!)! * prices[selectedRow]
//        result.text = "\(res)"
//        pair.text = "\(cryptoCurrencies[selectedRow])" + "/USD"
//        var resPair:Double = prices[selectedRow] / prices[0]
//        pairResult.text = "\(resPair)"
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return cryptoCurrencies.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return cryptoCurrencies[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        outputLabel.text = String(prices[row])
        selectedRow = row
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        pickerView.dataSource = self
//        pickerView.delegate = self
        let url = "https://api.cryptoapis.io/v1/assets"
        let headers: HTTPHeaders = [
            "X-API-Key": "7745061e0e5788eb2ed99d6c6ccf6aab2041f43e",
            ////            "Content-Type:": "application/json"
        ]
        Alamofire.request(url, headers: headers).validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                self.json = JSON(value)
                print("JSON: \(self.json)")
                for (_, value) in self.json!["payload"] {
                    self.cryptoCurrencies.append(value["name"].stringValue)
//                    self.pickerView.reloadAllComponents()
                    self.prices.append(value["price"].doubleValue)
                }
            case .failure(let error):
                print(error)
            }
        }
    }
    
}

