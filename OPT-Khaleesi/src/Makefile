JFLAGS = -g -cp
JC = javac
LIB = $(CPLEX_JAR)
.SUFFIXES: .java .class
.java.class:
	$(JC) $(JFLAGS) "$(PWD):$(CPLEX_JAR)" $*.java

CLASSES = \
  EndPoint.java \
  Tuple.java\
	Flow.java \
  Graph.java \
  ILP.java \
  Driver.java

default: classes

classes: $(CLASSES:.java=.class)

jar:
	@echo "Manifest-Version: 1.0" > manifest.txt
	@echo "Class-Path: ." >> manifest.txt
	@echo "Main-Class: Driver" >> manifest.txt
	@echo "" >> manifest.txt
	jar -cmf manifest.txt opt-khaleesi.jar $(classes) 

clean:
	$(RM) *.class
