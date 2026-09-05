# 🌾 SilosTech — Monitoramento Inteligente de Estoque em Silos de Soja e Milho

> Do campo analógico ao campo conectado: transformando um sensor de baixo custo em uma ferramenta de gestão, prevenção de perdas e **salvamento de vidas**.

![Status](https://img.shields.io/badge/status-prot%C3%B3tipo-yellow)
![Plataforma](https://img.shields.io/badge/plataforma-Arduino-00979D?logo=arduino&logoColor=white)
![Sensor](https://img.shields.io/badge/sensor-HC--SR04-blue)
![Licença](https://img.shields.io/badge/licen%C3%A7a-acad%C3%AAmico-lightgrey)

---

## 📌 Sobre o Projeto

O agronegócio brasileiro colhe **safras recordes** ano após ano — mas boa parte da infraestrutura de armazenamento ainda opera como há 20 anos: **medição manual, visual e imprecisa**.

O resultado disso não é só prejuízo financeiro. É:

- 💸 **R$ 30,5 bilhões** perdidos em 2023 só com déficit de silos (Forbes Agro);
- 🌽 **4-7% do volume armazenado** perdido por falhas de armazenagem (Times Brasil/CNBC);
- ⚠️ **+6 mortes por mês** no Brasil em acidentes dentro de silos, por quedas ou soterramento por grãos (Balde Branco).

O **SiloTech** propõe uma alternativa simples, acessível e escalável: um sistema de monitoramento de nível baseado no sensor ultrassônico **HC-SR04** integrado a um **Arduino**, que mede a distância entre o sensor e a superfície dos grãos, converte isso em **volume e percentual de ocupação**, e alimenta um **dashboard** com histórico, alertas e projeções.

> Não é sobre substituir o trabalhador do campo. É sobre tirá-lo de cima do silo.

---

## 🎯 Objetivo

Desenvolver um sistema capaz de:

- Medir **continuamente** o nível de armazenamento de milho e soja dentro do silo;
- Estimar a **altura da coluna de grãos** a partir da leitura de distância do sensor;
- Registrar esses dados em um **banco de dados histórico**;
- Gerar **gráficos evolutivos** e **painéis analíticos** para prever consumo e antecipar reposições.

---

## 🧮 Como o cálculo funciona

O sistema segue uma lógica geométrica simples, em 4 passos:

| Passo | O que é calculado |
|---|---|
| 1️⃣ | Altura ocupada pelos grãos (a partir da leitura do sensor) |
| 2️⃣ | Área da base do silo (considerando formato cilíndrico) |
| 3️⃣ | Volume de grãos armazenados (área × altura) |
| 4️⃣ | Percentual de ocupação do silo |

⚠️ **Margem de erro estimada: ±5%**, causada principalmente por:
- irregularidade da superfície dos grãos;
- leitura pontual feita por um único sensor central.

> Exemplo: se o sistema indica **70% de ocupação**, o valor real pode variar dentro dessa margem.

---

## 🛠️ Escopo do Sistema

O que está **dentro**:

- ✅ Sistema de login;
- ✅ Cadastro de silos;
- ✅ Leitura de distância via HC-SR04;
- ✅ Processamento e armazenamento das medições;
- ✅ Comparação com limites pré-definidos;
- ✅ Emissão de alertas para condições fora do padrão;
- ✅ Dashboard com histórico para análise;
- ✅ Suporte ao cliente 24/7.

O que está **fora**:

- ❌ Correção automática de problemas — o sistema **monitora e sinaliza**, a ação corretiva continua sendo humana.

---

## 📐 Premissas

- Sensor instalado em local que reduza exposição à poeira e umidade;
- Alimentação de 5V (via conversão da rede elétrica local — 127V/220V com adaptador adequado);
- Arduino responsável pelo processamento das leituras;
- Instalação acompanhada por funcionário responsável;
- Valores de referência de distância definidos conforme a geometria de cada silo.

## 🚧 Restrições

- Alcance do HC-SR04 limitado a **4 metros** — silos maiores exigem sensores adicionais;
- Margem de erro ≅ **5%** por conta do nivelamento dos grãos;
- Custo variável conforme número de silos e sensores;
- Arduino não pode ficar exposto a grãos, poeira ou umidade diretamente;
- Sensor não pode ter obstruções (paredes/estruturas) no caminho do sinal;
- Instalação não pode comprometer a estrutura do silo;
- Proteção necessária contra oscilações e quedas de energia;
- Prazo de implementação: até **14 dias** após assinatura do contrato.

---

## 👥 Público-Alvo

Organizações com estrutura de armazenamento que justifique o investimento:

- Empresas de armazenamento de grãos (grandes volumes de soja e milho);
- Cooperativas agrícolas;
- Grandes produtores rurais com silos próprios;
- Cerealistas e empresas do agronegócio;
- Gestores de unidades armazenadoras.

---

## 🌱 Impacto (ESG)

| Pilar | Impacto do SiloTech |
|---|---|
| 🌍 **Ambiental** | Reduz desperdício de grãos por apodrecimento/pragas causado por falta de controle |
| 🧑‍🌾 **Social** | Reduz a necessidade de inspeção humana em espaços confinados de risco |
| 🏛️ **Governança** | Substitui estimativas visuais por dados rastreáveis e auditáveis |

---

## 👨‍💻 Equipe — Turma 1 ADSA

| Nome | RA |
|---|---|
| Bruno Santos da Silva | 01262003 |
| Guilherme de Sousa Pinheiro | 01262126 |
| Kaik Correia da Silva | 01262125 |
| Marcos Vinicius Miguel Ferreira | 01262089 |
| Pedro Henrique de Mendonça Bittencourt | 01262102 |
| Ronaldo Minéro Júnior | 01262122 |
| Willian Denis Santuches | 01262084 |

---

## 📚 Referências

- Forbes Agro — [Brasil perdeu R$30,5 bilhões em 2023 com déficit de silos](https://forbes.com.br/forbes-agro/2023/05/brasil-perde-r-305-bilhoes-em-2023-com-deficit-de-silos-estima-cogo/)
- CONAB — [Acompanhamento da Safra Brasileira de Grãos](https://www.conab.gov.br)
- Times Brasil/CNBC — [Quanto dinheiro se perde dentro de um silo?](https://timesbrasil.com.br/minhas-financas/quanto-dinheiro-se-perde-dentro-de-um-silo-falhas-na-armazenagem-podem-custar-caro-ao-produtor/)
- Balde Branco — [Mais de seis trabalhadores morrem por mês em acidentes dentro de silos de grãos](https://baldebranco.com.br/mais-de-seis-trabalhadores-morrem-por-mes-em-acidentes-dentro-de-silos-de-graos/)

---

<p align="center"><i>Menos grãos perdidos. Menos vidas em risco. Mais dados, mais segurança.</i></p>
