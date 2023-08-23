// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

/// @title OfferContract - A smart contract for creating and managing offers.
contract OfferContract {
    // The count of offers created so far.
    uint256 public OfferCount = 0;

    // Represents an individual offer item.
    struct OfferItem {
        uint256 id; // Unique identifier for the offer.
        string name; // Name of the offered item.
        uint256 price; // Price of the offered item in wei.
        address payable owner; // Ethereum address of the owner/seller.
        bool purchased; // Indicates if the item has been purchased.
    }

    // Mapping of offer IDs to their corresponding OfferItem struct.
    mapping(uint256 => OfferItem) public offers;

    // Event emitted when a new offer is created.
    event OfferCreated(
        uint256 id,
        string name,
        uint256 price,
        address payable owner,
        bool purchased
    );

    // Event emitted when an offer is deleted.
    event OfferDeleted(uint256 id);

    // Modifier to ensure the provided name is not empty.
    modifier validName(string memory _name) {
        require(bytes(_name).length > 0, "Name cannot be empty");
        _;
    }

    // Modifier to ensure the provided price is greater than zero.
    modifier validPrice(uint256 _price) {
        require(_price > 0, "Price must be greater than zero");
        _;
    }

    // Modifier to ensure an offer with the given ID exists.
    modifier offerExists(uint256 _id) {
        require(_id > 0 && _id <= OfferCount, "Invalid offer ID");
        _;
    }

    // Modifier to ensure the caller is the owner of the offer.
    modifier onlyOwner(uint256 _id) {
        require(offers[_id].owner == msg.sender, "You don't own this offer");
        _;
    }

    /// @dev Creates a new offer with the given name and price.
    /// @param _name The name of the offer.
    /// @param _price The price of the offer in wei.
    function createOffer(
        string memory _name,
        uint256 _price
    ) public validName(_name) validPrice(_price) {
        OfferCount++;
        offers[OfferCount] = OfferItem(
            OfferCount,
            _name,
            _price,
            payable(msg.sender),
            false
        );
        emit OfferCreated(
            OfferCount,
            _name,
            _price,
            payable(msg.sender),
            false
        );
    }

    /// @dev Deletes the offer with the given ID.
    ///      Only the owner of the offer can delete it.
    /// @param _id The ID of the offer to be deleted.
    function deleteOffer(uint256 _id) public offerExists(_id) onlyOwner(_id) {
        delete offers[_id];
        emit OfferDeleted(_id);
    }
}
