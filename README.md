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
  Obter através da simulação computacional valores de coeficientes de arrasto e sustentação para um ângulo de ataque de 12º e identificar se há ocorrência do fenômeno de stall nessa angulação
 
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
  
  É necessário que o domínio de cálculo seja extremamente preciso nos arredores da superfície do aerofólio, pois é onde se encontra tudo que queremos analisar. Para isso foi definido um y+ de 4,5e-6, o que caracteriza elementos extremamente pequenos, trazendo um detalhamento satisfatório para as proporções do problema.
  O domínio em C, como usado na validação da NASA, deve ser de uma dimensão muito superior à do perfil para não gerar efeitos de parede no escoamento. Na modelagem o domínio foi determinado 20 vezes maior que a corda do aerofólio, que mede 1 metro, gerando uma geometria adequada para a solução.
  O perfil NACA 0012 tem como suas principais características a simetria e a espessura a 12% da corda. Utilizando de sites pôde-se obter os pontos que representam o aerofólio no plano XY, inserindo esses pontos no Geometry Modeler, obtém-se o aerofólio.
  
  Site que fornece os pontos do aerofólio:
  
  ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/NACA0012airfoilcustom_print.png)
  
  Geometria do aerofólio
  
 ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/geometria_aerofolio.png)
 
 Domínio usado pela NASA:
 
 ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/dominionasa.png)
 
 Geometria do domínio:
 
   ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/geometria_dominio.png)
  
  
  ### Malha
  A malha usada será estruturada composta por quadriláteros e analisadas através de elementos finitos. A divisão dos elementos aumenta através da função BIAS, com mais divisões próximo ao aerofólio. 
  
  Resultado final da malha:
  
  ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/mesh.png)
  
  
  ### informações de entrada (Inputs)  
  
  Número de Reynolds **Re**= 6000000
  
  Velocidade **U**=88,69 m/s
  
  **y**<= 4,5e-6
 
  ngulo de ataque **α**= 12°
  
 Componentes da direção do fluxo **x**= cos(12)= 0.97814760073; **y**= sin(12)= 0.20791169081
  
  
 ### Disponibilidade Computacional
 
  **RAM**= 8Gb
  
  **Processador**= intel core i7 6700hq @ 2.60ghz (4 núcleos)
  
 **GPU**= NVIDIA GEforce GTX 960m
 
 **Softwares**- Windows 10 Home 64bits; Ansys 2020 R2
 
 
  
  ### Verificação
  Para conferir a eficácia do pré-processamento e da modelagem foi realizada uma simulação com valor de ângulo de ataque α= 0° e comparado os resultados tanto dos vídeos tutoriais quanto dos fornecidos pela NASA. O resultado foi satisfatório, dando sequência às simulações com α= 12º
  
  
  ### Definições para o processamento
  
  Propriedades do ar:
  
 **Densidade**= 1,225 kg/m³
 **Viscosidade**= 1,7894e-5 kg/m-s
  
  Para a velocidade na entrada, foram colocados os valores para x e y que atendam o ângulo de ataque de 12° tal como o módulo da velocidade **U**=88,69 m/s:
  
  ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/prm_velocityinlet.png)
  
  Para pressão na saída foram colocados os valores para x e y que atendam o àngulo de ataque de 12°:
  
  ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/prm_pressureoutlet.png)
  
  Para o reporte de arrasto e sustentação, foram estabelecidas as componentes da força desejadas, para cumprir com o ângulo de ataque a 12°, o arrasto e a sustentação devem estar respectivamente paralelo e perpendicular ao fluxo, e não à corda do perfil. Também é selecionada a superfície de estudo desejada, no caso o aerofólio.
  
  Reporte de arrasto:
  
  ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/prm_dragreport.png)
  
  Reporte de sustentação:
  
  ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/prm_liftreport.png)
  
  Para os monitores residuais foi estabelecido um critério muito preciso da grau de grandeza 1e-6 para continuidade, já para os outros resíduos foi optado por não selecioná-los, focando assim exclusivamente na continuidade. Esta é a diferença entra a mudança nos resultados entre cada iteração numérica:
  
  ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/prm_residualmonitors.png)
  
  Para rodar a simulação, foram colocadas 5000 interações com o intuito de ter certeza da exatidão dos resultados:
  
  ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/prm_runcalculation.png)


  ## Processamento e Pós-processamento
  ### Valores de comparação
  Analisando os dados fornecidos pela NASA, podemos fazer uma interpolação entre os valores de 10° e 15° encontrados na tabela
  
  Tabela de valores fornecida pela NASA
  
  ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/intro_valoresnasa.png)
      
  Para α= 12°:
  **Cl**= 1,27298
  **Cd**= 0,015882
  

### Gráficos Gerados

Report Plot do coeficiente de arrasto:

![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/pop_cdgraph.png)

Report Plot do coeficiente de sustentação:

![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/pop_clgraph.png)

 Resíduos

![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/pop1-residuos.png)

### Tempo de simulação
30min


### Análise dos resultados obtidos

Valores obtidos de Cl e Cd:

![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/pop_clcd.png)

Valores obtidos após a simulação

**Cl**= 1.2553387 erro de 1,44%
**Cd**= 0.018362684 erro de 15,62%

Observa-se uma boa precisão do valor de Cl, o que indica que a simulação atendeu à expectativa e trouxe resultados próximos a validação da NASA em processamentos muito mais específicos. A imprecisão no valor de Cd, maior que a definida aceitável na modelagem, de 5%, pode ser explicada por cálculos levando variáveis viscosas na simulação e, principalmente, pela interpolação dos dados que apesar de prática, nem sempre traz uma precisão alta em relação ao valor desejada. Levando isso em consideração, pode-se dizer que o erro de 15,62% é aceitável, e atende aos requisitos, trazendo valores próximos da realidade, uma vez que se encontra entre os valores de Cd para 10° e 15° disponibilizados pela NASA. 



### Imagens de visualização do escoamento

O comportamento do fluxo representa fielmente o comportamento da pressão e da velocidade em escoamentos em perfis aerodinâmicos. Um perfil aerodinâmico possui uma geometria característica que, quando submetida a um escoamento, provoca uma diferença de velocidades entre seu extradorso e intradorso. Devido a diversos efeitos, entre eles o efeito Bernoulli, essa diferença implica em uma diferença de pressões resultante em uma pressão geralmente para cima. Essa, distribuída ao longo da área da asa, é a força de sustentação. Na simulação, velocidade é maior no extradorso e menor no intradorso e a pressão é maior no intradorso e menor no extradorso, comportamento coerente com a realidade.

Velocidade

![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/popvelocidade.png)

Pressão

![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/poppressao.png)

### Stall
Analisando o escoamento pelas imagens geradas, vê-se que não ocorre stall neste ângulo de ataque. Principalmente na visualização da velocidade é fácil ver que não há descolamento da camada limite. É possível notar um feixe azul, que representa uma queda na velocidade, essa é a camada limite do escoamento na superfície do aerofólio. Vale acrescentar que o stol gera uma turbulência e, pela visualização da pressão é possível notar que ela é uniforme ao longo dos arredores da superfície do aerofólio.

### Análise paramétrica: α=30°
Há queda brutal de velocidade e pressão, sendo essas aproximadamente 0, o que significa um descolamento da camada limite. Pode-se notar que como resultado disso que o valor de Cd é quase 30 vezes o valor a 12º, enquanto o Cl é apenas metade. Essa configuração pode ser útil quando a intenção é frear como, por exemplo, no pouso de uma aeronave.

Valores de Cd e Cl gerados:

![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/pop_30cdcl.png)

Velocidade

![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/pop_30velocidade.png)

Pressão

![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/pop_30pressao.png)

  ### Conclusão
  Observa-se que os resultados da análise por CFD são muito próximos da realidade. Inclusive o valor de Cd, em que houve um distanciamento maior que o resultado esperado, está dentro dos limites desejados (entre os valores de 10° e 15°). O comportamento do fluxo representa fielmente o comportamento da pressão e da velocidade em escoamentos em perfis aerodinâmicos. Com rapidez e baixo esforço, o CFD mostrou-se eficiente em analisar o problema com baixo custo e praticidade. Os parâmetros podem ser facilmente trocados para análises em condições diferentes, como com o ângulo de ataque de 30°.

## Refrências bibliográficas

Mecânica dos Fluidos - F. M. White
