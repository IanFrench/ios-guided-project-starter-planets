//
//  PlanetsCollectionViewController.swift
//  Planets
//
//  Created by Ian French on 4/29/20.
//  Copyright © 2020 Lambda Inc. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class PlanetsCollectionViewController: UICollectionViewController {

let planetController = PlanetController()
    



    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       
        return planetController.planets.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PlanetCell", for: indexPath) as? PlanetCollectionViewCell else {
            return UICollectionViewCell() }
    
        let planet = planetController.planets[indexPath.item]
        cell.planetImageView.image = planet.image
        cell.planetLabel.text = planet.name
        
        
        
        
        return cell
    }

    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    
    
  }
} // end of class
