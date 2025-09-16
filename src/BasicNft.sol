// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import '@openzeppelin/contracts/token/ERC721/ERC721.sol';

contract BasicNft is ERC721{

    uint256 private s_tokenCounter;

    /*
balanceOf(owner) → how many NFTs a person owns.

ownerOf(tokenId) → who owns a specific NFT.

transferFrom(from, to, tokenId) → transfer NFT.

safeTransferFrom(...) → transfer NFT safely to contracts.

approve(to, tokenId) → give someone permission to transfer your NFT.

setApprovalForAll(operator, approved) → approve an operator for all your NFTs.

    */

    constructor()ERC721("Dogie","Dog"){
        s_tokenCounter = 0;
    }

     function mintNft (){
        returns "ipfs://_________random_ipfs_id"
     }
    
    function tokenURI(uint256 tokenId) public view override returns (string memory){
        return 
    }

}

