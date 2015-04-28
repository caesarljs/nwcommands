{smcl}
{* *! version 1.0.0  21april2015}{...}
{marker topic}
{helpb nw_topical##analysis:[NW-2.6] Analysis}


{title:Title}

{p2colset 9 18 22 2}{...}
{p2col :nwhierrachy {hline 2} Hierrachical clustering of nodes}
{p2colreset}{...}


{title:Syntax}

{p 8 17 2}
{cmdab: nwhierarchy} 
[{it:{help netname}}]
{cmd:,}
[{opt mode}({it:{help nwdissimilar##context:context}})
{opt type}({it:{help nwdissimilar##type:type}})
{opt linkage}({it:{help cluster linkage:linkage}})]


{p 8 17 2}
{cmdab: nwhierarchy} 
,
{opt dismat(matname)}
[{opt linkage}({it:{help cluster linkage:linkage}})]


{p 8 17 2}
{cmdab: nwhierarchy} 
,
{opth disnet(netname)}
[{opt linkage}({it:{help cluster linkage:linkage}})]

{synoptset 25 tabbed}{...}
{synopthdr}
{synoptline}
{synopt:{opt type}({it:{help nwdissimilar##type:type}})}Type of dissimilarity between two nodes; default = euclidean{p_end}
{synopt:{opt mode}({it:{help nwdissimilar##context:context}})}Context definition for dissimilarity calculation; default = both{p_end}
{synopt:{opt name}({it:{help newnetname}})}Name of the new similarity network; default = {it:_similar}{p_end}
{synopt:{opt xvars}}Do not generate Stata variables{p_end}

{synoptset 15 tabbed}{...}
{marker type}{...}
{p2col:{it:type}}{p_end}
{p2line}
{p2col:{cmd: pearson}}Calculate Pearson correlation for tie vectors of two nodes{p_end}
{p2col:{cmd: hamming}}Calculate Hamming distance between the tie vectors of two nodes{p_end}
{p2col:{cmd: jaccard}}Calculate Jaccard distance between the tie vectors of two nodes{p_end}
{p2col:{cmd: matches}}Calculate percentage of matches in tie vectors of two nodes{p_end}
{p2col:{cmd: crossproduct}}Calculate the cross-product of the tie vectors of two nodes{p_end}

{synoptset 15 tabbed}{...}
{marker context}{...}
{p2col:{it:mode}}{p_end}
{p2line}
{p2col:{cmd: both}}Calculate dissimilarity between nodes based on both in- and outgoing ties{p_end}
{p2col:{cmd: incoming}}Calculate dissimilarity between nodes based on incoming ties only{p_end}
{p2col:{cmd: outgoing}}Calculate dissimilarity between nodes based on outgoing ties only{p_end}



{title:Description}

{pstd}
This command calculates the similarities between all nodes {it:i} and {it:j} and saves the result in a new network. The similarity between two nodes reflects how similar these nodes
are regarding the ties they have to other nodes (tie vectors). 

{pstd}
By default, the similarity is calculated based on both incoming and outgoing ties ({bf:mode(both)}). With {bf:mode(incoming)} the similarity
between two nodes {it:i} and {it:j} is calculated only based on the ties they receive (columns). Option {bf:mode(outgoing)} only considers outgoing ties (rows) when calculating the similarity
between nodes. Practially, option {bf:mode(both)} stacks the vector of outgoing and incoming ties.