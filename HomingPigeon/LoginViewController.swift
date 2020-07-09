import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    //    override func viewDidLoad() {
//        <#code#>
//    }
    
    
    @IBOutlet weak var loginActivityIndic: UIActivityIndicatorView!
    @IBAction func onLoginPressed(_ sender: Any) {
       print("loginpressed")
    }
    override func viewDidAppear(_ animated: Bool) {
        usernameTextField.becomeFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        performLogin()
        
        return true
    }
    
    func performLogin(){
        loginButton.isHidden = true
        loginActivityIndic.isHidden = false
        performSegue(withIdentifier: "chatRoom", sender: nil)
    }
    
}
