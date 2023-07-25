//SPDX-License-Idntifier: UNLICENSED
pragma solidity >=0.5.0 <=0.8.7;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract MyNFT is ERC721URIStorage, Ownable{
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;
    constructor() ERC721("LOHITH","LOH"){

    }
    function mintNFT(address receipent,string memory tokenURI) public onlyOwner returns(uint256){
        _tokenIds.increment();

        uint256 newItemId=_tokenIds.current();
        _mint(receipent,newItemId);
        _setTokenURI(newItemId,tokenURI);
        return newItemId;
    }
}