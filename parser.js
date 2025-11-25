// parser.js
function Parser(tokens) {
  let current = 0;

  function peek() {
    return tokens[current];
  }

  function consume(type, value = null) {
    const token = tokens[current];
    if (!token || token.type !== type || (value !== null && token.value !== value)) {
      throw new Error(`Erro de sintaxe: esperado ${type}${value ? ' ' + value : ''} na linha ${token ? token.line : '?'} (encontrado: ${token ? token.value : 'fim do arquivo'})`);
    }
    current++;
    return token;
  }

  function programa() {
    while (current < tokens.length) {
      declaracao();
    }
    console.log("Programa aceito.");
  }

  function declaracao() {
    let token = peek();
    if (token.type === "KEYWORD" && token.value === "let") {
      varDecl();
    } else if (token.type === "KEYWORD" && token.value === "const") {
      constDecl();
    } else if (token.type === "KEYWORD" && token.value === "if") {
      ifStatement();
    } else if (token.type === "KEYWORD" && ["print", "console", "prompt"].includes(token.value)) {
      funcCall();
    } else {
      throw new Error(`Declaracao desconhecida na linha ${token.line}: ${token.value}`);
    }
  }

  function varDecl() {
    consume("KEYWORD", "let");
    consume("IDENTIFIER");
    consume("OPERATOR", "=");
    expression();
    consume("PUNCTUATION", ";");
  }

  function constDecl() {
    consume("KEYWORD", "const");
    consume("IDENTIFIER");
    consume("OPERATOR", "=");
    expression();
    consume("PUNCTUATION", ";");
  }

  function ifStatement() {
    consume("KEYWORD", "if");
    consume("PUNCTUATION", "(");
    expression();
    consume("PUNCTUATION", ")");
    consume("PUNCTUATION", "{");
    // Aceita um comando dentro do bloco if. Expanda para vários se quiser.
    declaracao();
    consume("PUNCTUATION", "}");
  }

  function funcCall() {
    const fname = consume("KEYWORD").value;
    consume("PUNCTUATION", "(");
    if (peek().type !== "PUNCTUATION" || peek().value !== ")") {
      expression();
    }
    consume("PUNCTUATION", ")");
    consume("PUNCTUATION", ";");
  }

  function expression() {
    // Aceita um número ou identificador ou string. Expanda para operações!
    let token = peek();
    if (["STRING", "NUMBER", "IDENTIFIER"].includes(token.type)) {
      current++;
    } else {
      throw new Error(`Expressão inválida na linha ${token.line}: ${token.value}`);
    }
    // Para comparar: aceita >(op) seguido de outro número/ID/etc.
    if (peek() && peek().type === "OPERATOR") {
      current++;
      expression();
    }
  }

  // API externa
  return { parse: programa };
}

module.exports = Parser;
