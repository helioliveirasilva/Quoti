import UIKit

class SalvosViewController: UIViewController {
   
    // Aqui estão elementos da interface declarados
    
    @IBOutlet weak var salvosSegControl: UISegmentedControl!
    @IBOutlet weak var salvosSearchBar: UISearchBar!
    @IBOutlet weak var salvosMainView: UIView!
    
    
    // Essa é função do Segmented Control
    
    @IBAction func filtrarSegControl(_ sender: Any) {
        // Se clicar em visitados
        if salvosSegControl.selectedSegmentIndex == 0 {
            
            salvosMainView.backgroundColor = .systemIndigo
            
        }
        
        // Se clicar em Favoritos
        if salvosSegControl.selectedSegmentIndex == 1 {
            
            salvosMainView.backgroundColor = .systemPink
            
        }
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


}
