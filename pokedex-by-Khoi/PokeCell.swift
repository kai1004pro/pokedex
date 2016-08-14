//
//  PokeCell.swift
//  pokedex-by-Khoi
//
//  Created by Khoi Nguyen on 8/13/16.
//  Copyright © 2016 Khoi Nguyen. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        
        layer.cornerRadius = 5.0
        
    }
    
    var pokemon: Pokemon!
    
    
    func configureCell(pokemon: Pokemon) {
        self.pokemon = pokemon
        
        
        nameLbl.text = self.pokemon.name.capitalizedString
        thumbImg.image = UIImage(named: "\(self.pokemon.pokedexId)")
    }
}
