# Hack Technology / Project Attempted


## What you built? 

This week, I pitched a "Find my Friends" variant that uses wifi BSSIDs to provide the room name of the friend, rather than just a dot on a map. For my last hack-a-thing, I played around with BSSID identification on mac. For this one, I implemented BSSID identification on IOS as a proof of concept for my pitch idea.  
  
The app is quite simple. It has one view, with a label and a refresh button. When you click the button, the label is updated with the BSSID of the router you are currently connected to. The app also requests location permission from the user, as the IOS 13 security updated requires apps to request location services permission for viewing BSSID details. This is likely a result of this exact idea that I'm implementing, which allows one to determine location based solely on BSSID. A working example of the app is shown below.

![App Example](example.jpeg "App Example")

## Who Did What?

Scott Crawshaw worked on this alone.

## What you learned

First off, I re-learned a great deal about IOS development. It has been years since I last did anything with IOS development, so I wanted to use this project as an oppurtunity to brush off the rust a bit. I re-remembered how to make constraints, link buttons to actions, write code in swift, and much more.  
  
I was also able to prove that it is possible to get the bssid of the connected network. This is very useful to know, as my proposed project is formed around that concept. I was worried going into it, because recent security updates made a ton of wifi information features inaccessible, but I figured out that you could make it work by requesting precise location services from the user. This took a while to get sorted out, but was rewarding once it finally worked.

## Authors

Scott Crawshaw.

## Acknowledgments

The following tutorials were consulted for various aspects of the code. They are cited in the code when relevant.  
https://www.ralfebert.de/ios/beginner-tutorials/iphone-app-xcode/  
https://www.hackingwithswift.com/read/22/2/requesting-location-core-location  
https://blog.appnation.co/how-to-access-wifi-ssid-on-ios-13-using-swift-40c4bba3c81d