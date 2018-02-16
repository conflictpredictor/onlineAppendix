# Analyzing Conflict Predictors in Open-Source Java Projects from GitHub and Travis CI (website under construction)

## Abstract
In collaborative development environments integration conflicts occur frequently. To alleviate this problem, different awareness tools have been proposed to alert developers about potential conflicts before they become too complex. However, there is not much empirical evidence supporting the strategies used by these tools. Learning about what types of changes most likely lead to conflicts might help to derive more appropriate requirements for early conflict detection, and suggest improvements to existing conflict detection tools. To bring such evidence, in this paper we analyze the effectiveness of two types of code changes as conflict predictors. Namely, editions to the same method, and editions to directly dependent methods. We conduct an empirical study analyzing part of the development history of 45 Java projects from GitHub and Travis CI, including 5,647 merge scenarios, to compute the precision and recall for the conflict predictors aforementioned. Our results indicate that the predictors combined have a precision of 57.99% and a recall of 82.67%. Moreover, we conduct a manual analysis of the false positives and false negatives from our sample, providing insights about strategies that could further increase the precision and the recall.

## Preprint

## Projects Sample Description
- The size of the projects described below was collected from openhub on February 16, 2018

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
| graphaware/neo4j-framework | GraphAware Neo4j Framework | 80 | N/A |
| graphaware/neo4j-reco | Neo4j-based recommendation engine | 14 | N/A |
| spotify/netty-zmtp | Netty implementation of ZMTP, the ZeroMQ Message Transport Protocol | 12 | 4 |
| square/okhttp | HTTP+HTTP/2 client for Android and Java | 421 | 57 |
| square/okio | I/O API for Java | 140 | N/A |
| ontop/ontop | Platform to query relational databases | 7 | 1100 |
| oracle/OpenGrok | Source code search and cross reference engine | 108 | 100 |
| pac4j/pac4j | Security engine for Java | 118 | N/A |
| protostuff/protostuff | Java serialization library | 36 | N/A |
| querydsl/querydsl | Java query API | 248 | 122 |
| sanity/quickml | Decision tree learner in java | 22 | N/A  |
| SoftInstigate/restheart | REST API Server for MongoDB | 41 | N/A |
| square/retrofit | Type-safe HTTP client for Android and Java | 158 | 21 |
| yegor256/s3auth | Amazon S3 HTTP Basic Authorization Gateway | 21 | 10 |
| scribejava/scribejava | OAuth library for Java | 87 | N/A |
| HubSpot/Singularity | API and web application for running and scheduling Apache Mesos tasks | 280 | 70 |
| perwendel/spark | Web framework for java | 226 | 11 |
| codecentric/spring-boot-admin | Admin UI of spring boot applications | 50 | N/A |
| oxo42/stateless4j | Lightweight Java State Machine | 18 | 1 |
| swagger-api/swagger-core | Examples and server integrations for generating the Swagger API Specification | 351 | N/A |
| tananaev/traccar | GPS Tracking System | 105 | 51 |
| google/truth | Java Testing Framework | 20 | 29 |
| vavr-io/vavr | Object-functional library | 7 |  |
| code4craft/webmagic |  Web crawler framework for Java | 105 | 16 |
| l0rdn1kk0n/wicket-bootstrap | Apache Wicket components for Twitter Bootstrap | 17 | 208 |
| square/wire | Protocol buffers for Android and Java | 125 | 38 |
| timmolter/XChange | Java API for interacting with 60+ Bitcoin and other crypto currency exchanges | 339 | 139 |


## Data
[Link to raw data](https://github.com/conflictpredictor/onlineAppendix/tree/master/data)

## Scripts and Tools


