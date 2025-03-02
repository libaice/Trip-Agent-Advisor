// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

enum SessionStatus {
    Init,
    Pending,
    Running,
    Finished,
    Revert
}

struct CallbackSession {
    string endpoint;
    address publicKey;
    SessionStatus status;
}

interface APPInterface {
    // Called by the Outpost when a session is successfully created
    // sessionId: Unique session identifier
    // session: A struct containing endpoint, address, and session status
    function callbackSession(uint256 sessionId, CallbackSession memory session) external;

    // Called by the Outpost when a session ends
    // sessionId: Unique session identifier
    // isRevert: Indicates if the session was successful
    // data: Encoded final result from Sparsity Network
    function callbackSettlement(uint256 sessionId, bool isRevert, bytes memory data) external;
}

contract TripAgent is APPInterface {
    function callbackSession(uint256 sessionId, CallbackSession memory session) public {
        
    }

    function callbackSettlement(uint256 sessionId, bool isRevert, bytes memory data) public {}
}
