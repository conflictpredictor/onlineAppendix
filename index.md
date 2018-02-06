# Analyzing Conflict Predictors in Open-Source Java Projects from GitHub and Travis CI (website under construction)

## Abstract
In collaborative development environments integration conflicts occur frequently. To alleviate this problem, different awareness tools have been proposed to alert developers about potential conflicts before they become too complex. However, there is not much empirical evidence supporting the strategies used by these tools. Learning about what types of changes most likely lead to conflicts might help to derive more appropriate requirements for early conflict detection, and suggest improvements to existing conflict detection tools. To bring such evidence, in this paper we analyze the effectiveness of two types of code changes as conflict predictors. Namely, editions to the same method, and editions to directly dependent methods. We conduct an empirical study analyzing part of the development history of 45 Java projects from GitHub and Travis CI, including 5,647 merge scenarios, to compute the precision and recall for the conflict predictors aforementioned. Our results indicate that the predictors combined have a precision of 57.99% and a recall of 82.67%. Moreover, we conduct a manual analysis of the false positives and false negatives from our sample, providing insights about strategies that could further increase the precision and the recall.

## Preprint

## Projects Sample Description

## Data
[Link to raw data](https://github.com/conflictpredictor/onlineAppendix/tree/master/data)

## Scripts and Tools


