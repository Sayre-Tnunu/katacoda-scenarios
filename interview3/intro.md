### datadog ansible integrations

- **perform two integrations:**
  - launch datadog agent on host01 and host02
  - put metrics/events/alerts from ansible activity related to host01 and host02 in your datadog dashboard


- **requirements:**
  * basic linux command line
  * datadog account or trial instance with dashboard and api key

- **training environment:**
  - Two ubuntu 16.04 instances [host01 and host02]
  - foreground.sh file downloads and starts ansible as well as declares some variables
  - background.sh file sets up a directory for callback plugins, git clones datadog agent repo, and git clones ansible callback module repo, downloads python, runs the `setup.py` to activate the datadog_agent


[project repo]:

[github](https://github.com/Sayre-Tnunu/katacoda-scenarios/)

[my links]:

[gitlab](https://gitlab.com/asayre)

[linkedin](https://www.linkedin.com/in/anthony-sayre-1a92263a/)
[software freedom school board](https://sofree.us/directory.html)
