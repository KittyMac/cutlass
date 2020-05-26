//
//  RenderUnit.swift
//  Cutlass
//
//  Created by Rocco Bowling on 5/19/20.
//  Copyright © 2020 Rocco Bowling. All rights reserved.
//

import Foundation
import MetalKit
import GLKit
import simd
import Flynn

// Immutable state provided to actors.
// RenderFrameContext is immutable state for the entire render frame
// ViewFrameContext is immutable state per view

public struct RenderFrameContext {
    let renderer:Renderer
    let metalLayer:CAMetalLayer
    let pointSize:CGSize
    let pixelSize:CGSize
    let frameNumber:Int64
    let view:ViewFrameContext
    
    func clone(_ view:ViewFrameContext) -> RenderFrameContext {
        return RenderFrameContext(renderer: renderer,
                                  metalLayer: metalLayer,
                                  pointSize: pointSize,
                                  pixelSize: pixelSize,
                                  frameNumber: frameNumber,
                                  view: view)
    }
}

public struct ViewFrameContext {
    let matrix:GLKMatrix4
    let bounds:GLKVector4
    let renderNumber:Int64
}
