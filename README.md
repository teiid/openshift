Teiid Demo on OpenShift
===============================

First, you will need an OpenShift account.  If you do not already have an account, please go to https://openshift.redhat.com/app/getting_started

Note: the next two steps make use of the command line tool.  If preferred, you can use the OpenShift Web Console to create the jbosseap-6.0 application 
and add the MySQL cartridge.  Both the command line and web console are described at https://openshift.redhat.com/app/getting_started

1) Create a jbosseap-6.0 application on OpenShift

    rhc app create -a teiiddemo -t jbosseap-6.0

2) Add the MySQL cartridge to your application (make note of the DB credentials returned)

    rhc app cartridge add -a teiiddemo -c mysql-5.1

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

That's it!  You can now checkout your application at:

    http://teiiddemo-$yourdomain.rhcloud.com

Getting Started with the Teiid Demo
-----------------------------------

The 'VDB Manager' application is deployed at 

    http://teiiddemo-$yourdomain.rhcloud.com/vdbmanager

On the VDB Manager page, a 'Teiid Source Examples' link is provided.  Click the link to access the demo 'script', which shows how to add sources.


A 'WebQuery' application is also deployed at

    http://teiiddemo-$yourdomain.rhcloud.com/webquery

On the WebQuery page, you can see the available VDB and JDBC sources, and run test queries.

