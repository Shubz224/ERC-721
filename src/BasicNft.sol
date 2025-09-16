// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

/*
balanceOf(owner) → how many NFTs a person owns.

ownerOf(tokenId) → who owns a specific NFT.

transferFrom(from, to, tokenId) → transfer NFT.

safeTransferFrom(...) → transfer NFT safely to contracts.

approve(to, tokenId) → give someone permission to transfer your NFT.

setApprovalForAll(operator, approved) → approve an operator for all your NFTs.

    */

contract BasicNft is ERC721 {
    uint256 private s_tokenCounter;
    mapping(uint256 => string) private s_tokenIdToUri;

    constructor() ERC721("Dogie", "Dog") {
        s_tokenCounter = 0;
    }

    function mintNft(string memory tokenUri) public {
        s_tokenIdToUri[s_tokenCounter] = tokenUri;
        _safeMint(msg.sender, s_tokenCounter);
        s_tokenCounter++;
    }

    function tokenURI(
        uint256 tokenId
    ) public view override returns (string memory) {
        return s_tokenIdToUri[tokenId];
    }
}
