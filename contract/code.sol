// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExperimentalResults {
    struct Result {
        string data;
        bytes32 dataHash;
        uint256 timestamp;
    }

    mapping(uint256 => Result) public results;
    uint256 public resultCount;

    event ResultLogged(uint256 indexed resultId, string data, bytes32 dataHash);

    function logResult(string memory _data) public {
        bytes32 dataHash = keccak256(abi.encodePacked(_data));
        resultCount++;
        results[resultCount] = Result(_data, dataHash, block.timestamp);
        emit ResultLogged(resultCount, _data, dataHash);
    }

    function getResult(uint256 _resultId) public view returns (string memory, bytes32, uint256) {
        Result memory result = results[_resultId];
        return (result.data, result.dataHash, result.timestamp);
    }
}
