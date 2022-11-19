//
//  TableCell.swift
//  kr
//
//  Created by Rafael Shamsutdinov on 19.11.2022.
//

import UIKit

class TableCell: UITableViewCell {
    private let userName : UILabel = .init()
    private let posts : UILabel = .init()
    private let following : UILabel = .init()
    private let folowers : UILabel = .init()
    private let status : UILabel = .init()
    private let avatar : UIImageView! = .init()
    private func setup(){
        userName.font = .boldSystemFont(ofSize: 20)
    }
    public func loadImage(url: URL) async {
            avatar.image = nil
            let urlRequest = URLRequest(
                url: url,
                cachePolicy: .reloadIgnoringLocalAndRemoteCacheData
            )
            do {
                let (data, _) = try await URLSession.shared.data(for: urlRequest)
                guard !Task.isCancelled else { return }
                avatar.image = UIImage(data: data)
            } catch {
                print("could not load image")
            }
        }
}
extension TableCell {
    func createLayout() -> UICollectionViewLayout {
        let headerItem = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0)))
        let headerGroup = NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(0.3)), subitems: [headerItem])
        let headerSection = NSCollectionLayoutSection(group: headerGroup)

        return UICollectionViewCompositionalLayout { (index, environment) -> NSCollectionLayoutSection? in
            return headerSection
        }
    }
    func createHumansSection() -> NSCollectionLayoutSection {
        let item = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.2), heightDimension: .fractionalWidth(0.22)))
        item.contentInsets = .init()
        
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.9), heightDimension: .estimated(100)), subitem: item, count: 4)
        
        let section = NSCollectionLayoutSection(group: group)
        section.contentInsets = .init(top: 0, leading: 10, bottom: 20, trailing: 0)
        section.orthogonalScrollingBehavior = .continuous
        
        return section
    }
    func didSelect(data: Account, at indexPath: IndexPath) {
        userName.text = data.user.name
        posts.text = String(data.user.posts)
        folowers.text = String(data.user.followers)
        following.text = String(data.user.following)
        status.text = String(data.user.status)
        avatar.image = loadImage(url: URL(string: data.user.avatar))
    }
}

