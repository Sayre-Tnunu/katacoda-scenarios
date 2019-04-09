# ansible metrics/events and datadog dashboard

**metrics and events data from host01, host02, and the ansible application should now all be reporting to datadoghq, and viewable on your datadog dashboards/events interface**


* in your datadog dashboard, make sure ansible integration is installed:
  * on left-side of dashboard, hover over 'Integrations' drop-down and select 'Integrations'

  * on next screen, search for 'ansible', follow steps to install the ansible dash-board integration


* create a time-series metric for your dahboard:

  - under 'Graph your data', ensure that 'Metric' data type is selected, then click the drop-down next to 'Metric', you should see several new metrics/event triggers related to ansible

  - create and review dashboard items with some of these

  **trigger an ansible failure**

* if you haven't already, create a new item for your time-board for this event:'ansible.task.failures'

  - choose 'query value' visualization for step 1
  - choose 'ansible.task.failures'
  - next to that choose 'from playbook:ansible', save back to your dashboard


* in the terminal, delete the jinja2 file: `rm datadog.html.j2`

* rerun the ansible playbook: `ansible-playbook -i hosts ansible.yml`

* this should trigger a failure as the ansible-playbook has a 'template' action as one of it's tasks which expects a jinja2 file to be there

* review the event messages that pop up in your datadog Events stream, go to the dash-board to review the number of failures

* ALSO, review the preset Ansible dashboard - go to your list of dashboards (left-hand side menu, hover over 'Dashboards', click on 'Dashboard Lists', search for key-word 'ansible', click on 'Ansible' dashboard)


done!


[NEXT]: set up a monitor for your ansible.task.failures dashboard metrics, send custom notifications/alerts about ansible failed tasks with more granular detail
