// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract VotingContract {
    // Structure to store candidate information
    struct Candidate {
        uint256 id;
        string name;
        uint256 voteCount;
    }

    // Mapping of candidate ID to Candidate struct
    mapping(uint256 => Candidate) public candidates;

    // Mapping of voter address to voted status
    mapping(address => bool) public hasVoted;

    uint256 public candidatesCount;

    // Constructor to initialize candidates
    constructor(string[] memory _candidateNames) {
        for (uint256 i = 0; i < _candidateNames.length; i++) {
            candidatesCount++;
            candidates[candidatesCount] = Candidate(
                candidatesCount,
                _candidateNames[i],
                0
            );
        }
    }

    // Function to vote for a candidate
    function vote(uint256 _candidateId) public {
        require(
            _candidateId > 0 && _candidateId <= candidatesCount,
            "Invalid candidate ID"
        );
        require(!hasVoted[msg.sender], "You have already voted");

        candidates[_candidateId].voteCount++;
        hasVoted[msg.sender] = true;
    }

    // Function to get the vote count for a candidate
    function getVoteCount(uint256 _candidateId) public view returns (uint256) {
        require(
            _candidateId > 0 && _candidateId <= candidatesCount,
            "Invalid candidate ID"
        );
        return candidates[_candidateId].voteCount;
    }
}
