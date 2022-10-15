// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/*
* @title FlowControl
* @author Sebi de la Mata
* @notice some functions to simulate flow control
*/


contract FlowControl {

    // calculate whether or not we get a dozen donuts discount
    // takes purchase quantity as input and returns boolean whether or not to give discount
    function calcDozenDiscountIF(uint purchaseQuantity) public pure returns (bool) {

        // initialize a boolean to hold the discount value (false)
        bool giveDozenPrice = false;
        
        // if theyve purchased more than or equal to 12 donuts they get a discount
        if (purchaseQuantity >= 12) {
            giveDozenPrice = true;
        // otherwise the value remains false
        } else {
            giveDozenPrice = false;
        }

        // then we return our discount status
        return giveDozenPrice;

    }




    // decides the status of our discount status
    function calcDozenDiscountWHILE (uint purchaseQuantity) private pure returns (bool) {
        
        // set local var to store default discount stays
        bool giveDozenPrice = false;

        // initiate the start number of donuts
        uint numDonuts = 1;

        
        while (numDonuts < purchaseQuantity) {
            numDonuts++;
            if (purchaseQuantity >= 12) {
                
                giveDozenPrice = true;

                break;

            }
            
        }

        return (giveDozenPrice);

    }





}
