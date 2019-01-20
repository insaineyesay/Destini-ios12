//
//  StoryConstant
//  Destini
//
//  Created by Michael Agee on 1/20/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

struct Story {
    let story, answer1, answer2: String?
    let answer1Path, answer2Path: Int?
    
    init(story: String, answer1: String?, answer1Path: Int?, answer2: String?, answer2Path: Int?) {
        self.story = story
        self.answer1 = answer1
        self.answer1Path = answer2Path
        self.answer2 = answer2
        self.answer2Path = answer2Path!
    }
}
