# Nicolas_180036351
Reositório para Projeto em CFD sobre Escoamento em Pefil Aerodinâmico

##NÃO APAGAR ESTA PARTE!!!##
---
**Problema 3**: No projeto de uma asa de uma aeronave, deseja-se saber o melhor aerofólio para este perfil. No entanto, deseja-se um valor de coeficiente de sustentação em torno de 0,8 para um ângulo de ataque de 12 graus. Para avaliação do aerofólio, escolheu-se o perfil NACA 0012. O projeto de CFD deve:

- Determinar, com a simulação, um valor de coeficientes de arrasto e sustentação para o aerofólio NACA 0012 para o ângulo de ataque de 12 graus.
- Determinar se está ocorrendo o fenômeno de stall neste ângulo de ataque.
- Usando a simulação apresentada, realizar um estudo paramétrico do ângulo de ataque para determinar cenários de comportamento aerodinâmico do perfil.
---





# **Projeto em CFD sobre Escoamento em Perfil Aerodinâmico**

## Modelagem

### Objetivo
Com o intuito de aplicar o conhecimento adquirido durante as aulas ao longo do semestre 2020/2 da disciplina de Dinâmica dos Fluidos na Universidade de Brasília foi proposta a realização de um projeto em CFD através do software Ansys. O objetivo é simular um escoamento através de um perfil aerodinâmico NACA 0012. Por fim, com os dados obtidos, determinar cenários de comportamento aerodinâmico do perfil.
   
  ### Requisitos de Solução
  Obter através da simulação computacional valores de coeficientes de arrasto e sustentação para um ângulo de ataque de 12º e identificar a ocorrência do fenômeno de stall nessa angulação
 
  ### Finalidade do Projeto
  Com finalidade acadêmica, o projeto visa introduzir os alunos à Fluidodinâmica Computacional (CFD) e a solução de problemas no campo da Dinâmica dos Fluidos.
  
  ### Hipótese de Simplificações 
  Analisando o nível de complexidade do problema, adota-se as hipóteses de escoamento 2D, Turbulento e isotérmico. Tais aproximações facilitarão os cálculos e a modelagem do problema com mudanças desprezíveis na precisão do resultado.
  
  ### Precisão dos Resultados 
  Deseja-se uma precisão de ao menos 5% entre os valores obtidos na simulação e os encontrados na validação do aerofólio feita pela NASA
  
  ### Prazo
  04/12/2020
  
  ### Metodologia
  A mmetodologia CFD foi escolhida pois facilita as solução através de um processo interativo que também é econômico. O software usado será ANSYS 2020 R1 em sua função Fluent.
  
  
  ## Pré-Processamento
  ### Domínio e Geometria
  
  É necessário que o domínio de cálculo seja extremamente preciso nos arredores da superfície do aerfolio, pois é onde se encontra tudo que queremos analisar. Para isso foi definido um y+ de 4,5e-6, o que caracteriza elementos extremamente pequenos, trazendo um detalhamento satisfatório para as proporções do problema.
  O domínio em C, como usado na validação da NASA, deve ser de uma dimensão muito superior à do perfil para não gerar efeitos de parede no escoamento. Na modelagem o domínio foi determinado 20 vezes maior que a corda do aerofolio, que mede 1 metro, gerando uma geometria adequada pra a solução.
  O perfil NACA 0012 tem como suas principais características a simeteria e a espessura a 12% da corda. Utilizando de sites pôde-se obter os pontos que representam o aerofolio no plano XY, inserindo esses pontos no Geometry Modeler, obtém-se o aerfolio.
  
  Site que fornece on pontos do aerofólio:
  
  ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/NACA0012airfoilcustom_print.png)
  
  Geometria do aerofólio
  
 ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/geometria_aerofolio.png)
 
 Domínio usado pela NASA:
 
 ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/dominionasa.png)
 
 Geometria do domínio:
 
   ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/geometria_dominio.png)
  
  
  ### Malha
  A malha usada será estruturada composta por quadriláteros e analisadas através de elementos finitos. A divisão dos elentos aumenta através da função BIAS, com mais divisões próximo ao aerofólio. 
  
  Resultado final da malha:
  
  ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/mesh.png)
  
  
  ### informações de entrada (Inputs)  
  
  Número de Reynolds **Re**= 6000000
  Velocidade **U**=88,69 m/s
  **yplus**<1
  **y**<= 4,5e-6
  Ãngulo de ataque **α**= 12°
  Componentes da direção do fluxo **x**= cos(12)= 0.97814760073; **y**= sin(12)= 0.20791169081
  
  
 ### Disponibilidade Computacional
  Quais são os prazos e disponibilidade de capacidade computacional para a análise em questão?
  (inserir print do sistema)
  
  
  ### Verificação
  Para conferir a eficácia do pré-processamento e da modelagem foi realizada uma simulação com valor de angulo de ataque α= 0° e comparado os resultados tanto dos vídeos tutoriais quanto dos fornecidos pela NASA. O resultato foi satisfatório, dando sequência às simulações com α= 12º
  
  
  ### Definições para o processamento
  As próximas imagens mostram como foi feito o pré-processamento no Ansys Fluent.
  
  Geral:
  
  ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/pm_general.png)
  
  Propriedades do ar:
  
  ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/prm_airproperties.png)
  
  Viscous Model:
  
  ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/prm_viscousmodel.png)
  
  Velocidade na entrada:
  
  ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/prm_velocityinlet.png)
  
  Pressão na saída:
  
  ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/prm_pressureoutlet.png)
  
  Reporte de arrasto:
  
  ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/prm_dragreport.png)
  
  Reporte de sustentação:
  
  ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/prm_liftreport.png)
  
  Métodos:
  
  ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/prm_methods.png)
  
  Monitores residuais:
  
  ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/prm_residualmonitors.png)
  
  Rodar simulação:
  
  ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/prm_runcalculation.png)


  ## Processamento e Pós-processamento
  ### Valores de comparação
  Analisando os dados fornecidos pela NASA, podemos fazer uma interpolação entre os valores de 10° e 15° encontrados na tabela
  
  Tabela de valores fornecida pela NASA
  
  ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/intro_valoresnasa.png)
      
  Para α= 12°:
  **Cl**= 1,27298
  **Cd**= 0,015882
  

### Convergência
Obteve-se uma convergência absolutamente adequada, como pode-se ver nos gráficos.

Convergência do cálculo do coeficiente de arrasto:

![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/pop_cdgraph.png)

Convergência do cálculo do coeficiente de sustentação:

![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/pop_clgraph.png)

### Tempo de simulação
30min


### Análise dos resultados obtidos

Valores obtidos de Cl e Cd:

![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/pop_clcd.png)

Valores obtidos após a simulação

**Cl**= 1.2553387 erro de 1,44%
**Cd**= 0.018362684 erro de 15,62%

A grande imprecisão no valor de Cd, pode ser explicada por cáculos levando variáveis viscosas na simulação além da imprecisão da interpolação dos dados. 

### Imagens de visualização do escoamento

Velocidade

![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/popvelocidade.png)

Pressão

![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/poppressao.png)

### Stall
Analisando o escoamento pelas imagens geradas, vê-se que não ocorre stall neste ângulo de ataque, uma vez que não há descolamento da camada limite e não é possível observar uma queda brusca de pressão ou velocidade.

### Análise paramétrica: α=30°
A um ângulo de ataque de 30° observa-se nítidamente um stall no escoamento. Evidencia-se pela queda brutal de velocidade e pressão após um nítido descolamento da camada limite.

Velocidade

![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/pop_30velocidade.png)

Pressão

![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/pop_30pressao.png)

  ### Conclusão
  Observa-se que os resultados da análise por CFD são muito próximos da realidade. Inclusive o valor de Cd, em que houve um destoamento maior que o resultado esperado, está dentro dos limites desejados (entre os valores de 10° e 15°). O comportammento do fluxo representa fielmente o comportamento da pressão e da velocidade em escoamentos em perfis aerodinâmicos. Com rapidez e baixo esforço, o CFD mostrou-se eficiente em analisar o problema com baixo custo e praticidade. Os parâmetros podem ser facilmente trocados para análises em condições diferentes, como com o ângulo de ataque de 30°.
