
import UIKit

class ViewController: UIViewController {
    
    var name:String = ""
    var age_string: String = ""
    var age:Int = 0
    var children_count = 0
    let numbers = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

    @IBOutlet weak var int_to_slider: UILabel!
    @IBAction func self_name_entry(_ sender: UITextField) {
        var name_has_numbers = false
        name = sender.text!
        for i in numbers {
            if(name.contains(i)) {
                name_has_numbers = true
            }
        }
        
        if (name == "" || name_has_numbers == true) {
            wrong_name_label.isHidden = false
        }
        else {
            wrong_name_label.isHidden = true
        }
    }
    @IBAction func self_age_entry(_ sender: UITextField) {
        age_string = sender.text!
        age = Int(age_string) ?? 0
        if (age <= 0 || age >= 100){
            wrong_age_label.isHidden = false
        }
        else{
            wrong_age_label.isHidden = true
        }
    }
    @IBOutlet weak var wrong_name_label: UILabel!
    @IBOutlet weak var wrong_age_label: UILabel!
    @IBOutlet weak var wrong_name_child1: UILabel!
    @IBOutlet weak var wrong_name_child2: UILabel!
    @IBOutlet weak var wrong_name_child3: UILabel!
    @IBOutlet weak var wrong_name_child4: UILabel!
    @IBAction func children_count_slider(_ sender: UISlider) {
                
        children_count = Int(sender.value)
        
        int_to_slider.text = "\(children_count)"
        
        if(children_count < 1) {
            children_names_text.isHidden = true
            children_names_entry.isHidden = true
        }
        else {
            children_names_text.isHidden = false
            children_names_entry.isHidden = false
        }
    }
    
    @IBOutlet weak var children_names_text: UILabel!
    
    @IBOutlet weak var children_names_entry: UITextField!
    
    @IBAction func data_button(_ sender: UIButton) {
        print("Nombre:", name)
        print("Edad:", age)
    }
}
