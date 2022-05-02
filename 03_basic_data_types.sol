// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Primitives {
    /* 
        boolean je premenná, ktorá môže naberať hodnôť true a false
        ! - logická negácia
        && - konjunkcia
        \\ - disjunkcia
        == - je rovné
        != - nie je rovné
    */
    bool public boo = true;

    /*
        uint8  je číslo, ktoré môže byť v rozmedzí 0 až 2 ** 8 - 1
        uint16 je číslo, ktoré môže byť v rozmedzí 0 do 2 ** 16 - 1
        ...
        uint256 je číslo, ktoré môže byť v rozmedzé 0 do 2 ** 256 - 1
    */
    uint8 public u8 = 1;
    uint256 public u256 = 456;
    uint256 public u = 123;

    /*
    Negatívne čísla je možné zapísať pomocou int
    
    int256 je číslo, ktoré môže byť v rozmedzí -2 ** 255 do 2 ** 255 - 1
    int128 je číslo, ktoré môže byť v rozmedzí -2 ** 127 do 2 ** 127 - 1
    */
    int8 public i8 = -1;
    int256 public i256 = 456;
    int256 public i = -123;
    /*
        Float nie je momentálne plne podporovaný v solidity. Desatinné čísla môžu byť deklarované, ale nie je možné
        do nich priraďovať alebo ich priraďovať. ERC20 tokeny riešia prípadné desatinné miesta. 
        Vysvetlenie je v článku - https://medium.com/@jgm.orinoco/understanding-erc-20-token-contracts-a809a7310aa5
     */
    /*
        Operácie nad číslami:
            <= menší rovní
            < menší
            == rovný
            != nerovný
            >= väčší rovný
            > váčší
            +,-,*,/,%,** (umocňovanie)
            ** - x*x*x je efektívnejšie ako x**3
            modulo alebo / nulou spôsobý error a návrat ku pôvodným hodnotám
    */

    /*
        Defaulte sú číslené operácie v solidty v tzv. "checked" móde, ktorý zabezpečuje, že ak by číslo vyskočilo zo svojho preddefinovaného typu,
        tak sa celý prroces revertne. Ak chceme povoliť, aby číslo mohlo vybočiť zo svojho typu, tak je potrebné sa prepnúť do "unchecked" módu
    */

    /*
        Definmovanie maxima a minima určitého číselného typu
    */
    int256 public minInt = type(int256).min;
    int256 public maxInt = type(int256).max;

    /* 
        typ "address" je 20 bytová hodnota, ktorá reprezentuje etherovú adresu
        existuje aj "address payable", ktorým sa značí premenná/adresa, ktorej je možné zaslať v rámci daného kontraktu étherá
        premennej typu "address" nie je možné zaslať étherá. 

        je možné prekonvertovať "address" na "payable address" pomocou "payable(<address>)"
    */
    address public addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;
    address public payableaddr = payable(addr);

    /*
        premenná bytes1, bytes2, bytes3, ..., bytes32 slúži na ukladanie sekvencie bytov od 1 až po 32
        jeden byt je 8 bitov. 
    */
    bytes1 a = 0xb5; //  [10110101]
    bytes1 b = 0x56; //  [01010110]

    // defaultné hodnoty
    bool public defaultBoo; // false
    uint256 public defaultUint; // 0
    int256 public defaultInt; // 0
    address public defaultAddr; // 0x0000000000000000000000000000000000000000
}
