//
//  PhotoSliderViewController.swift
//  SlideGalleryController
//
//  Created by Student G225 08 on 11/04/2022.
//
import UIKit
class PhotoSliderViewController: UIViewController {
@IBOutlet var photoSliderView: PhotoSliderView!
override func viewDidAppear(_ animated: Bool) { super.viewDidAppear(animated)
let images: [UIImage] = [UIImage(named: "image1")!, UIImage(named: "image2")!,
UIImage(named: "image3")!]
photoSliderView.configure(with: images) }
}
