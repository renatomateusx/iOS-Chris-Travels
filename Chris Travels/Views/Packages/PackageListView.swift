//
//  PackageListView.swift
//  Chris Travels
//
//  Created by Renato Mateus on 04/02/21.
//

import SwiftUI

struct PackageListView: View {
    
    //MARK: Attribute
    
    var categories: [String: [TravelPackage]]{
        Dictionary(grouping: packageTravels, by: {$0.category.rawValue})
    }
        
    var body: some View {
        NavigationView {
            List{
                ForEach(categories.keys.sorted(), id: \.self){  key in
                    PackageSectionView(sectionName: key, packages: self.categories[key]!)
                }
            }
            .navigationBarTitle("Packages")
            .padding(.leading, -10)
            .padding(.trailing, -10)
        }
        .onAppear {
            UITableView.appearance().separatorStyle = .none
            UITableView.appearance().backgroundColor = UIColor(red: 247.0/255, green: 247.0/255, blue: 247.0/255, alpha: 1)
            UITableViewCell.appearance().backgroundColor = UIColor(red: 247.0/255, green: 247.0/255, blue: 247.0/255, alpha: 1)
            UINavigationBar.appearance().backgroundColor = UIColor(red: 247.0/255, green: 247.0/255, blue: 247.0/255, alpha: 1)
        }
        .onDisappear{
            UITableView.appearance().separatorStyle = .singleLine
            UITableView.appearance().backgroundColor = nil
            UITableViewCell.appearance().backgroundColor = nil
            UINavigationBar.appearance().backgroundColor = nil
        }
    }
}

struct PackageListView_Previews: PreviewProvider {
    static var previews: some View {
        PackageListView()
    }
}
