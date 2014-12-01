Set of Augeas scripts for changing configuration of JBoss EAP 6.x or WildFly.

Example how to run:
 ./augeas cmrdatasource.aug standalone.xml

My ~/.bashrc
  alias setlogger="augeas ~/scripts/augeasconf/logging.aug"
  alias tracearjuna="augeas -Dcategory=com.arjuna ~/scripts/augeasconf/logging.aug"
  alias tracejta="augeas -Dcategory=com.arjuna ~/scripts/augeasconf/logging.aug"
  alias tracejpa="augeas -Dcategory=org.jboss.jca ~/scripts/augeasconf/logging.aug"
  alias tracespy="augeas -Dcategory=jboss.jdbc.spy ~/scripts/augeasconf/logging.aug"
  alias transactionsjta="augeas ~/scripts/augeasconf/jta.aug"
  alias transactionsjts="augeas ~/scripts/augeasconf/jts.aug"

