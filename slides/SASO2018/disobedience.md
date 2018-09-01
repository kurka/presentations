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

<!-- TODO: Progressive table? -->

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


## Learning variables
<!-- \columnsbegin -->
\begin{columns}[T]
\column{0.33\textwidth}

\textbf{Rulers}

$\mathbf{U}$ - Corruption of allocation policy

\begin{center}
$$U = f(t)$$
\end{center}

\column{0.33\textwidth}

\textbf{Police}

$\mathbf{P_{forg}}$ - Probability of sanctioning pardon as function of perceived fairness


$$P_{forg} = f(fairness)$$

$$fairness \sim Gini(Satisf)$$

\column{0.33\textwidth}

\textbf{People}

$\mathbf{P_{Cheat}}$ - Decision of compliance as reaction of system's feedback

$$P_{Cheat} = f(fairness_i)$$

\end{columns}
<!-- \columnsend -->

<!-- TODO: fixme! -->
<!-- 1. Sanction -->
<!--      $$ PCheat' = -->
<!--      \begin{cases} -->
<!--       (1 - \alpha_{1}) \cdot PCheat +  \alpha_{1} & \text{if } \neg IsFair\\ -->
<!--       (1 - \beta_{2}) \cdot PCheat  & \text{if } IsFair -->
<!--      \end{cases} $$ -->
<!-- 2. Forgiveness -->
<!--      $$PCheat' = PCheat$$ -->
<!-- 3. Not Caught -->
<!--      $$PCheat' = (1-\alpha_{2}) \cdot PCheat + \alpha_{2}$$ -->
<!-- 4. Compliant -->
<!--      $$PCheat' = (1 - \beta_{2}) \cdot PCheat$$ -->


# Experimanetal Results

## Exploratory Space

![Exploratory space considered in experiments. Labels give interpretations of system behaviour at each quadrant.](img/space_disob.pdf)

<!-- TODO: also present timeline structure? -->

## Base Game

\columnsbegin
\column{0.7\textwidth}

![](img/phasebase-crop.pdf)

\column{0.3\textwidth}

Without pardoning or reformation, People stay at the mercy of rulers, not having
another rational choice than obeying, no matter how unfair is the current
policy.


\columnsend

. . .

<!-- ![](img/timebase.pdf)![](img/timeunjustified.pdf)![](img/timeexploitation.pdf)![](img/timeoppresion.pdf) -->
\includegraphics[width=0.24\linewidth]{img/timebase.pdf}
\includegraphics[width=0.24\linewidth]{img/timeunjustified.pdf}
\includegraphics[width=0.24\linewidth]{img/timeexploitation.pdf}
\includegraphics[width=0.24\linewidth]{img/timeoppresion.pdf}

<!-- TODO: fix sizes and add caption -->
<!-- % \begin{center} -->
<!-- % \includegraphics[width=1.0\columnwidth]{img/timebase.pdf}% \hspace{4em} -->

<!-- % \includegraphics[width=1.0\columnwidth]{img/timeunjustified.pdf} -->

<!-- % \includegraphics[width=1.0\columnwidth]{img/timeexploitation.pdf}% \hspace{4em} -->

<!-- % \includegraphics[width=1.0\columnwidth]{img/timeoppresion.pdf} -->
<!-- % \end{center} -->
<!-- \begin{figure}[H] -->
<!--   \centering -->
<!--   \subfloat[Peace]{\includegraphics[width=.25\linewidth]{img/timebase.pdf}\label{fig:stability}} -->
<!--   \subfloat[Unjust.\ Disobedience]{\includegraphics[width=.25\linewidth]{img/timeunjustified.pdf}\label{fig:unjustified}} -->
<!--   \subfloat[Exploitation]{\includegraphics[width=.25\linewidth]{img/timeexploitation.pdf}\label{fig:exploitation}} -->
<!-- \subfloat[Oppression]{\includegraphics[width=.25\linewidth]{img/timeoppresion.pdf}\label{fig:oppression}} -->
<!-- \end{figure} -->


## First Extension - Pardoning

\columnsbegin
\column{0.6\textwidth}

![](img/phaseext1.pdf)

\column{0.4\textwidth}

- Obedience is now conditioned to unfairness level: if fair, agents obey; if
unfair, tendency to non-compliance

- Differentiation between justified and unjustified disobedience: given unfair
allocation policy, Police validate norms disobedience, pardoning transgressions


\columnsend

## First Extension - Pardoning

\columnsbegin
\column{0.6\textwidth}

![](img/phaseext1.pdf)

\column{0.4\textwidth}

![Revolution](img/timerevolution.pdf)

<!-- Agents can protest by freely demonstrating their dissatisfaction and -->
<!-- appropriating resources, restoring the environment's fairness. -->

\columnsend


## Second Extension - Reformation

- Lost of governability implies in **ruler change**

- If $\bar{\text{NCompliant}} \geq \mathcal{T} \rightarrow \text{Reformation}$

<!-- TODO: fixme -->


- Set of non Rulers become the new Rulers, individual satisfaction is randomly
restarted


## Equilibrium 1 - Reformation cycles

\columnsbegin
\column{0.6\textwidth}

![](img/trajext2corrupted.pdf)

\column{0.4\textwidth}

![](img/timecycle.pdf)

\columnsend

- Perpetual cycle of power change
- Alternation of power and higher overall satisfaction.
- Points out the need for post-revolution reconstruction.

## Equilibrium 2 - Popular control

\columnsbegin
\column{0.6\textwidth}

![](img/trajtories.pdf)

\column{0.4\textwidth}

![](img/timetories.pdf)

\columnsend

Knowing the Reformation Threshold $\mathcal{T}$, unfairness is manipulated so
Rulers can please People with just the amount of resource needed so they
disobedience remains in controlled levels.


## Equilibrium 3 - Pragmatic revolution

\columnsbegin
\column{0.6\textwidth}

![](img/phaseapolitical.pdf)

\column{0.4\textwidth}

![](img/timeapolitical.pdf)

\columnsend

People disobey just enough to guarantee that satisfaction (and resource) is the
same for all agents.

# Conclusion


## Final Remarks

- \alert{Disobedience} as tool for adaptive learning in norm-governed MAS
    - Standard norm-governed systems guarantees agents' **obedience**, but not
    **governance fairness**, allowing exploitation and oppresion of agents
    - The introduction of **pardoning mechanisms** changes the system's dynamic
    equilibrium by justfifying **disobedience** as a revolutionary behaviour for
    justice restoration
    - The introduction of formal **reformation mechanisms** changes the equilibrium once
    more, giving supplemenatary power to non-Rulers and enabling **cycles of
    change**
    
- Open questions / Future work:
    - Could have we defined subjective terms such as *fairness*, *obedience*, *unjustified*,
        *revolution* in different ways?
    - What would happen if agents had limited or subjective knowledge of events
      happening in the network? How interpersonal factors such as *social
      influence*, *trust* and *misinformation* would affect the system?
    - How to escape from simple system reformation and move towards
      post-revolution reconstruction?

  

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
