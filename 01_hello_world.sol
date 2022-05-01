/* 
    Sol súbor by mal začínat definovaním licencie, pod ktorou môže byť kontrakt využívaný.
    Táto licencia sa uvádza  ako komentár na vrchu kontraktu
    
    Dostupné licencie sú na https://spdx.org/licenses/
    
    Ak nechceme uvádzať licenciu alebo nechceme, aby bol kontrakt použitelný ako open-source tak použijeme klúčové slovo UNLICENSED 
    Na druhej strane licencia UNLICENSE dáva všetky práva ku kontraktu všetkým
    Najpoužívanejšia licencia je MIT.

    MIT:Užívateľ získava neobmedzené právo kopírovať, používať a modifikovať program, 
    redistribuovať modifikované verzie programu za predpokladu uvedenia autora a informácií o licencii, spolu s upozornením na zrieknutie sa zodpovednosti za dielo. Prijatím tejto licencie sa užívateľ vzdá práva na podanie žaloby na správcu kódu.
*/
// SPDX-License-Identifier: MIT

/*
    Kǒd kontraktu začína klúčovímy slovami :
        - "pragma", čo je klúčové slovo, ktoré je vyžadované, aby bol smart kontrakt kompilovatelný
        - verzia a typ kompilátoru, ktorá sa uvádza ako "solidity x.x.x", kde x sú číslice
        - celkovo je teda očakávaný zápis "pragma solidity x.x.x"
        - zápis "pragma solidity ^x.x.x" (so strieškou) značí, že kompilátor, ktorý je použitý je vyšší alebo rovný x.x.x
    
    Je možné zvoliť aj zápis "pragma abicoder v2", kde ABI coder umožňuje enkódovať a dekódovať ľubovolné zanorené polia a štruktúry
    
 */
pragma solidity ^0.8.13;

/*
    Samotná časť kontraktu, ktorá zodpovedá za jeho funkcionalitu začína klúčovím slovom "contract", 
    ktoré následuje názvom kontraktu. Ten sa píše v notácií PascalCase
 */
contract HelloWorld {
    string public greet = "Hello World";
}
