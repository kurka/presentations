---
title: 'Smart-CPR: Self-Organisation and Self-Governance in the Sharing Economy'
author: David Kurka \and Jeremy Pitt
date: SASO^ST 2017, Tucson, AZ, September 22, 2017
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
    - \institute[Imperial College London]{\includegraphics[width=3cm]{imperial-logo.png}}
---

# Introduction

## Motivation

- The increasing automation and capacity of communication of **industrial systems** brings new possibilities and challenges to the sector.

- We investigate a problem of distributed and collective supply and discuss solutions to the issue of **fair and reliable** decision making in open systems.


- By combining principles of **social organisation and cooperation** with
**blockchain and smart-contract** technologies, we can develop a system able to:
    - intermediate communication between producers;
    - make justifiable decisions of resource allocation; and
    - avoid and punish possible abuses from the participants. 


## Problem Formulation


- Producers independently operate in a market of common manufactured widgets
- Over time, producers receive demands for products ($q$) and keep a capacity of production output ($g$)
- Producers cooperate by distributing offer ($p$) and demand ($d$) in a common pool of services
- Resources of industrial supply and demand are distributed ($r$) among producers, following stipulated rules

![The $LPG'$ Game](pics/lpg.pdf)

## Questions

- How to ensure \textbf{efficient, fair, inclusive and sustainable} ways to distribute services among producers?
- What \textbf{rules and norms} should govern the interactions and transactions?
- \textbf{Who} should determine the stipulated rules? 
- How to deal with \textbf{abuses} and \textbf{non-compliance} to the rules?

# System Design and Algorithm
## Actors Model: Smart-CPR


![Smart-CPR system model with interactions between the system's actors.](pics/smartpool_ind.pdf)

## Producer


\columnsbegin
\column{0.5\textwidth}

\renewcommand{\algorithmicrequire}{\textbf{Attributes:}}

\algrenewcommand\algorithmicprocedure{\textbf{event}}

\begin{algorithm}[H]
  \footnotesize
\begin{algorithmic}[0]
\Require
\State $\mathit{Need}$ - resources currently needed
\State $\mathit{Avail}$ - resources available
\State $\mathit{PKeep}$ - prob of user not sharing available
resource
\State $\mathit{PoolAnswers}$ - record of CPR Manager's answers to requests
\Statex
\Procedure{ResourceGeneration}{$G$}%\Comment{New resource available}
\State $\mathit{Decision} \gets \Call{KeepOrContribute}{\mathit{PKeep}}$
\If{$\mathit{Decision} = \mathit{keep}$}
    \State $\mathit{Provision} \gets \text{rand}(0,1)*G$
\ElsIf{$\mathit{Decision} = \mathit{contribute}$}
    \State $\mathit{Provision} \gets G$
\EndIf
    \State \Call{Send}{$\mathit{CPRManager}, G$}
    \State $\mathit{Avail} \gets  G - \mathit{Provision}$
\EndProcedure
\Statex
\Procedure{UpdateNeed}{$Q$}%\Comment{New demand for resources}
\State $\mathit{Need} \gets Q$
\State \Call{Request}{$\mathit{CPRManager}, Q$}
\EndProcedure
\Statex
\Procedure{PoolProvision}{$R, \mathit{Reason}$}%\Comment{Receive resource allocated from Pool}
\State $\mathit{Accrued} \gets \mathit{Avail} + R$
\State \Call{ConsumeResources}{$\mathit{Need, Accrued}$}
\State $\mathit{PoolAnswers} \gets \mathit{PoolAnswers} \cup \{R, \mathit{Reason}\}$
\EndProcedure
\Statex
\Procedure{VoteForChange}{}%\Comment{Propose new rules policy}
\State $\mathit{NewVote} \gets \Call{FormulateVote}{\mathit{PoolAnswers}}$
\State \Call{Send}{$\mathit{CCArena}, \mathit{NewVote}$}
\EndProcedure
\end{algorithmic}%
\caption{Producer}\label{alguser}
\end{algorithm}

\column{0.5\textwidth}

\begin{block}{}
\begin{itemize}
    \item Responsible for mediating provision and demands of resources to the CPR Manager
    \item Participant of the Collective Choice Arena, being able to cast votes and update CPR Manager's policies to it's own benefit
\end{itemize}
\end{block}


\columnsend




## CPR Manager

\columnsbegin
\column{0.5\textwidth}

\renewcommand{\algorithmicrequire}{\textbf{Attributes:}}

\algrenewcommand\algorithmicprocedure{\textbf{event}}

\begin{algorithm}[H]
  \footnotesize
\caption{CPR Manager}\label{algpool}
\begin{algorithmic}[0]
\Require 
\State $\mathit{Pool}$ - amount of resources available in the common-pool
\State $\mathit{Rules}$ - smart-contract, specifying the rules used to judge whether a request should be accepted or not
\State $\mathit{Ledger}$ - blockchain recording users' interaction with CPR Manager
\Statex
\Procedure{ReceiveProvision}{$P, \mathit{UserId}$}%\Comment{Receive provision from user}
\State $\mathit{Pool} \gets \mathit{Pool} + P$
\State $\mathit{Ledger} \gets \Call{UpdateLedger}{\mathit{UserId}, \text{provision}, P}$
\EndProcedure
\Statex
\Procedure{ResourceRequest}{$D, \mathit{UserId}$}%\Comment{User request resource}
\State $\mathit{Ledger} \gets \Call{UpdateLedger}{\mathit{UserId}, \text{demand}, D}$
% \State $(\mathit{Decision}, \mathit{Reason}) \gets \Call{ApplyRules}{\mathit{Rules}, \mathit{Ledger}, \mathit{UserId}}$
\State $\mathit{Decision} \gets \Call{ApplyRules}{\mathit{Rules}, \mathit{Ledger}, \mathit{UserId}}$
\If{$\mathit{Decision} = \mathit{accepted}$}
    \State \Call{Send}{$\mathit{UserId}, D, \mathit{Reason}$}
\ElsIf{$\mathit{Decision} = \mathit{denied}$}
    \State \Call{Send}{$\mathit{UserId}, 0.0, \mathit{Reason}$}
\EndIf
\State $\mathit{Ledger} \gets \Call{UpdateLedger}{\mathit{UserId}, \text{allocation}, A}$
\EndProcedure
\Statex
\Procedure{UpdatePolicy}{$\mathit{NewRules}$}%\Comment{Receive new rules from CCArena}
\State $\mathit{Rules} \gets \mathit{NewRules}$
\EndProcedure
\end{algorithmic}
\end{algorithm}

\column{0.5\textwidth}

\begin{block}{}
\begin{itemize}
    \item Smart-Contract define policy and rules for responses for resources request
    \item Responsible for fast decision making of resource allocation
    \item Blockchain ledger stores producers participation and behaviour
\end{itemize}
\end{block}
\columnsend



## Arena for Collective Choice

\columnsbegin
\column{0.5\textwidth}

\renewcommand{\algorithmicrequire}{\textbf{Attributes:}}

\algrenewcommand\algorithmicprocedure{\textbf{event}}

\begin{algorithm}[H]
  \footnotesize
\caption{Collective Choice Arena}\label{algarena}
\begin{algorithmic}[0]
\Require 
    \State $\mathit{VotesHistory}$- record of users' past votes, used to define new policies
    \State $\mathit{CurrentRules}$ - smart-contract that is currently being implemented by CPR Manager
    \State $\mathit{Threshold}$ - number of votes considered to trigger change
\Statex
\Procedure{ReceiveVote}{$V, \mathit{UserId}$}%\Comment{Receive new vote from user}
\State $\mathit{VotesHistory} \gets \mathit{VotesHistory} + V$
\State $\mathit{ReceivedVotes} \gets \text{length}(\mathit{VotesHistory})$
\If{$\mathit{ReceivedVotes} \geq \mathit{Threshold}$}
    \State $\mathit{NewRules} \gets \Call{NewSmartContract}{\mathit{VotesHistory}}$
    \State \Call{Send}{$\mathit{SmartPool}, \mathit{NewRules}$}
\ElsIf{$\mathit{ReceivedVotes} < \mathit{Threshold}$}
    \State wait more votes
\EndIf
\EndProcedure
\end{algorithmic}
\end{algorithm}

\column{0.5\textwidth}

\begin{block}{}
\begin{itemize}
    \item Compute producers' votes for change on CPR Manager rules
    \item Issue new smart-contracts to be used as policy for CPR Manager
\end{itemize}
\end{block}

\columnsend



## Policy Making - Smart-Contract

Rescher's legitimate claims of justice as used as metric to evaluate producer participation in the system (according to the public ledger)

\begin{table}
\renewcommand{\arraystretch}{1}
\small
\centering
% \caption{Legitimate claims of justice.}
\label{claims}
\begin{tabular}{|l|l|}
\hline
\multicolumn{1}{|l|}{\multirow{2}{*}{Canons of equality}} &  $\phi_{i}^{1} = R_i$ \\ \cline{2-2} 
\multicolumn{1}{|l|}{}                               &  $\phi_{i}^{2} = 
                                                          \begin{cases} 
                                                          (1 - \alpha) \cdot \phi_{i}^{2} +  \alpha & \text{if accepted req.}\\
                                                          (1 - \beta) \cdot \phi_{i}^{2} & \text{if denied req.}
                                                        \end{cases}$ \\ \hline
Canon of needs                                       &  $\phi_{i}^{3} = D_i$ \\ \hline
Canon of productivity                                &  $\phi_{i}^{4} = P_i$ \\ \hline
Canon of effort                                      &  $\phi_{i}^{5} = \mathit{CurTime} - \mathit{JoiningTime}$ \\ \hline
  Canon of social utility                              &  $\phi_{i}^{6} = \mathit{Status}(i)$\\ \hline
\end{tabular}
\end{table}




## Policy Making - Smart-Contract (cont.)

\renewcommand{\algorithmicrequire}{\textbf{Require:}}

\algrenewcommand\algorithmicprocedure{\textbf{Smart-contract}}

Upon a request for resource, a weighted sum of the claims is computed and a response is evaluated based on a smart-contract policy

\begin{algorithm}[H]
  \footnotesize
\renewcommand\thealgorithm{}
\caption{Smart-Contract}\label{smartcontract}
\begin{algorithmic}[0]
\Require 
\State $W = [w_1, w_2 \dots w_n]$\Comment{Weights for different claims}
\State $S_t$\Comment{Score Threshold}

\Statex
\Procedure{EvaluateRequest}{}%{$UserId, Request, Ledger$}
\State $\Phi_i = [\phi^1_i, \phi^2_i \dots \phi^n_i] \gets \Call{getMerit}{\mathit{Ledger}, \mathit{UserId}}$
\State $S_i = \sum_{j=1}^{|C|} \left ( w_j * \phi_{i}^{j} \right)$
\If{$S_i \geq S_t \land \mathit{Pool} \geq \mathit{Request}$}
    \State \textbf{return} $\textit{accepted}$
\Else
    \State \textbf{return} $\textit{denied}$
\EndIf
\EndProcedure
\end{algorithmic}
\end{algorithm}



# Experimental Results


## Full Compliance - Canon's weights self-organisation

\columnsbegin


\column{0.7\textwidth}

![Weights progression in full compliance case.](pics/weights_exp0_lc.png)

\column{0.3\textwidth}

Relevant canons are selected, so that weights that measure merit gain more importance, while weights where producers have same values go to zero.



\columnsend


## Full Compliance - Resource Distribution Results

\columnsbegin


\column{0.7\textwidth}


\begin{table}
\centering
\caption{Average users values, at the end of execution.}
\label{usersexp0}
\begin{tabular}{ll}
\textbf{Physical Facts}   &                     \\
Demand                    & $4096.49 \pm 14.24$     \\
Accrued                   & $2730.12 \pm 18.00$ \\
Generated                 & $2730.17 \pm 17.85$ \\
Allocated                 & $2730.12 \pm 18.00$ \\
\textbf{Analytical Facts} &                     \\
Utility                   & $1361.14 \pm 71.96$      \\%
Satisfaction              & $0.6493  \pm 0.0881$      \\%
Resources/Need            & $0.6657 \pm 0.0050$ \\
Gini Index R/N            & $0.0038$      
\end{tabular}
\end{table}

\column{0.3\textwidth}

CPR Manager returns every producer's investment equally, acting as a scheduler, distributing resources to agents efficiently


\columnsend



## Full Compliance - Resource Distribution Results (cont.)

\columnsbegin


\column{0.7\textwidth}


\begin{table}
\centering
\caption{CPR Manager results after execution for compliant population.}%(in resource units)}
\label{poolexp0}
\begin{tabular}{ll|ll}
In     & 81905.27 & Rejected   & 61288  \\
Out    & 81903.80 & Rej. Rule  & 52003  \\
Out/In & 99.99\%  & Rej. Short & 9285  \\
Requests   & 163583 & &          
\end{tabular}
\end{table}
\column{0.3\textwidth}

System can solve the trade-off between storing resources for urgent future requests and attending immediate demands.

\columnsend


## Mixed Population - Canon's weights self-organisation

\columnsbegin


\column{0.7\textwidth}

![Weights progression without full compliance.](pics/weights_exp1_lc.png)

\column{0.3\textwidth}

Agents are able to self-organise the relevance of weights in order to benefit the majority of t

Weights adapt in favour of the compliant users, as weight 4 directly penalises agents that provide less resources.


\columnsend


## Mixed Population - Resource Distribution Results

\columnsbegin


\column{0.7\textwidth}

\begin{table}
\centering
\caption{Average producers' data, at the end of execution, for compliant and non-compliant users.}
\label{usersexp1}
\begin{tabular}{ll|l}
                          & \textbf{Compliant}    & \textbf{Non Compliant} \\
\textbf{Physical Facts}   &                     &                      \\
Need                      & $4090.10 \pm 23.12$ & $4096.40 \pm 8.87$      \\
Resources                 & $3864.74 \pm 48.35$ & $454.72 \pm  14.71$  \\
Generated                 & $2726.43 \pm 15.67$ & $2732.29 \pm 18.09$  \\
Allocated                 & $3838.11 \pm 47.41$ & $111.71 \pm 14.65$  \\
Withheld                  & $26.63   \pm 3.40$  & $343.01 \pm 7.01$  \\
\textbf{Analytical Facts} &                     &                      \\
Utility                   & $6963.64 \pm 226.47$& $-10033.87 \pm 89.85$  \\
Satisfaction              & $0.98 \pm 0.02$     & $0.00 \pm 0.00$  \\
Resources/Need            & $0.945 \pm 0.0119$  & $0.110 \pm 0.0047$  \\
Gini Index R/N            & $0.00699$           & $0.01818$           
\end{tabular}
\end{table}



\column{0.3\textwidth}

Compliant producers are prioritised and have increased satisfaction and utility.

\columnsend



## Full Compliance - Resource Distribution Results (cont.)

\columnsbegin


\column{0.7\textwidth}

\begin{table}
\centering
\caption{CPR Manager results after execution with mixed population.}%(in resource units)}
\label{poolexp1}
\begin{tabular}{ll|ll}
In     & 77888.95 & Rejected   & 59642  \\
Out    & 77882.77 & Rej. Rule  & 53962  \\
Out/In & 99.99\%  & Rej. Short & 5680  \\
Requests   & 163564 & &          
\end{tabular}
\end{table}

\column{0.3\textwidth}

Decrease in number of rejections shows that smart-CPR can take more precise decision using rules, successfully answering those with legitimate claims.

\columnsend



# Conclusion


## Final Remarks

- With the automation brought with \alert{smart-contracts and blockchain} technologies, combined with the \alert{computational justice} framework, it is possible to solve the problem of \alert{distributed supply and demand} in efficient and self-organised ways.

- Smart-CPR can efficiently act scheduling allocations of resources in cases of full compliance and prevent abuses of malicious agents.

- Future steps:
    - Test different combinations of agent behaviour;
    - Higher level of decision making - meta-meta arenas
    - Adaptative producer behaviour 


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


<!-- TODOs: -->

<!-- - change bold to \alert{} -->
<!-- - fix images sizes/display -->
