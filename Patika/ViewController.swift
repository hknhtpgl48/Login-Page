import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var activityIndicatorView: UIActivityIndicatorView!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        errorLabel.isHidden = true
    }
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        if usernameTextField.text == "hakan", passwordTextField.isHidden {
            passwordTextField.isHidden = false
            errorLabel.isHidden = true
        } else {
            if usernameTextField.text != "hakan" {
                errorLabel.text = "Kullanıcı Adı Yanlış"
                errorLabel.isHidden = false
            } else if !(passwordTextField.isHidden), passwordTextField.text == "123456" {
                errorLabel.isHidden = true
                activityIndicatorView.startAnimating()
            } else {
                errorLabel.text = "Şifre Yanlış"
                errorLabel.isHidden = false
            }
        }
        
    }
}

