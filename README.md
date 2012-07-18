Teiid on OpenShift Express
===============================

This template helps you get up and running quickly with the Teiid demo for OpenShift.

Create an account at http://openshift.redhat.com/

Create a jbosseap-6.0 application

    rhc-create-app -a teiiddemo -t jbosseap-6.0

Add this upstream Teiid repo

    cd teiiddemo
    git remote add upstream -m master git://github.com/teiid/openshift.git
    git pull -s recursive -X theirs upstream master
    git apply standalone.diff
    git add .
    git commit -m 'Added Teiid Modules and Demo'

Then push the repo to origin

    git push

That's it, you can now checkout your application at:

    http://teiiddemo-$yourdomain.rhcloud.com

Applications Deployed with the Teiid Demo
-----------------------------------------

This repository will deploy a VDB Manager application at 

    http://teiiddemo-$yourdomain.rhcloud.com/vdbmanager

On the VDB Manager application page, a link is provided showing how to add different sources.


Also a simple WebQuery application will be deployed at

    http://teiiddemo-$yourdomain.rhcloud.com/webquery

After making VDB modifications, you can go to the Web Query application to run some test queries.

