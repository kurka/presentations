---
title: 'Disobedience as a Mechanism of Change'
author: \textbf{David Burth Kurka}^1^, Jeremy Pitt^1^, Peter Lewis^2^, Alina Patelli^2^ and Anikó Ekárt^2^
date: 12th IEEE SASO, 3-7 Sep 2018, Trento Italy
header-includes:
    - \usepackage{graphicx}
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

## Aim and Scope

> The social concept of \alert{disobedience} can be used as a
>  mechanism for \alert{adaptive and exploratory learning} in norm-governed
>  multi-agent systems.

## Disobedience in Society

\columnsbegin
\column{0.6\textwidth}

- **Disobedience** has been used historically as a form of resistance and call for change in unfair regimes.
- Among the factors that motivate widespread disobedience are:
    - **The iron law of oligarchy** - the tendency for a small group to emerge
    an run complex organisations for its own benefit, rather than the collective
    interest
    - **Principled violation of policy** - law enforcement relaxation, with
      selective common-sense non-application of sanctions


\column{0.4\textwidth}

![Suffragette's in UK](./img/suffragettes.jpg)

\columnsend

## Disobedience as Learning Mechanism

\columnsbegin
\column{0.6\textwidth}

- Can these notions be applied to **norm-governed MAS**?
- How to deal with systems with **disfunctional norms**?
- Can disobedience be a form of **collective learning**, enabling **adaptive
  systems**?


\column{0.4\textwidth}

![](img/robotdisobedience.jpg)

\columnsend

# Base Premises and Operationalisation

## Premises


- **Base Premises**
   - **P1** - A norm is in place
   - **P2** - Compliance is an individual decision
   - **P3** - Existence of monitoring and sanctioning mechanisms

. . .

- **Disobedience Premises**
   - **P4** - Fairness decays over time (corruption)
   - **P5** - Possibility of pardon by law enforcers


- **Transformation Premises**
   - **P6** - Prescribed ruler destitution and new government formation

## Operationalisation

\columnsbegin

\column{0.2\textwidth}

![](img/disobedience-players.pdf){ height=50% }

\column{0.8\textwidth}


- Resource allocation scenario
- Players and its roles:
    - **Rulers** - Resource allocation policy
    - **People** - Appropration of resource
    - **Police** - Check if apppropriation = allocation

\columnsend


## Disobedience levels
![](img/disobedience_flow.pdf)


<!-- ## Learnable variables -->
<!-- \begin{columns}[T] -->
<!-- \begin{column}{0.25\textwidth} -->

<!-- \textbf{Rulers} -->

<!-- \vspace{5pt} -->
<!-- $\mathbf{U}$ - Corruption of allocation policy -->

<!-- \vspace{30pt} -->

<!-- $$ -->
<!-- \scalebox{0.9}{% -->
<!-- $U = f(t)$ -->
<!-- }$$ -->

<!-- \end{column} -->

<!-- \begin{column}{0.35\textwidth} -->

<!-- \textbf{People} -->

<!-- \vspace{5pt} -->

<!-- $\mathbf{P_{Cheat}}$ - Decision of compliance as reaction of system's feedback -->

<!-- $$ -->
<!-- \scalebox{0.9}{% -->
<!-- $P_{Cheat} = f(fairness_i)$ -->
<!-- }$$ -->

<!-- $$ -->
<!--   \scalebox{0.8}{$ -->
<!--      \begin{cases} -->
<!--       \uparrow & \text{if sanctioned} \land \neg \text{fair} \\ -->
<!--       \downarrow & \text{if sanctioned} \land \text{fair} \\ -->
<!--       = & \text{if forgiven}\\ -->
<!--       \uparrow & \text{if not caught}\\ -->
<!--       \downarrow & \text{if compliant} -->
<!--      \end{cases} -->
<!--      $} -->
<!-- $$ -->

<!-- \end{column} -->
<!-- \begin{column}{0.35\textwidth} -->

<!-- \textbf{Police} -->

<!-- \vspace{5pt} -->
<!-- $\mathbf{P_{Forg}}$ - Probability of sanctioning pardon as function of perceived fairness -->

<!-- \vspace{-14pt} -->

<!-- $$ -->
<!-- \scalebox{0.9}{% -->
<!-- $P_{forg} = f(fairness)$ -->
<!-- }$$ -->

<!-- $$ -->
<!-- \scalebox{0.8}{% -->
<!-- $fairness \sim Gini(Sat)$ -->
<!-- } -->
<!-- $$ -->

<!-- \end{column} -->

<!-- \end{columns} -->

## Learnable variables
<!-- \columnsbegin -->

\textbf{Rulers}: 

$\qquad \mathbf{U}$ - Corruption of allocation policy

\vspace{-20pt}
$$
\scalebox{0.8}{%
$U = f(\mathit{time})$
}$$

\vspace{-15pt}

\textbf{Police}: 

$\qquad \mathbf{P_{forg}}$ - Probability of sanction pardon as function of perceived fairness

\vspace{-20pt}

$$
\scalebox{0.8}{%
$P_{forg} = f(\mathit{fairness}) \qquad \mathit{fairness} \sim Gini(\mathit{Satisf})$
}$$

\vspace{-15pt}

\textbf{People}: 

$\qquad \mathbf{P_{Cheat}}$ - Decision of compliance as reaction of system's feedback

\vspace{-20pt}

$$
\scalebox{0.8}{%
$P_{Cheat} = f(\mathit{fairness}_i) \qquad
    \begin{cases}
    \uparrow & \text{if sanctioned} \land \text{unfair} \\
    \downarrow & \text{if sanctioned} \land \text{fair} \\
    = & \text{if forgiven}\\
    \uparrow & \text{if not caught}\\
    \downarrow & \text{if compliant}
    \end{cases}
    $
}$$


# Experimental Results

## Exploratory Space

\centering

![](img/space_disob.pdf){ width=75% }


<!-- TODO: also present timeline structure? -->


## Base Game

\columnsbegin
\column{0.6\textwidth}

![](img/phasebase-crop.pdf)

\column{0.4\textwidth}

Without pardoning or reformation, People stay at the mercy of rulers, not having
another rational choice than to obey, no matter how unfair is the current
policy.


\columnsend

## Base Game

\columnsbegin
\column{0.6\textwidth}

![](img/phasebase-crop.pdf)

\column{0.4\textwidth}


Peace:

![](img/timebase.pdf)


Unjustified Disobedience:

![](img/timeunjustified.pdf)

\columnsend

## Base Game

\columnsbegin
\column{0.6\textwidth}

![](img/phasebase-crop.pdf)

\column{0.4\textwidth}


Exploitation:

![](img/timeexploitation.pdf)


Oppresion:

![](img/timeoppresion.pdf)

\columnsend


## First Extension - Pardoning

\columnsbegin
\column{0.6\textwidth}

![](img/phaseext1.pdf)

\column{0.4\textwidth}


Obedience is conditioned to unfairness level: 

If fair, agents obey; if
unfair, tendency to non-compliance
\newline

Police validates justified norms disobedience, pardoning transgressions


\columnsend

## First Extension - Pardoning

\columnsbegin
\column{0.6\textwidth}

![](img/phaseext1.pdf)

\column{0.4\textwidth}

Revolution:
\newline

![](img/timerevolution.pdf)

<!-- Agents can protest by freely demonstrating their dissatisfaction and -->
<!-- appropriating resources, restoring the environment's fairness. -->

\columnsend



<!-- ## Second Extension - Reformation -->

<!-- - Lost of governability implies in **ruler change** -->
<!-- - If $\text{Non-Compliance} \geq \mathcal{T} \rightarrow \text{Reformation}$ -->
<!-- - Set of non Rulers become the new Rulers, individual satisfaction is randomly -->
<!-- restarted -->


<!-- - 3 possible equilbibria... -->

#
## Second Extension - Reformation - Reformation Cycles

\columnsbegin
\column{0.6\textwidth}


![](img/trajext2corrupted.pdf)

\column{0.4\textwidth}


![](img/timecycle.pdf)

\columnsend

- Perpetual cycle of power change
- Alternation of power and higher overall satisfaction.
- Points out the need for post-revolution reconstruction.

## Second Extension - Reformation - Popular Control

\columnsbegin
\column{0.6\textwidth}

![](img/trajtories.pdf)

\column{0.4\textwidth}

![](img/timetories.pdf)

\columnsend

Knowing the Reformation Threshold $\mathcal{T}$, unfairness is manipulated so
Rulers please People with just enough resources so their disobedience remains in
controlled levels.


## Second Extension - Reformation - Pragmatic Revolution

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

- \alert{Disobedience} as a tool for adaptive learning in norm-governed MAS
    - Usual systems try to guarantee **obedience**, but not **governance
      fairness**
    - **pardoning mechanisms** justify **disobedience** as a revolutionary
      behaviour for justice restoration
    - Formal **reformation mechanisms** give power to non-Rulers and enables
      **cycles of change**
      \newline
    
    
- Open questions / Future work:
    - Can subjective terms as ***fairness*, *obedience*, *unjustified*,
        *revolution*** be defined in different ways?
    - What are the effects of limited or subjective knowledge of events? How
      interpersonal factors such as ***social influence*, *trust* and
      *misinformation*** could affect the system?
    - How to escape from simple system reformation and move towards
      **post-revolution reconstruction**?

<!-- TODO: shrink!   -->

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
