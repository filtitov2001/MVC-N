//
//  CommentCell.swift
//  MVC-N
//
//  Created by Felix Titov on 6/13/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import UIKit

class CommentCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    func configure(with comment: Comment) {
        label.text = comment.name
        textView.text = comment.body
    }
}
