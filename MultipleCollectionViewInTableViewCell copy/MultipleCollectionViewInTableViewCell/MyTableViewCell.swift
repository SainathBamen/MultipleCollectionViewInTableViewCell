//
//  MyTableViewCell.swift
//  MultipleCollectionViewInTableViewCell
//
//  Created by Sainath Bamen on 21/04/23.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var myCollectionView2: UICollectionView!
    @IBOutlet weak var myCollectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}

extension MyTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.myCollectionView{
                      return data.count
                }else{
                      return data2.count
                }
            }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectioncell", for: indexPath)


        return cell
    }
    
  
   
    }

    
    

