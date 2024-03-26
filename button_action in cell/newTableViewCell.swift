//
//  newTableViewCell.swift
//  button_action in cell
//
//  Created by Karthiga on 14/03/24.
//

import UIKit

protocol newTableViewCellDelegate : AnyObject{
    func DidTapButton(with title:String)
}

class newTableViewCell: UITableViewCell {
    weak var delegate: newTableViewCellDelegate?

    static let identifier = "newTableViewCell"
    static func nib() -> UINib{
        return UINib(nibName: "newTableViewCell", bundle: nil)
    }
    
    @IBOutlet var button:UIButton!
    private var  title: String =  ""
    @IBAction func DidTapButton(){
        
        delegate?.DidTapButton(with: title)
    }
    func configure(with title:String){
        self.title = title
        button.setTitle(title, for: .normal)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        button.setTitleColor(.link, for: .normal)
    }
}
