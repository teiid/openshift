Teiid Demo on OpenShift
===============================

First, you will need an OpenShift account.  If you do not already have an account, go to https://openshift.redhat.com/app/getting_started to sign up.

Note: The first two steps below make use of the OpenShift command line tools.  If preferred, you can use the OpenShift Web Console to create the jbosseap-6.0 application 
and add the MySQL cartridge.  Both the command line and web console are described at https://openshift.redhat.com/app/getting_started

1) Create a jbosseap-6.0 application on OpenShift

    rhc app create -a teiiddemo -t jbosseap-6.0

2) Add the MySQL cartridge to your application

    rhc app cartridge add -a teiiddemo -c mysql-5.1

NOTE: Save the generated MySQL db info - you will need it later in the demo!  It will contain the following:

* Root User: admin
* Root Password: xxxxxxxxx
* Database Name: teiiddemo
* Connection URL: mysql://xxx.xxx.xxx.xxx:3306/

3) Add the upstream Teiid OpenShift repo

    cd teiiddemo
    git remote add upstream -m master git://github.com/teiid/openshift.git
    git pull -s recursive -X theirs upstream master
    rm pom.xml
    git apply standalone.diff
    git add .
    git rm pom.xml
    git commit -m 'Added Teiid Modules and Demo'

4) Push the repo to origin

    git push

That's it!  Once the git push is completed, the application will restart on OpenShift.
After a couple minutes, the demo applications will be deployed, and you can access them as described below:


Getting Started with the Teiid Demo
-----------------------------------

Two web applications are deployed with the Teiid OpenShift installation:

'VDB Manager' application: 

    http://teiiddemo-$yourdomain.rhcloud.com/vdbmanager

On the VDB Manager page, a 'Teiid Source Examples' link is provided, which also takes you to the articles referenced below.


'WebQuery' application:

    http://teiiddemo-$yourdomain.rhcloud.com/webquery

On the WebQuery page, you can see the available VDB and JDBC sources, and run test queries.


Demo Articles
-----------------------------------
A series of articles are provided, which walk you through the integration examples:

1) MySQL, Salesforce and Twitter WebService Integration:  This demo walks you through integration of a MySQL database, Salesforce, and Twitter WebService

https://community.jboss.org/wiki/TeiidOnOpenShiftDemo-Part1-SourceManagement

2) MySQL and SAP NetWeaver Gateway Integration:  This demo walks you through integration of a MySQL database with the SAP Netweaver Gateway service

https://community.jboss.org/wiki/TeiidOnOpenShift-SAPIntegrationExample


