// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract User {
    address public pengguna;
    struct Pengguna{
        string name;
        string norek;
        uint saldo;
        address akun;
    }
    struct Umkm{
        string name;
        string pemilik;
        uint16 grade;
    }
    mapping(address => Pengguna) public pemilikAkun;

    Pengguna[] public penggunas;

    constructor(string memory name, string memory norek, uint saldo) {
        pengguna = msg.sender;
        penggunas.push(Pengguna({
            name : name,
            norek : norek,
            saldo : saldo,
            akun : pengguna
        }));
    }

    function lihatProfil() public pure returns(Pengguna memory profil){
        return profil;
    }
}