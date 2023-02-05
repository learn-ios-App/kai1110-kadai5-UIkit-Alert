
import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var numberField1: UITextField!
    @IBOutlet private weak var numberField2: UITextField!
    @IBOutlet private weak var numberLabel: UILabel!
    private var result: Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        upData()
    }

    @IBAction private func calclation(_ sender: Any) {
        if numberField1.text == "" {
            errorAlert(message: "割る数に値を入力してください")
            return
        }
        else if numberField2.text == "" {
            errorAlert(message: "割られる数に値を入力してください")
            return
        }
        
        let number1: Float = Float(numberField1.text ?? "") ?? 0
        let number2: Float = Float(numberField2.text ?? "") ?? 0
        
        if number2 == 0 {
            errorAlert(message: "割るかずには0以外を入力してください")
            return
        }
        
        result = number1 / number2
        upData()
    }
    
    //アラートの作成
    private func errorAlert(message: String) {
        //警告メッセージの作成
        let alert = UIAlertController(
            title: "課題5",
            message: message,
            preferredStyle: .alert
        )
        //OKボタンの作成
        let alertButton = UIAlertAction(title: "OK", style: .default, handler: nil)
        //警告メッセージにOKボタンを追加
        alert.addAction(alertButton)
        
        //アラートの呼び出し
        present(alert, animated: true)
    }
    
    private func upData() {
        numberLabel.text = String(result)
    }
}

