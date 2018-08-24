---
title:  Voices of Justice
subtitle: Finding Consensus in the Multitude of Claims
author: David Kurka \and Jeremy Pitt
date: eCAS Workshop, Augsburg, September 12, 2016
header-includes:
    - \usepackage{bbm}
    - \usepackage{algorithm}
    - \usepackage{algpseudocode}
    - \usepackage{unicode-math}
    - \usefonttheme[onlymath]{serif}
    - \metroset{block=fill, progressbar=foot}
    - \institute[Imperial College London]{\includegraphics[width=3cm]{imperial-logo.png}}
---

# Motivation

## Motivation

<!-- TODO: find motivational example, or joke -->
- Obtaining feedback from distributed systems can be challenging
    * Ongoing assynchronous activities can't stop
    * Processing burden for large systems

- In a resource allocation scenario how to evaluate the fairness of a distribution?
    * Whose feedback should be trusted?
    * How to deal with divergence on the feedback?




## Computational Justice Program

**Distributive justice**: recent problem in computer systems and networks (e.g. operating systems, TCP networks, smart-grids), but longstanding problem in social relations.

\vspace{0.3cm}

Towards a **Computational Justice** Framework: social inspired intelligence applied to technical problems
<!-- citar Pitt? -->

###
“Not only must justice be done; it must also be seen to be done”


## Problem Statement
- Network setup:
    - $n$ agents, connected in a graph $G$, performing independent activities and requiring resources to fulfil its tasks
- Availability and demand of resources:
    - At a specific time $t$ (turn), an amount of resources $P(t)$ is made available to all agents and should be shared.
    - Each agent demand $d_i(t)$ ($i \in 1, ... ~, n$)
    - *Economy of scarcity*: $P(t) < \sum_i d_i(t)$
- Resource allocation:
    - Following an allocation policy, agents receive attributions $r_i$ ($0 \leq r_i(t) \leq d_i(t)$)
    - No leftovers: $\sum_i r_i(t) = P(t)$


<!-- TODO: diagram describing this -->

## Metrics of Satisfaction

- Each turn, agents elaborate a metric of *perceived fairness* $\phi_i(t)$, influenced both by **individual** and **local perceptions** of how resources are being allocated
- The sum of all individual perceptions ($\Phi(t) = \sum_i \phi_i(t)$) becomes a metric for **general satisfaction**.

###
Given a cluster engaged in repeated rounds of resource distribution and agents' personal opinions and interactions, how can we ensure that an allocation is "fair"?

# Strategy of Solution

## Strategy of Solution

- Use individual subjective assessments
    - Decentralisated and independent feedback
    - Convergence of opinions can increase reliability (wisdom of the crowds)
    - Gives voice to "regular" individuals

- Questions to be considered:
    - How to deal with malicious agents, trying to misguide the general opinion?
    - How opinions should be weighted, in case of discordance?


## Strategy of Solution

1. **Opinion Formation** - agent opinions are formulated, based on individual experience;
2. **Trust** - agents observe their environment and, through comparison, define its trusts;
3. **Influence** - agents communicate and diffuse opinions through their social influence.


## Opinion Formation

Each individual, in light of the amount of resources received over time and the amount of resources demanded, can elaborate a personal opinion of the fairness of an allocation method.

\vspace{0.2cm}

Different possible metrics:

- Average attended demand
$$
\phi_i(t) = \frac{\displaystyle \sum_{s=1}^t 1{\left \{ r_i(s) = d_i(s) \right \}}}{t}
$$
- Temporal satisfaction
$$
\phi_i(t) =
 \begin{cases}
  (1 - \alpha) \cdot \phi_i(t-1) +  \alpha & \text{if } r_i(t) = d_i(t)\\
  (1 - \beta) \cdot \phi_i(t-1)  & \text{if } r_i(t) < d_i(t)
 \end{cases}
$$


<!-- TODO: fix indicator function  -->
<!--TODO: include citations?  -->
<!--
Note: take into consideration the temporal evolution of the distribution (and not just the average)

$\alpha$ and $\beta$ are respectively positive and negative reinforcement rates ($\alpha, \beta \in [0, 1]$) and can be adjusted to represent the level of optimism/pessimism of individual agents, to system changes.
 -->

## Trust Evaluation

Having formulated its personal opinion, agents then start to observe each other opinions, in order to compare their assessments.

\begin{block}{Guiding principles}
\begin{enumerate}
\item \textbf{Affinity}: trust more those who say coherent things (according to yourself!)
\item \textbf{Reinforcement}: It takes time to change an impression
\end{enumerate}
\end{block}


## Trust Evaluation

1. Accordance index
$$
\tau_{ij}(t) = 1 - (1 + \exp^{-k(|\boldsymbol{\bar\phi_{N_i}(t) - \phi_j(t)} | - \epsilon_0)})^{-1}
$$

where:

$$
\bar\phi_{N_i}(t) = \frac{1}{|N(i)|+1} \sum_{n \in N(i)-\{j\}+\{i\}} \phi_n(t)
$$


2. Trust:

$$
T_{ij}(t) = (1 - \gamma) \cdot T_{ij} \left ( t-1 \right ) +  \gamma \cdot \tau_{ij}(t)
$$

($T_{ij}(0) = 1$ and $T_{ij}(t) = 0$ if $j \not\in N(i)$ )


## Influence

Having the personal opinions $\phi$ and the trust assessments we can model the evolution of opinions under social influence.



$$T =
 \begin{bmatrix}
  T'_{11} & T'_{12} & \cdots & T'_{1n} \\
  T'_{21} & T'_{22} & \cdots & T'_{2n} \\
  \vdots  & \vdots  & \ddots & \vdots  \\
  T'_{n1} & T'_{n2} & \cdots & T'_{nn} \\
 \end{bmatrix}; \qquad T'_{ij} = \frac{T_{ij}}{\sum_j T_{ij}}
 $$

 - Iterative process of opinion propagation (DeGroot):
$$\boldsymbol{\phi'(t) = T^{K}\phi} \qquad  (\phi(t) = [\phi_{1}(t), ...~, \phi_{n}(t)]^T)$$



- Final opinion:
$$\Phi(t) = \frac{1}{n}\sum_i \phi'_i(t)$$



## Algorithm summary

![Complete algorithm](pics/algdiagram.pdf)





# Experiments and Analysis


## Exp 1 - Coherence

\begin{block}{}
Can the solution identify and distinguish fair and unfair allocation schemes?
\end{block}

- Four allocation methods:
    - *Rotation*
    - *Clique first*
    - *Random order*
    - *Ration*


<!-- ## Exp 1 - Coherence

-------------------------------------------- -----------------------------------------------
 ![](pics/voices_exp1_rotation.pdf)       ![](pics/voices_exp1_clique_first.pdf)    

 ![](pics/voices_exp1_random_order.pdf)   ![](pics/voices_exp1_ration.pdf)          
-------------------------------------------- ----------------------------------------------- -->

## Exp 1 - Coherence: Rotation

![Opinions before and after influence for rotation allocation](pics/voices_exp1_rotation.pdf)


## Exp 1 - Coherence: Clique First
![Opinions before and after influence for clique first allocation](pics/voices_exp1_clique_first.pdf)



## Exp 1 - Coherence: Random Order
![Opinions before and after influence for clique first allocation](pics/voices_exp1_random_order.pdf)   

## Exp 1 - Coherence: Ration
![Opinions before and after influence for ration allocation](pics/voices_exp1_ration.pdf)


## Exp 2 - Robustness

\begin{block}{}
Are there mechanisms able to avoid the influence of malicious agents trying to propagate false information?
\end{block}

- Fair allocation (rotation);
- A group of agents always give negative feedback, regardless their situation.


## Exp 2 - Robustness

![](pics/voices_rotation_noinfluence_5cheaters_4nei_30agents-opinions.pdf){ width=45% } ![](pics/voices_rotation_influence_5cheaters_4nei_30agents-opinions.pdf){ width=45% }

## Exp 3 - Resilience
\begin{block}{}
Does it work properly in different topologies and with topology changes?
\end{block}

- Two new topologies tested: small world and random graph
<!-- cite! -->
- In each case, a fair (rotation) and unfair (clique first) allocation is tested


## Exp 3 - Resilience: Small World Network

![Small World Network](pics/voices_exp3_small_world.pdf)


## Exp 3 - Resilience: Random Network
![Random (Erdos Renyi) Network](pics/voices_exp3_random.pdf)


# Conclusion

## Conclusions

- Practical method of evaluating the fairness of a resource allocation, using subjective assessments, information diffusion and influence methods.
- Main features:
    - Decentralised and independent computation of the fairness of an allocation process;
    - Rapid reaction in case of unfairness -- even when there is initial divergence of opinions;
    - Identifying and excluding faulty behaviour (cheating);
    - Robustness to different scenarios and applications.


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
