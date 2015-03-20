//
//  HSProject.swift
//  HaiShang
//
//  Created by mAir on 20/3/15.
//  Copyright (c) 2015 mithvv. All rights reserved.
//

enum HSProjectType {
    case defaultType
    case userPrivate
    case recommend
}


class HSProject: AVObject {

    
    var name            : String?
    var type            : String?
    var createdUser     : HSUser?
}
