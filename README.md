Teiid Demo on OpenShift
===============================

The following steps show you how to deploy the Teiid Demo on OpenShift.

Create an OpenShift account - see http://openshift.redhat.com/

Create a jbosseap-6.0 application on OpenShift

    rhc app create -a teiiddemo -t jbosseap-6.0

Add the MySQL cartridge to your application (make note of the DB credentials returned)

    rhc app cartridge add -a teiiddemo -c mysql-5.1

Add the upstream Teiid OpenShift repo

    cd teiiddemo
    git remote add upstream -m master git://github.com/teiid/openshift.git
    git pull -s recursive -X theirs upstream master
    rm pom.xml
    git apply standalone.diff
    git add .
    git rm pom.xml
    git commit -m 'Added Teiid Modules and Demo'

Push the repo to origin

    git push

That's it!  You can now checkout your application at:

    http://teiiddemo-$yourdomain.rhcloud.com

Applications Deployed with the Teiid Demo
-----------------------------------------

This repository will deploy a VDB Manager application at 

    http://teiiddemo-$yourdomain.rhcloud.com/vdbmanager

On the VDB Manager page, a link is provided to an article which shows how to add sources.


A WebQuery application is also deployed at

    http://teiiddemo-$yourdomain.rhcloud.com/webquery

Go to the WebQuery page to see the available VDB and JDBC sources, and to run test queries.

