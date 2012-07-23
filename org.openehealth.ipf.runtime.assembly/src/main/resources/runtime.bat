@echo off

set JMX_OPTS=
set JMX_OPTS=%JMX_OPTS% -Dcom.sun.management.jmxremote 
set JMX_OPTS=%JMX_OPTS% -Dcom.sun.management.jmxremote.port=8448
set JMX_OPTS=%JMX_OPTS% -Dcom.sun.management.jmxremote.authenticate=false
set JMX_OPTS=%JMX_OPTS% -Dcom.sun.management.jmxremote.ssl=false
  
set JVM_OPTS=
set JVM_OPTS=%JVM_OPTS% -Dosgi.classloader.lock=classname -Dosgi.java.profile.bootdelegation=override
  
"%JAVA_HOME%/bin/java" %JVM_OPTS% %JMX_OPTS% -jar bundles/org.eclipse.osgi_3.6.2.R36x_v20110210.jar -configuration equinox -console
