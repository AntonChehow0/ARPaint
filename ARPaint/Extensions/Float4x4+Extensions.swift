//
//  Float4x4+Extensions.swift
//
//  Created by Vitaliy Musonov
//

import SceneKit

extension float4x4 {
    func convertToSCNVector3() -> SCNVector3 {
        return SCNVector3Make(self.columns.3.x,
                              self.columns.3.y,
                              self.columns.3.z)
    }
}
