// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title
 * @author
 * @notice
 * @dev
 */

/**
 * Imports
 */
// @Order Imports, Interfaces, Libraries, Contracts
import {OwnableUpgradeable} from "@ozu/contracts/access/OwnableUpgradeable.sol";
import {UUPSUpgradeable} from "@ozu/contracts/proxy/utils/UUPSUpgradeable.sol";
import {Initializable} from "@ozu/contracts/proxy/utils/Initializable.sol";

contract BoxV2 is Initializable, OwnableUpgradeable, UUPSUpgradeable {
    /**
     * Errors
     */

    /**
     * Type Declarations
     */

    /**
     * State Variables
     */
    uint256 internal number;

    /**
     * Events
     */

    /**
     * Constructor
     */
    /// @custom:oz-upgrades-unsafe-allow constructor

    constructor() {
        _disableInitializers();
    }

    function initialize() public initializer {
        __Ownable_init(msg.sender);
        __UUPSUpgradeable_init();
    }

    /**
     * Modifiers
     */

    /**
     * Functions
     */
    // @Order recieve, fallback, external, public, internal, private
    function setNumber(uint256 newNumber) external {
        number = newNumber;
    }

    function _authorizeUpgrade(address newImplementation) internal override {}

    /**
     * Getter Functions
     */
    function getNumber() external view returns (uint256) {
        return number;
    }

    function getVersion() external pure returns (uint256) {
        return 2;
    }
}
