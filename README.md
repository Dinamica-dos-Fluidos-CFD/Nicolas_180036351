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

## Introdução

### Objetivo
Com o intuito de aplicar o conhecimento adquirido durante as aulas ao longo do semestre 2020/2 da disciplina de Dinâmica dos Fluidos na Universidade de Brasília foi proposta a realização de um projeto em CFD através do software Ansys. O objetivo é simular um escoamento através de um perfil aerodinâmico NACA 0012. Por fim, com os dados obtidos, determinar cenários de comportamento aerodinâmico do perfil.
  ### Perfis Aerodinâmicoa
  Um perfil aerodinâmico é a seção transversal de uma asa ou aerofólio. Possui uma geometria característica que, quando submetida a um escoamento, provoca uma diferença de de velocidades entre seu extradorso e intradorso. Devido a diversos efeitos, entre eles o efeito Bernoulli, essa diferença implica em uma diferença de pressões resultante em uma pressão geralmente para cima. Essa distribuída ao longo da área da asa é a força de sustentação, respondável por fazer veículos aéreos voarem.
  ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/intro_anatomiaperfil-small.png)
  ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/intro_forcasperfil-small.png)
  ### O fenômeno de Stall
   O fenômeno de Stall, ou Estol em português, é o descolamento total da camada limite do extradorso de um perfil aerodinâmico. Como resultado disso, não há diferença de pressão e velocidade e se perde totalmente a força de sustentação, causando uma queda livre. Na aviação contemporânea, a sustentação normalmente é rapidamente recuperada, mas há exceções que fazem o fenômeno de Stall uma das principais causas de acidêntes aéreos especialmente em aeronaves de pequeno porte.
   Exemplo de acidente aéreo por Stall: https://www.youtube.com/watch?v=_L7o_JlPg5w
   
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
  
  ## Modelagem
  ### Condições de Contorno
  Para o problema, foi utilizado 
  Número de Reynolds Re= 6000000
  Velocidade U=88,69 m/s
  yplus<1
  y<= 4,5e-6

  ### Geometria
   O perfil NACA 0012 tem como suas principais características a simeteria e a espessura a 12% da corda. Utilizando de sites pôde-se obter os pontos que representam o aerofolio no plano XY, inserindo esses pontos no Geometry Modeler, obtém-se o aerfolio.
  (mudar tamanho das imagens)
  
  ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/NACA0012airfoilcustom_print-small.png)
  
 ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/geometria_aerofolio-small.png)
 
  O domínio em C, como usado na validação da NASA, deve ser de uma dimensão muito superior à do perfil para não gerar efeitos de parede no escoamento. Na modelagem o domínio foi determinado 20 vezes maior que a corda do aerofolio, que mede 1 metro.
   ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/dominionasa-small.png)
   ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/geometria_dominio-small.png)
  
  ### Malha
  (problemas com a malha e ansys no computador: reinstalar/ usar computador do david/ assistencia ultimo caso)
 tentativa 1:  reinstalar o ansys; reinstalando o ansys o computador consegue fazer a malha, mas ela sai toda errada, mesmo com todos os sizings feitos corretamente. Após algumas tentativas fazendo e refazendo tudo do 0, a malha saiu razoavelmente aceitavel.
 
 ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/mesh-small.png)
  
  ## Simulação
  (esperando a malha)
  ### Pré-Processamento
  ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/pm_general-small.png)
  
  ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/prm_airproperties-small.png)
  
  ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/prm_viscousmodel-small.png)
  
  ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/prm_velocityinlet-small.png)
  obs: coordenada y = 0.20791169081 para atender ao angulo de ataque de 12°
  ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/prm_pressureoutlet-small.png)
  ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/prm_dragreport-small.png)
  ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/prm_methods-small.png)
  ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/prm_residualmonitors-small.png)
  ![]()
  ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/prm_methods-small.png)
  ![](https://github.com/Dinamica-dos-Fluidos-CFD/Nicolas_180036351/blob/master/prm_runcalculation-small.png)
  ![]()
  ![]()
  ### Pós-Processamento

  ## Resultados
  ### Conclusão
