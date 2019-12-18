//
//  Copyright (C) 2019 Twilio, Inc.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

@testable import VideoApp

class MockAppSettingsStore: AppSettingsStoreWriting {
    var invokedApiEnvironmentSetter = false
    var invokedApiEnvironmentSetterCount = 0
    var invokedApiEnvironment: APIEnvironment?
    var invokedApiEnvironmentList = [APIEnvironment]()
    var invokedApiEnvironmentGetter = false
    var invokedApiEnvironmentGetterCount = 0
    var stubbedApiEnvironment: APIEnvironment!
    var apiEnvironment: APIEnvironment {
        set {
            invokedApiEnvironmentSetter = true
            invokedApiEnvironmentSetterCount += 1
            invokedApiEnvironment = newValue
            invokedApiEnvironmentList.append(newValue)
        }
        get {
            invokedApiEnvironmentGetter = true
            invokedApiEnvironmentGetterCount += 1
            return stubbedApiEnvironment
        }
    }
    var invokedVideoCodecSetter = false
    var invokedVideoCodecSetterCount = 0
    var invokedVideoCodec: VideoCodec?
    var invokedVideoCodecList = [VideoCodec]()
    var invokedVideoCodecGetter = false
    var invokedVideoCodecGetterCount = 0
    var stubbedVideoCodec: VideoCodec!
    var videoCodec: VideoCodec {
        set {
            invokedVideoCodecSetter = true
            invokedVideoCodecSetterCount += 1
            invokedVideoCodec = newValue
            invokedVideoCodecList.append(newValue)
        }
        get {
            invokedVideoCodecGetter = true
            invokedVideoCodecGetterCount += 1
            return stubbedVideoCodec
        }
    }
    var invokedTopologySetter = false
    var invokedTopologySetterCount = 0
    var invokedTopology: Topology?
    var invokedTopologyList = [Topology]()
    var invokedTopologyGetter = false
    var invokedTopologyGetterCount = 0
    var stubbedTopology: Topology!
    var topology: Topology {
        set {
            invokedTopologySetter = true
            invokedTopologySetterCount += 1
            invokedTopology = newValue
            invokedTopologyList.append(newValue)
        }
        get {
            invokedTopologyGetter = true
            invokedTopologyGetterCount += 1
            return stubbedTopology
        }
    }
    var invokedUserIdentitySetter = false
    var invokedUserIdentitySetterCount = 0
    var invokedUserIdentity: String?
    var invokedUserIdentityList = [String]()
    var invokedUserIdentityGetter = false
    var invokedUserIdentityGetterCount = 0
    var stubbedUserIdentity: String! = ""
    var userIdentity: String {
        set {
            invokedUserIdentitySetter = true
            invokedUserIdentitySetterCount += 1
            invokedUserIdentity = newValue
            invokedUserIdentityList.append(newValue)
        }
        get {
            invokedUserIdentityGetter = true
            invokedUserIdentityGetterCount += 1
            return stubbedUserIdentity
        }
    }
    var invokedIsTURNMediaRelayOnSetter = false
    var invokedIsTURNMediaRelayOnSetterCount = 0
    var invokedIsTURNMediaRelayOn: Bool?
    var invokedIsTURNMediaRelayOnList = [Bool]()
    var invokedIsTURNMediaRelayOnGetter = false
    var invokedIsTURNMediaRelayOnGetterCount = 0
    var stubbedIsTURNMediaRelayOn: Bool! = false
    var isTURNMediaRelayOn: Bool {
        set {
            invokedIsTURNMediaRelayOnSetter = true
            invokedIsTURNMediaRelayOnSetterCount += 1
            invokedIsTURNMediaRelayOn = newValue
            invokedIsTURNMediaRelayOnList.append(newValue)
        }
        get {
            invokedIsTURNMediaRelayOnGetter = true
            invokedIsTURNMediaRelayOnGetterCount += 1
            return stubbedIsTURNMediaRelayOn
        }
    }
    var invokedStart = false
    var invokedStartCount = 0
    func start() {
        invokedStart = true
        invokedStartCount += 1
    }
}