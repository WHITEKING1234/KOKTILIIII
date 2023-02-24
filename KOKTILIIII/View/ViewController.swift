
import UIKit

class ViewController: UIViewController {
    
    
    
    
    
    
    private let viewmodel : MainViewModelType = MainViewModel()
    
    @IBOutlet weak var CollectionView: UICollectionView!
    
    
   
    
    
    
    
    private var array: [Drinks] = [] {
        didSet {
            DispatchQueue.main.async {
                self.CollectionView.reloadData()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        feth()
        CollectionView.layer.cornerRadius = 50
//        DataBaseManeger.shared.Setto(collection: "Kokteli", document: "Klient", with: ["Drink":4])
    }
    
    private func setup() {
        CollectionView.register(UINib(nibName: KokoCollectinViewCell.reid, bundle: nil) ,forCellWithReuseIdentifier: KokoCollectinViewCell.reid)
        CollectionView.dataSource = self
        CollectionView.delegate = self
    }
    
    private func feth() {
        Task {
            do {
                let drink = try await viewmodel.fentDrink()
                self.array = drink.drinks
            } catch {
                print(error.localizedDescription)
            }
        }
    }
}

extension ViewController:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: KokoCollectinViewCell.reid, for: indexPath)as! KokoCollectinViewCell
        let kok = array[indexPath.row]
        cell.DisplayInfo(koktil: kok)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "InfoView") as! InfoView
        let model = array[indexPath.row]
        vc.dish = model
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension ViewController :UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 180, height: 200)
    }
}

