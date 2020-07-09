import UIKit

class ChatBotViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!

         let message = messages[indexPath.row]

         let senderLabel = cell.viewWithTag(1) as! UILabel

         let contentLabel = cell.viewWithTag(2) as! UILabel

        
         senderLabel.text = message.senderName

         contentLabel.text = message.content

         return cell
    }
    

    @IBOutlet weak var tableView: UITableView!
    
    var messages: [MessageModel] = []
    
    override func viewDidLoad() {
        
        tableView.delegate = self
        tableView.dataSource = self
        
        for i in 1...100 {
            messages.append(MessageModel(sender: "Sender Test", message: "This is the message id\(i)"))
        }
        // Do any additional setup after loading the view.
    }
    
//    func tableView(


}

