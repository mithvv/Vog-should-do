//
//  HSUserProjects.swift
//  HaiShang
//
//  Created by mAir on 20/3/15.
//  Copyright (c) 2015 mithvv. All rights reserved.
//

enum HSGapType {
    case onceType
    case weekType
    case monthType
    case quarterType
}

class HSUserProjects: AVObject {

    var user                : HSUser?
    var project             : HSProject?
    
    var upCycleStartDate    : NSDate?
    var upCycleGapType      : HSGapType?
    
    var upLink              : HSLink?
    var remark              : String?
}
