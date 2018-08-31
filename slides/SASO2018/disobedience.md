---
title: 'Disobedience as a Mechanism of Change'
author: \textbf{David Burth Kurka}^1^, Jeremy Pitt^1^, Peter Lewis^2^, Alina Patelli^2^ and Anikó Ekárt^2^
date: 12th IEEE SASO, 3-7 Sep 2018, Trento Italy
header-includes:
    - \usepackage{bbm}
    - \usepackage{algorithm}
    - \usepackage{algpseudocode}
    - \usepackage{multirow}
    - \usepackage{pgf-umlsd}
    - \usepackage{unicode-math}
    - \usefonttheme[onlymath]{serif}
    - \metroset{block=fill, progressbar=foot}
    - \newcommand{\columnsbegin}{\begin{columns}}
    - \newcommand{\columnsend}{\end{columns}}
    - \institute[Imperial College London and Aston University]{\textsuperscript{1}Department of Electrical and Electronic Engineering, Imperial College London \and \textsuperscript{2}Aston Lab for Intelligent Collectives Engineering, Aston University \and \includegraphics[width=3cm]{imperial-logo.png}\hfill \includegraphics[width=3cm]{aston.png}}
---


# Introduction

## Disobedience in Society

- **Disobedience** has been used historically as a form of resistance and call for change in unfair regimes.
- Among the factors that motivate widespread disobedience are:
    - **The iron law of oligarchy** - The tendency of rulers to change norms to their own benefit.
    - **Principled violation of policy** - Selective common-sense non-application of a sanction.


## Disobedience as learning mechanism

- Can these notions be applied to **norm-governed MAS**?
- Can disobedience be a form of **social learning**, enabling the construction of adaptive systems?
- How can those concepts enable **rule- or ruler-change** of corruptive systems?



# Base Premises and Operationalisation

## Premises

<!-- Progressive table? -->

- **Base Premises**
   - **P1** - A norm is in place
   - **P2** - Compliance is an individual decision
   - **P3** - Existence of monitoring and sanctioning mechanisms

. . .

- **Disobedience Premises**
   - **P4** - Fairness decay over time (corruption)
   - **P5** - Possibility of pardon by law enforcers

. . .

- **Transformation Premises**
   - **P6** - Prescribed ruler destitution

## Players and its roles

- **Rulers** - Resource Allocation Policy
- **Police** - Check if apppropriation = allocation
- **People** - Appropration of resource

<!-- TODO: Include icons -->


## Disobedience levels
![](img/disobedience_flow.pdf)


## Players and its roles

- **Rulers** - $U$ - Corruption of allocation policy
- **Police** - $P_{Cheat}$ - Decision of compliance as reaction of system's feedback (sanction, pardon, not caught)
- **People** - $P_{Forg}$ - Probability of pardon as function of perceived unfairness (PForg=f(gini))

<!-- Formal definition of equations/learning? -->

<!-- ## Principled Violation of Policy -->


<!-- \begin{block}{Definition} -->
<!-- The active and intentional decision of an agent of not applying a policy to which it is entitled. -->
<!-- \end{block} -->

<!-- In norm-governed systems, PVP is the **potential to suspend or relax controlling and retaliation mechanisms**, at the adjudicator's discretion. -->




<!-- # Results and Analysis -->


<!-- ## A - PVP is cost effective -->

<!-- \columnsbegin -->
<!-- \column{0.7\textwidth} -->

<!-- <\!-- ![](pics/lpgp_0cheaters_2nei_30agents-opinions.png){ width=50% } -\-> -->
<!-- <\!-- ![Allocation in scenario without non-compliant agents. Each coloured line represents a different agent.](pics/lpgp_0cheaters_2nei_30agents-alloc.png) -\-> -->
<!-- ![Relative utility of compliant agents for different combinations of $PObs$ and $PCheat$](img/exp1a.png) -->


<!-- \column{0.3\textwidth} -->

<!-- If monitoring has costs, depending on the levels of non-compliance ($PCheat$), increasing the monitoring frequency ($PObs$) has small or negative effect on general utility. -->

<!-- \columnsend -->


<!-- ## B - PVP is tolerant and resilient to accidents -->

<!-- \columnsbegin -->
<!-- \column{0.7\textwidth} -->

<!-- ![Relative utility for different combinations of $PForg$ and $PCheat$.](img/exp1b.png) -->

<!-- \column{0.3\textwidth} -->

<!-- <\!-- When levels of non-compliance ($PForg$) are low, punishment can be counter-productive, as it might not distinguish accidents and might exclude collaborative agents. -\-> -->

<!-- In scenarios with low levls of non-compliance ($PForg$), higher utility is achieved by letting eventual non-compliant agents participate of the game, than excluding them through sanctioning. -->

<!-- \columnsend -->



<!-- ## C - PVP is adaptable to different scenarios and behaviours -->

<!-- \columnsbegin -->
<!-- \column{0.7\textwidth} -->

<!-- ![Comparison of utility from different strategies, for various configurations of population. Each configuration label shows the different values of $PCheat$  among the players population.](img/exp2.pdf) -->

<!-- \column{0.3\textwidth} -->

<!-- Compared to fixed policy strategies, flexible strategy (reinforcement, in graph) is able to achieve overall better results, for different scenarios of non-compliance. -->

<!-- \columnsend -->

<!-- ## D - PVP as a tool for justice perception -->

<!-- \columnsbegin -->
<!-- \column{0.7\textwidth} -->

<!-- ![Relationship between cooperation rate ($\#\text{cooperations}/\text{\#turns}$) and punishment rate ($\#\text{sanctions}/\#\text{non-compliance}$)](img/exp3.pdf) -->

<!-- \column{0.3\textwidth} -->

<!-- In scenarios where PVP is learned and exercised, agents with high levels of cooperation receive proportionally less sanctions than the ones who do not cooperate as often. -->

<!-- \columnsend -->






# Conclusion


## Final Remarks

- The Principled Policy Violation (PVP) is a pertinent and advantageous mechanism in the development of norm-governed open systems;
- PVP enable solutions that are:
    a. Cost effective;
    b. Tolerant and resilient to accidents;
    c. Adaptable to different scenarios and behaviour
    d. Used as a tool of justice perception and policy justification


- Future steps:
    - Explore  *externalities* associated to PVP (e.g. social capital, resentment, shame)
    - Investigate adaptable behaviour
    - PVP as mechanism of social change/revolution in unfair environments



## Acknowledgemnts

- National Council for Scientific and Technological Development (CNPq), Brazil;

- Diverse colaborators.

\begin{figure}
\centering
\includegraphics[width=0.3\textwidth]{cnpq.png}
\end{figure}

\begin{figure}
\centering
\includegraphics[width=0.3\textwidth]{csf.png}
\end{figure}


## {.standout}

Thank you!
