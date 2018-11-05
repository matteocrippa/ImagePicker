import UIKit

class ImageGalleryLayout: UICollectionViewFlowLayout {

  override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
    guard let attributes = super.layoutAttributesForElements(in: rect) else {
      return super.layoutAttributesForElements(in: rect)
    }

    var newAttributes = [UICollectionViewLayoutAttributes]()
    for attribute in attributes {
      let name = attribute.copy() as! UICollectionViewLayoutAttributes
      name.transform = Helper.rotationTransform()
      newAttributes.append(name)
    }

    return newAttributes
  }
}
