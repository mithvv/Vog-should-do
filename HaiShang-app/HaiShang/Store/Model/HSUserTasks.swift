//
//  NSUserTasks.swift
//  HaiShang
//
//  Created by mAir on 20/3/15.
//  Copyright (c) 2015 mithvv. All rights reserved.
//

enum HSTaskStatus {
    case undone
    case done
    case invaild
}

class HSUserTasks: AVObject {

    var userProject         : HSUserProjects?

    var status              : HSTaskStatus?
}
