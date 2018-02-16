# Analyzing Conflict Predictors in Open-Source Java Projects from GitHub and Travis CI (website under construction)

## Abstract
In collaborative development environments integration conflicts occur frequently. To alleviate this problem, different awareness tools have been proposed to alert developers about potential conflicts before they become too complex. However, there is not much empirical evidence supporting the strategies used by these tools. Learning about what types of changes most likely lead to conflicts might help to derive more appropriate requirements for early conflict detection, and suggest improvements to existing conflict detection tools. To bring such evidence, in this paper we analyze the effectiveness of two types of code changes as conflict predictors. Namely, editions to the same method, and editions to directly dependent methods. We conduct an empirical study analyzing part of the development history of 45 Java projects from GitHub and Travis CI, including 5,647 merge scenarios, to compute the precision and recall for the conflict predictors aforementioned. Our results indicate that the predictors combined have a precision of 57.99% and a recall of 82.67%. Moreover, we conduct a manual analysis of the false positives and false negatives from our sample, providing insights about strategies that could further increase the precision and the recall.

## Preprint

## Projects Sample Description

| Git Repository Name | Domain | Analyzed Merge Commits | Size (KLOCs) |
| :-------------: | :-------------: | :-------------: | :-------------: |
| Adobe-Consulting-Services/acs-aem-commons  |  AEM development toolkit | 117 | N/A |
| tinkerpop/blueprints  | Graph Data Models | 109 | 203 |
| dianping/cat  | Application Monitoring Platform | 102 | N/A |
| CloudSlang/cloud-slang  | Programming Language to Orchestrate CI Workflows | 214 | N/A |
| CloudifySource/cloudify | Cloud Platform | 212 | N/A |
| CorfuDB/CorfuDB  | Cluster Consistency Platform | 272 | N/A |
| gchq/Gaffer  | Relational Database | 8 | N/A |
| hdiv/hdiv  | Java Web Application Security Framework | 10 | 57 |
| brettwooldridge/HikariCP | JDBC connection pool | 130 | 8 |
| FasterXML/jackson-core  | Streaming API used by Jackson Data Processor | 122 | 43 |
| FasterXML/jackson-databind  | Data-binding functionality used by Jackson Data Processor | 273 | 110 |
| datastax/java-driver  |  Java client library for Apache Cassandra | 110 | 37 |
| javaparser/javaparser | Programming Language to Orchestrate CI Workflows | 192 | 145 |
| square/javapoet | Java API for generating java source files | 250 | N/A |
| xetorthio/jedis  | Redis Java client | 137 | 28 |
| jwtk/jjwt | Java JWT: JSON Web Token for Java and Android | 65 | 8 |
| jparsec/jparsec | Parser combinator library for Java | 35 | 12 |
| square/moshi | JSON library for Android and Java | 132 | N/A |


## Data
[Link to raw data](https://github.com/conflictpredictor/onlineAppendix/tree/master/data)

## Scripts and Tools


