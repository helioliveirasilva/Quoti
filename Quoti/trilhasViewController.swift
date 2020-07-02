import UIKit

class TrilhasViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    
    @IBOutlet weak var trilhasTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        trilhasTableView.dataSource = self
        trilhasTableView.delegate = self

    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        lugaresArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = trilhasTableView.dequeueReusableCell(withIdentifier: "trilhasCell") as! trilhasTableViewCell
        cell.tituloCell.text = trilhasArray[indexPath.row].nome
        cell.distanciaCell.text = trilhasArray[indexPath.row].distancia
        cell.descricaoCell.text = trilhasArray[indexPath.row].descricao
        cell.trilhaImagemCell.image = trilhasArray[indexPath.row].imagem
        
        //arredondado
        cell.trilhaViewCell.layer.cornerRadius = 13
        cell.trilhaImagemCell.layer.cornerRadius = 13
        cell.trilhaImagemCell.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner]
        
        // sombra
        cell.trilhaViewCell.layer.shadowColor = UIColor.black.cgColor
        cell.trilhaViewCell.layer.shadowOpacity = 0.1
        cell.trilhaViewCell.layer.shadowOffset = .zero
        cell.trilhaViewCell.layer.shadowRadius = 50
        
        
       return cell
        
    }
    
    

}
