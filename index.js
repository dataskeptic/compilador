const fs = require('fs');
const { tokenize } = require('./scanner');
const Parser = require('./parser');
const { analyzeSemantics } = require('./semantic');

const arquivo = process.argv[2] || 'codigo_teste_completo.txt';

if (!fs.existsSync(arquivo)) {
  console.error(`\nErro: arquivo '${arquivo}' não encontrado.`);
  console.error('Uso: node index.js <arquivo>\n');
  process.exit(1);
}

const code = fs.readFileSync(arquivo, 'utf8');
console.log(`\nCompilando: ${arquivo}\n`);

try {
  const tokens = tokenize(code);
  const parser = Parser(tokens);
  const ast = parser.parse();
  analyzeSemantics(ast);
} catch (err) {
  console.error(`\n=== Erro ===\n${err.message}\n============\n`);
  process.exit(1);
}