
import Foundation

class MessageModel {
    
    var senderName: String
    var content: String
    
    init(sender senderName: String, message content: String) {
        self.senderName = senderName
        self.content = content
    }
    
}
