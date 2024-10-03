// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MeuContrato {
    string public mensagem;

    constructor(string memory _mensagemInicial) {
        mensagem = _mensagemInicial;
    }

    function alterarMensagem(string memory _novaMensagem) public {
        mensagem = _novaMensagem;
    }
}
