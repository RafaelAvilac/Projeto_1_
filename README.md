# 🐾 Tamagotchi Virtual

> Projeto acadêmico de um bichinho virtual desenvolvido em Portugol

## 📋 Sobre o Projeto

Este projeto é uma recriação do clássico Tamagotchi dos anos 90, desenvolvido como trabalho da disciplina de Conceitos de Algoritmos do curso de Tecnologia em Análise e Desenvolvimento de Sistemas.

A missão é simples (mas não tão fácil assim): manter o bichinho alimentado, limpo e feliz até completar 7 dias de vida. Parece pouco tempo, mas ele dá trabalho!

## 🎮 Como Jogar

### Requisitos
- Portugol Studio instalado ([Download aqui](http://lite.acad.univali.br/portugol/))

### Executando o Jogo
1. Clone este repositório ou faça o download do arquivo `.por`
2. Abra o arquivo no Portugol Studio
3. Depois é só clicar em “Executar” e o jogo começa!

## 🎯 Funcionalidades

### Menu Principal
O jogo oferece 6 opções principais:

| Opção | Função | Descrição |
|-------|--------|-----------|
| **1** | ⏩ Avançar o Tempo | Avança 8 horas na vida do pet |
| **2** | ❤️ Alimentar | Reduz a fome do pet em 4 pontos |
| **3** | ⭐ Jogar | Joga Jokenpô (Pedra, Papel e Tesoura) |
| **4** | 🛁 Dar Banho | Restaura a limpeza do pet para 10 |
| **5** | 📊 Ver Status | Exibe todas as informações do pet |
| **6** | ❌ Desligar | Encerra o programa |

## 📊 Atributos do Pet

### Felicidade (0-10 pontos)
- **Aumenta:** Ao ser alimentado com fome, jogar Jokenpô
- **Diminui:** Ser forçado a comer sem fome, dar banho quando limpo
- **Morte:** Se chegar a 0 (tristeza)

### Fome (0-10 pontos)
- **Aumenta:** A cada 8 horas (+3) e ao jogar (+2)
- **Diminui:** Ao ser alimentado (-4)
- **Morte:** Se chegar a 10

### Limpeza (0-10 pontos)
- **Aumenta:** Ao tomar banho (volta para 10)
- **Diminui:** A cada 8 horas (-2)
- **Morte:** Se chegar a 0

### Tempo de Vida (0-7 dias)
- Máximo de 168 horas (7 dias)
- A cada 24 horas = 1 dia de vida
- **Vitória:** Se o pet completar 7 dias

### Status de Saúde
- O pet pode ficar doente aleatoriamente (10% de chance)
- **Cura automática:**
  - Após 8h: 33.3% de chance
  - Após 16h: 66.6% de chance
  - Após 24h: 100% de cura garantida

## 🎲 Minijogo: Jokenpô

### Como Funciona
- Escolha entre Pedra, Papel ou Tesoura
- O pet faz sua escolha aleatoriamente
- **Se o pet vencer:** +5 felicidade e avança 4 horas
- **Se o pet perder:** +3 felicidade
- **Empate:** Nenhuma alteração

## 🏆 Condições de Vitória e Derrota

### ✅ Vitória
Manter o pet vivo por **7 dias completos** (168 horas)

### ❌ Game Over
O pet pode morrer de:
- 😢 **Tristeza:** Felicidade chegou a 0
- 🍽️ **Fome:** Fome chegou a 10
- 🦠 **Sujeira:** Limpeza chegou a 0

## 🛠️ Tecnologias Utilizadas

- **Linguagem:** Portugol
- **IDE:** Portugol Studio
- **Bibliotecas:** 
  - `Util` - Para delays e números aleatórios
  - `Texto` - Para manipulação de strings

## 👥 Equipe de Desenvolvimento

### Integrantes
-Joézer Gonçalves
-Rafael Avila
-Weliton 
-Vitória Luísa 

**Líder do Projeto:** Rafael Ávila 

## 📖 Estrutura do Código

```
programa
├── Variáveis Globais
├── Tela de Boas-vindas
├── Escolha do Nome
└── Loop Principal
    ├── Menu
    ├── Escolha de Opções
    │   ├── Avançar Tempo
    │   ├── Alimentar
    │   ├── Jogar (Jokenpô)
    │   ├── Dar Banho
    │   ├── Ver Status
    │   └── Desligar
    ├── Verificações de Morte
    └── Exibição de Status
```

## 💡 Dicas para Manter seu Pet Vivo

1. 🍽️ **Alimentação:** Mantenha a fome entre 0-3 pontos
2. 🛁 **Higiene:** Dê banho quando a limpeza chegar a 4-6 pontos
3. ⭐ **Diversão:** Jogue com frequência para manter a felicidade alta
4. ⚠️ **Atenção aos Alertas:** O jogo avisa quando algo está crítico
5. 🤒 **Doença:** Aguarde a cura automática, não há ação necessária

## 📝 Changelog

### Versão 1.0 (Outubro 2025)
- ✅ Implementação de todas as funcionalidades básicas
- ✅ Sistema de doença com cura progressiva
- ✅ Minijogo Jokenpô integrado
- ✅ Sistema de alertas para atributos críticos
- ✅ Interface visual melhorada com emojis e ASCII art

## 📄 Licença

Este projeto foi desenvolvido para fins educacionais como parte do curso de Análise e Desenvolvimento de Sistemas.

**Professor:** Gilberto Viana de Oliveira  
**Disciplina:** Conceitos de Algoritmos  
**Instituição:** IFTM - Instituto Federal do Triângulo Mineiro  
**Data de Entrega:** 15/10/2025

---

## 🎮 Screenshots

### Tela Inicial
```
=*=*=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=**=*=*=**=*=*=*
                   █▄▄ █▀▀ █▀▄▀█   █░█ █ █▄░█ █▀▄ █▀█ █ █ █
                   █▄█ ██▄ █░▀░█   ▀▄▀ █ █░▀█ █▄▀ █▄█ ▄ ▄ ▄
=*=*=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=**=*=*=**=*=*=*

```

### Menu Principal
```
           Divirta-se com  [NOME] (≧◡≦)
         Ecolha uma da opções abaixo:
 *=*=*=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*=*=*= 
|1 - [>] Avançar o tempo 	2 - [♥️] Alimentar |
|3 - [★] Jogar           	4 - [≈] Dar banho |
|5 - [#] Ver status       	6 - [X] Desligar  |
 *=*=*=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*=*=*= 
```

### Status do Pet
```
+--------------------------------------+
|       Status Atual de [NOME]         |
+--------------------------------------+
 Tempo de vida : 2 dia(s) e 16 hora(s)
 Felicidade    : 8 pontos
 Limpeza       : 6 pontos
 Fome          : 2 pontos
 Status        : ❤️ Saudável
+--------------------------------------+
```

---

## 📞 Contato

Em caso de dúvidas sobre o projeto, entre em contato com os membros da equipe:

- 📧 Email: conceitos-de-algoritmos-projeto-1@googlegroups.com

---

<div align="center">

**Este projeto ajudou o grupo a compreender melhor o funcionamento de estruturas condicionais, laços de repetição e manipulação de variáveis no Portugol. Além disso, foi uma ótima oportunidade para exercitar o trabalho em equipe e a lógica de programação de forma criativa e divertida.**


**Feito com ❤️**

-Cuidar de um Tamagotchi é quase como cuidar de um amigo, exige paciência, atenção e carinho. Boa sorte nessa jornada virtual!

⭐ Se você gostou deste projeto, considere dar uma estrela no repositório!

</div>
