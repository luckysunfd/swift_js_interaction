//
//  DeviceInfo.swift
//  jscore_swift_end
//
//  Created by sun on 19/3/23.
//

import Foundation
import JavaScriptCore

@objc protocol DeviceInfoJSExport: JSExport {
  var model: String { get set }

  static func CreateDeviceInfo(withModel: String) -> DeviceInfo
}

class DeviceInfo: NSObject, DeviceInfoJSExport {
  dynamic var model: String

  init(withModel: String) {
    self.model = withModel
  }

  class func CreateDeviceInfo(withModel: String) -> DeviceInfo {
    return DeviceInfo(withModel: withModel)
  }
}
