# Trabalho Blockchain Aula de segurança da Informação - Professor Bruno Zolotareff
Nesse Repositíorio encontrasse a 1º parte da atividade de SINF.
A baixo encontrasse o LinkDin do Professor Bruno Zolatareff
- https://br.linkedin.com/in/bzsantos?original_referer=https%3A%2F%2Fwww.google.com%2F
# BlockChain 
A blockchain (também conhecido como “cadeia de blocos”) é uma tecnologia de registro distribuído que visa a descentralização como medida de segurança. São bases de registros e dados distribuídos e compartilhados, que têm a função de criar um índice global para todas as transações que ocorrem em um determinado mercado.
# artigo
Neste artigo, usamos uma abordagem Delphi para investigar se, e em que extensão, aplicativos baseados em blockchain podem afetar as organizações, inovações e estratégias das empresas até 2030 e, consequentemente, quais áreas sociais podem ser mais afetadas. Fornecemos uma compreensão profunda de como a adoção dessa tecnologia pode levar a mudanças na Europa em várias dimensões, variando de negócios a cultura e sociedade, política e regulamentação, economia e tecnologia. Das projeções que atingiram um consenso significativo e receberam alta probabilidade de ocorrência dos especialistas, derivamos quatro cenários construídos em torno de duas dimensões principais: a digitalização de ativos e a mudança nos modelos de negócios.
- https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0258995
# Linkdin dos alunos
- Arthur Gaspar Mari - https://www.linkedin.com/in/arthur-gaspar-mari/
- Harley Color - https://www.linkedin.com/in/harley-collor-963103331/
- José Henrique - https://br.linkedin.com/in/jos%C3%A9-henrique-002107331
- Thiago Menezes. - https://www.linkedin.com/in/thiago-menezes-426105331/
# Fichamento
O artigo "A look into the future of blockchain technology: Is it really going to dominate?" explora o futuro da tecnologia blockchain, destacando suas promessas e desafios. Ele examina como o blockchain pode impactar várias indústrias, como finanças, saúde e governança, além de suas implicações para segurança, privacidade e regulação. A pesquisa identifica barreiras, incluindo questões de escalabilidade, consumo de energia e aceitação pública, propondo que o futuro da tecnologia dependerá de soluções inovadoras e de cooperação global.
# Aplicação
A aplicação do estudo sobre o futuro da tecnologia blockchain pode ser vista em diversas áreas, como finanças, saúde, governança e segurança de dados. O blockchain tem potencial para revolucionar sistemas de pagamento, registros de saúde eletrônicos, contratos inteligentes e cadeias de suprimentos. No entanto, sua implementação depende de superar desafios técnicos, como a escalabilidade e o consumo energético, além de lidar com questões regulatórias. A adoção em larga escala exigirá cooperação global e inovações tecnológicas para maximizar sua utilidade e aceitação pública.
# Objetivo
O objetivo do artigo "A look into the future of blockchain technology" é investigar se o blockchain realmente dominará o futuro, analisando seu potencial impacto em diversos setores, os desafios que enfrenta, e as oportunidades para adoção em larga escala. Ele busca esclarecer como essa tecnologia pode transformar indústrias e serviços, abordando barreiras como escalabilidade, consumo de energia e aceitação pública, além de discutir possíveis soluções e o papel da colaboração global.
# Código
- Um exemplo de um código de BlockChain
const crypto = require('crypto');

class Block {
  constructor(index, timestamp, data, previousHash = '') {
    this.index = index;
    this.timestamp = timestamp;
    this.data = data;
    this.previousHash = previousHash;
    this.hash = this.calculateHash();
  }

  calculateHash() {
    return crypto.createHash('sha256').update(this.index + this.previousHash + this.timestamp + JSON.stringify(this.data)).digest('hex');
  }
}

class Blockchain {
  constructor() {
    this.chain = [this.createGenesisBlock()];
  }

  createGenesisBlock() {
    return new Block(0, '01/01/2024', 'Genesis Block', '0');
  }

  getLatestBlock() {
    return this.chain[this.chain.length - 1];
  }

  addBlock(newBlock) {
    newBlock.previousHash = this.getLatestBlock().hash;
    newBlock.hash = newBlock.calculateHash();
    this.chain.push(newBlock);
  }

  isChainValid() {
    for (let i = 1; i < this.chain.length; i++) {
      const currentBlock = this.chain[i];
      const previousBlock = this.chain[i - 1];

      if (currentBlock.hash !== currentBlock.calculateHash()) {
        return false;
      }

      if (currentBlock.previousHash !== previousBlock.hash) {
        return false;
      }
    }
    return true;
  }
}

let myBlockchain = new Blockchain();
myBlockchain.addBlock(new Block(1, '02/01/2024', { amount: 4 }));
myBlockchain.addBlock(new Block(2, '03/01/2024', { amount: 10 }));

console.log('Blockchain válida?', myBlockchain.isChainValid());
console.log(JSON.stringify(myBlockchain, null, 4));

