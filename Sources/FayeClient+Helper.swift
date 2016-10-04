//
//  FayeClient+Helper.swift
//  Pods
//
//  Created by Shams Ahmed on 19/07/2016.
//
//

import Foundation

public extension FayeClient {
    
    // MARK: Helper
    
    ///  Validate whatever a subscription has been subscribed correctly 
    public func isSubscribedToChannel(channel:String) -> Bool {
        // subscribed channels could be using **
        for model : FayeSubscriptionModel in self.openSubscriptions {
            if channel.containsString(model.subscription.stringByReplacingOccurrencesOfString("**", withString: "")) {
                return true
            }
        }
        return false
    }
    
    ///  Validate faye transport is connected
    public func isTransportConnected() -> Bool {
        return self.transport!.isConnected()
    }
}
