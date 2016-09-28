//
//  MovieCastDetailViewController.swift
//  Tableviews_Part_3
//
//  Created by Eric Chang on 9/28/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class MovieCastDetailViewController: UIViewController {
  @IBOutlet weak var castTitleLabel: UILabel!
  @IBOutlet weak var castListLabel: UILabel!
    internal var selectedMovie: Movie!

    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews(for: selectedMovie)
    }

    internal func updateViews(for movie: Movie) {
        self.castTitleLabel.text = "Cast List: "
        
        var cast = ""
        for actor in movie.cast {
            cast.append(actor.firstName + " " + actor.lastName + "\n")
        }
        self.castListLabel.text = cast
        self.title = movie.title
    }

}
