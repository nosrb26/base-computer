/**
 *Submitted for verification at basescan.org on 2025-01-11
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ComputerPower {
    // État de l'ordinateur : allumé ou éteint
    bool public isOn;

    // Événement pour suivre les changements d'état
    event PowerStateChanged(bool newState);

    // Constructeur pour initialiser l'état de l'ordinateur
    constructor() {
        isOn = false; // Par défaut, l'ordinateur est éteint
    }

    // Fonction pour allumer l'ordinateur
    function powerOn() public {
        require(!isOn, "L'ordinateur est deja allume.");
        isOn = true;
        emit PowerStateChanged(isOn);
    }

    // Fonction pour éteindre l'ordinateur
    function powerOff() public {
        require(isOn, "L'ordinateur est deja eteint.");
        isOn = false;
        emit PowerStateChanged(isOn);
    }

    // Fonction pour vérifier l'état de l'ordinateur
    function getPowerState() public view returns (string memory) {
        if (isOn) {
            return "L'ordinateur est allume.";
        } else {
            return "L'ordinateur est eteint.";
        }
    }
}
