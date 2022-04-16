//
//  PhotoSliderView.swift
//  SlideGalleryController
//
//  Created by Student G225 08 on 11/04/2022.
//

import UIKit
class PhotoSliderView: UIView {
@IBOutlet var contentView: UIView!
@IBOutlet var scrollView: UIScrollView!
@IBOutlet var pageControl: UIPageControl!
func configure(with images: [UIImage]) {
let scrollViewWidth: CGFloat = scrollView.frame.width
let scrollViewHeight: CGFloat = scrollView.frame.height
for (index, image) in images.enumerated() {
let imageView = UIImageView(frame: CGRect(x: scrollViewWidth * CGFloat(index),
y: 0,
width: scrollViewWidth, height: scrollViewHeight))
imageView.image = image
imageView.contentMode = .scaleAspectFill
imageView.clipsToBounds = true
scrollView.addSubview(imageView)
}
scrollView.contentSize = CGSize(width: scrollView.frame.width * CGFloat(images.count), height: scrollView.frame.height)
pageControl.numberOfPages = images.count }
override init(frame: CGRect) { super.init(frame: frame)
commonInit()
}
required init?(coder aDecoder: NSCoder) { super.init(coder: aDecoder)
commonInit()
}
private func commonInit() { Bundle.main.loadNibNamed(String(describing:
PhotoSliderView.self),
owner:
self,
options: nil)
addSubview(contentView)
contentView.frame = self.bounds
contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
}
@IBAction func pageControlTap(_ sender: Any?) {
guard let pageControl: UIPageControl = sender as? UIPageControl else {
return }
scrollToIndex(index: pageControl.currentPage) }
private func scrollToIndex(index: Int) {
let pageWidth: CGFloat = scrollView.frame.width
let slideToX: CGFloat = CGFloat(index) * pageWidth

scrollView.scrollRectToVisible(CGRect(x: slideToX, y:0, width:pageWidth, height:scrollView.frame.height), animated: true)
} }
extension PhotoSliderView: UIScrollViewDelegate {
func scrollViewDidEndDecelerating(_ scrollView: UIScrollView){
let pageWidth:CGFloat = scrollView.frame.width
let currentPage:CGFloat = floor((scrollView.contentOffset.x - pageWidth/2)/pageWidth)+1
    pageControl.currentPage = Int(currentPage)
} }
