Set of Augeas scripts for changing configuration of JBoss EAP 6.x or WildFly.

Example how to run:
 ./augeas cmrdatasource.aug standalone.xml

My ~/.bashrc
 alias tracearjuna="augeas -Dcategory=com.arjuna ~/scripts/augeasconf/trace.aug"
 alias tracejta="augeas -Dcategory=com.arjuna ~/scripts/augeasconf/trace.aug"
 alias tracejpa="augeas -Dcategory=org.jboss.jca ~/scripts/augeasconf/trace.aug"
 alias tracespy="augeas -Dcategory=jboss.jdbc.spy ~/scripts/augeasconf/trace.aug"

