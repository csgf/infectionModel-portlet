*********************************
INFECTION MODEL PORTLET
*********************************

============
About
============
.. images/ABINIT_logo.png

.. image:: images/Repast_logo_100h.png
   :height: 100px
   :align: left
   :target: https://github.com/csgf/infectionModel-portlet
   :alt: infectionModel-portlet logo

The infection model is an example of an Agent-Based Simulation Infection
Model implemented in the well-known **Repast Simphony**
(`repast.sourceforge.net <http://repast.sourceforge.net/>`_) agent-based simulation toolkit. Agent-based
simulation is a highly useful technique that allows individuals and their
behaviours to be represented as they interact over time.  This means, with
appropriate data, agent-based simulation can be used to study various
socio-medical phenomena such as the spread of disease and infection in a
population.

The aim of this demonstration model is to show how a science gateway could
support the study of the spread of disease or infection in a population.
As well as having direct healthcare application, it can also be used in the
field of health economics to study the cost effectiveness of various infection
preventive strategies.

Within the science gateway, the Repast Infection Model has been deployed in a
portlet named infectionModel-portlet.  This has been developed to enable users
to submit experiments with different input parameters and to obtain results.
As well as the results output file, the application also has a demonstration
graph tool that allows users to see the graphical visualisation of the results.

This shows that science gateways can be developed to support online complex
simulations in an extremely easy to use manner.  See the `Sci-GaIA project
<http://www.sci-gaia.eu>`_ web pages and the `educational modules
<http://courses.sci-gaia.eu/>`_ to get information on how to implement these
applications as well as how science gateways and data repositories can be used
to support Open Science.

============
Installation
============

This section explains how to deploy and configure the infectionModel-portlet
into a Science gateway to submit some preconfigures experitments towards
Distributed Computing infrastructures.

1. Move into your Liferay plugin SDK portlets folder and clone the
infectionModel-portlet source through the following git command:

.. code:: bash

        git clone https://github.com/csgf/infectionModel-portlet.git

2. Now, move into the just created infectionModel-portlet directory and execute
the deploy command:

.. code:: bash

        ant deploy

When the previous command has completed, verify that the portlet is
*"Successfully autodeployed"*, look for a string like this in the Liferay log
file under $LIFERAY_HOME/glassfish-3.1.2/domains/domain1/logs/server.log.

3. Then, open your browser and point at your Science Gateway instance and form
there click Add > More in the Brunel University category, click on Add button to
add this new portlet. Following picture shows the correctly result:

.. image:: images/view.png
    :align: center
    :scale: 80%
    :alt: infectionModel-portlet view

As soon as the portlet has been successfully deployed you have to configure:

1. the list of e-Infrastructures where the application can be executed;
2. some additional application settings.

To configure the e-Infrastructure, go to the portlet preferences and provide the
the right values for the following parameters:

- **Enable infrastructure**: A yes/no flag which enables or disable the generic e-Infrastructure;
- **Infrastructure name**: A label representing the e-Infrastructure;
- **Infrastructure acronym**: The acronym to reference the e-Infrastructure;
- **BDII**: The Top BDII for this e-Infrastructure;
- **WMS Hosts**: A separated `;` list of WMS endpoint for this e-Infrastructure;
- **Proxy Robot host server**: The eTokenServer for this e-Infrastructure;
- **Proxy Robot host port**: The eTokenServer port for this e-Infrastructure;
- **Proxy Robot secure connection**: A true/false flag if the eTokenServer require a secure connection;
- **Proxy Robot Identifier**: The MD5SUM of the robot certificate to be used for this e-Infrastructure;
- **Proxy Robot Virtual Organization**: The VO for this e-Infrastructure;
- **Proxy Robot VO Role**: The VO role for this e-Infrastructure;
- **Proxy Robot Renewal Flag**: A true/false Flag to require proxy renewal before it expires;
- **Local Proxy**: The path to the proxy if you are using a local proxy;
- **Software Tags**: The list of software tags requested by the application.

The following figure shown how the portlet has been configured to run simulation
on a cloud based system.

.. image:: images/portlet_pref.png
   :align: center
   :scale: 70%
   :alt: infectionModel-portlet preference

Another important step to have infectionModel-portlet ready to be used is: to
create a new entry in GridOperations table of the UsersTracking database, as
shown below.

.. code:: sql

    INSERT INTO GridOperation VALUES ('<portal name>' ,'Infection Model portlet');

    -- portal name: is a label representing the portal name, you can get the
    -- right value from your Science Gateway istance.

============
Usage
============

The infectionModel-portlet, has been developed in the contest of the Sci-GaIA
project, and it is curretly available on the `Africa Grid Science Gateway
<https://sgw.africa-grid.org/repast>`_. You can read more information in how to
use this application, after sign in, on its dedicated `run page <https://sgw.africa-grid.org/run-repast>`_.

As soon as your submitted interaction complete its execution you can exploit the
`Visualize infection Model result <https://sgw.africa-grid.org/visualize-infection-model-result>`_
portlet, to see the simulation outputs in a graphical way, like shown in the
picture below.

.. image:: images/view-result.png
   :align: center
   :scale: 70%
   :alt: infectionModel-portlet preference

==============
Contributor(s)
==============

If you have any questions or comments, please feel free to contact us using the
Sci-GaIA project dicussion forum (`discourse.sci-gaia.eu <discourse.sci-gaia.eu>`_)

.. _BRUNEL: http://www.brunel.ac.uk/
.. _DFA: http://www.dfa.unict.it/

:Authors:
 Roberto BARBERA - University of Catania (DFA_),

 Adedeji FABIYI  - Brunel University London (BRUNEL_),

 Simon TAYLOR    - Brunel University London (BRUNEL_),

 Mario TORRISI   - University of Catania (DFA_)
