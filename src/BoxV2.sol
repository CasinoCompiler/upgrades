// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title
 * @author 
 * @notice 
 * @dev 
 */

/** Imports */
// @Order Imports, Interfaces, Libraries, Contracts

contract BoxV2 {

    /** Errors */   

    /** Type Declarations */

    /** State Variables */
    uint256 internal number;

    /** Events */

    /** Constructor */

    /** Modifiers */

    /** Functions */
    // @Order recieve, fallback, external, public, internal, private
    receive() external payable{}
    fallback() external payable{}

    function setNumber(uint256 newNumber) external {
        number = newNumber;
    }

    /** Getter Functions */
    function getNumber() external view returns(uint256) {
        return number;
    }

    function getVersion() external pure returns(uint256) {
        return 2;
    }

}