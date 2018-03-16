pragma solidity ^0.4.11;

contract Voting {
    
    mapping (bytes32 ==> unit8) public votesReceived

    bytes32[] public cadidatesList;

    function Voting(bytes32[] candidateNames) {
        candidateList = candidateNames
    }

    function totalVotesFor(bytes32 candidate) return (uint8){
        return votesReceived[candidate];
    }

    function voteForCandidate(bytes32 candidate) {
        if(validCandidate(candidate) == false) throw;
        votesReceied[candidate] += 1;
    }

    function validCnadidate(bytes32 candidate) returns (bool) {
        for(uint i = 0; i < candidateList.length; i++){
            if(candidateList[i] == candidate) {
                return true;
            }
        }

        return false;
    }
    
}