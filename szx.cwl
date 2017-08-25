# (http://texstudio.sourceforge.net/manual/current/usermanual_en.html#CWLDESCRIPTION)
# Classifier	Meaning
# *	unusual command which is used for completion only in with the "all" tab. This marker may be followed by other classifications.
# S	do not show in completer at all. This marker may be followed by other classifications.
# m	valid only in math environment
# t	valid only in tabular environment (or similar)
# T	valid only in tabbing environment
# n	valid only in text environment (i.e. not math env)
# r	this command declares a reference like "\ref{key}"
# c	this command declares a citation like "\cite{key}"
# C	this command declares a complex citation like "\textcquote{bibid}{text}". The key needs to be given as bibid
# l	this command declares a label like "\label{key}"
# d	this command declares a definition command like "\newcommand{cmd}{def}"
# g	this command declares an include graphics command like "\includegraphics{file}"
# i	this command declares an include file command like "\include{file}"
# u	this command declares an used package like "\usepackage{package}"
# b	this command declares a bibliography like "\bibliography{bib}"
# U	this command declares a url command like "\url{URL}, where URL is not checked"
# D	this command declares a todo item (will be added to the todo list in the side panel)
# B	this command declares a color (will be used for color completion only, no syntax checking)
# s	this command declares a special definition, the definition class is given after a "#". The class name needs a preceding %. (e.g. %color), also see the examples below.
# V	this command declares a verbatim-like environment "\begin{Verbatim}"
# N	this command declares a newtheorem-like command like "\newtheorem{envname}"
# L0 to L5	this command declares a structure command. The level is between L0 (\part-like) down to L5 (\subparagraph-like). Structure commands are highlighted in the code, can be folded and appear in the structure outline.
# /env1,env2,...	valid only in environment env1 or env2 etc.
# \env	environment alias, means that the environment is handled like the "env" environment. This is useful for env=math or tabular.
# The classifiers specifying the meaning of arguments (like c or i) always apply to the first non-optional parameter. This is a current limitation of the cwl format and the LaTeX parser in TXS. For example \ref{label}#r and \ref[option]{label}#r will work as expected, but \ref{arg}{label}#r will interpret arg as reference. We recommend not to specify any class in such a case.

#include:amsmath
#include:booktabs
#include:color
#include:comment
#include:indentfirst
#include:soul
#include:threeparttable

\begin{szxfigure}#\figure
\end{szxfigure}#\figure
\begin{szxtable}#\tabular
\end{szxtable}#\tabular
\begin{szxitemize}#\itemize
\end{szxitemize}#\itemize
\begin{szxalgorithm}#\algorithm
\end{szxalgorithm}#\algorithm
\szxtrule#t
\szxmrule#t
\szxbrule#t

\szxnocap{NoCapitalizationWord}
\szxtitle{Title}

\szxnewsymbol{Symbol}
\szxrenewsymbol{Symbol}

\szxcaption{Title}{\label{TitleLabel}}
\szxsection{Title}#L2
\szxsubsection{Title}#L3
\szxsubsubsection{Title}#L4

\szxtodo{ToDo}#D
\szxextend{ToExtend}#D
\szxtofill{ToFill}#D
\szxoption{Option1}{Option2}#D

\szxexcludesegment{SegmentLabel}
\szxincludesegment{SegmentLabel}
\szxspecialsegment{SegmentLabel}

\upcite{RefLabel}#c
\szxref{RefLabel}#r
\szxrefsec{sec:SecLabel}#r
\szxreftab{tab:TabLabel}#r
\szxreffig{fig:FigLabel}#r
\szxrefequ{equ:EquLabel}#r
\szxrefalg{alg:AlgLabel}#r

\szxhl[Color]{ToHighlight}#D
\szxul[Color]{ToUnderline}#D
\szxdl[Color]{ToDeleteline}#D

\overlap{Background}{Foreground}#m
