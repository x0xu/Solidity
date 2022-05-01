// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Counter {
    /*
        premenné sa deklarujú pomocou ich typu, viditelnosti a názvu
        typ - uint - číslo
        viditelnosť - public - verejná
        count - názov

        každá premenná, ktorá je public má automaticky vytvorenú getter funkciu. Nie je preto potrebné ju definovať
        Premenná uint je zkraktkou pre unsigned intiger, čo je číslo, ktoré nepracuje so znamienkom +/-
        Defaultne zaberá 256bitov v pamäti a je ekvivalentom zápisu uint256. Rozsah je od 0 do 2 ** 256 - 1
         Intiger/číslo, ktoré pracuje so znamienkami +/- a teda môže byť aj záporné sa značí typom "int"
     */
    uint256 public count;

    /*
        funkcia je daklarovaná pomocou klúčového slova "function", ktoré následuje názvon funckie a zátvorkami, ktoré môžu obsahovať
        premenné, ktoré sú vyžadované pri volaní funkcie. Následujú klúčové slová, ktoré bližšie špecifikujú správanie funkcie
        
        Klúčové slovo public značí, že funkcia je volatelná z vonku kontraktu
     */
    function inc() public {
        /*
            premenná count bude zvýšená o 1
         */
        count += 1;
    }

    function dec() public {
        /*
            premenná count bude znížená o 1.
            V prípade, že premenná count je 0 a funkcia bude zavolaná, tak funkcia spôsobí error
         */
        count -= 1;
    }
}
