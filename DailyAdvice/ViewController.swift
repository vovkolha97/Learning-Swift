import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Labe: UILabel!
    @IBOutlet weak var b: UIButton!
    @IBAction func Butt(_ sender: Any) {
        
        disableBtn()
        
        Timer.scheduledTimer(withTimeInterval: 10, repeats: true) { timer in
            self.enableBtn()
        }
        
        var index = Int.random(in: 0..<array.count)
        
        while(true){
            if(Labe.text != array[index]){
                break
            } else{
                index = Int.random(in: 0..<array.count)
            }
        }
        
        Labe.text = array[index]
    }
    
    var array = ["take a break", "work hard", "read book", "go for a walk", "don't die", "don't forget about your friends","drink more water", "watch a comedy", "call to old friend", "take a bath with foam", "remember - everything is possible", "clean your desk", "don't eat alone", "take care of your shoes", "praise yourself"]
    
    private func disableBtn() {
        b.isEnabled = false
        b.backgroundColor = .red
    }
    
    private func enableBtn() {
        
        self.b.isEnabled = true
        self.b.backgroundColor = .white
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}
