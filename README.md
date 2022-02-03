# Trace

Get geocode, calling code, etc. from 1.1.1.1 trace info.

Requires Apple operating systems released in WWDC21 and later.

## Usage Examples

```swift
await Trace.ip
```
Returns `Optional("207.38.1.1")`

```swift
await Trace.geocode
```
Returns `Optional("US")`

```swift
await Trace.callingCodes
``` 
Returns `["1"]`\
Or `["1809","1829","1849"]` (Can be multiple codes for geocode like "DO")\
Or `[]` (Can be empty if no result is found)

```swift
await Trace.primaryCallingCode
```
Returns `Optional("1")`

```swift
await Trace.time
```
Returns `Optional(2022-02-03 17:33:40 +0000)` (The time at which the request is received)
