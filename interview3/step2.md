
# run commands
**Once the api_key variable has your actual api key in it (step1), you are ready to run the other two commands:**

  * write your api key to a file for datadog's callback feature to use:
`echo "api_key: ""$api_key" > datadog_callback.yml`

  * run ansible playbook `ansible-playbook -i hosts ansible.yml -vv`

    * playbook launches datadog agent on both running hosts in the environment (host01 and host02)

    * playbook turns host01 and host02 into web servers (verify with `curl host02` command)

    * metrics/events/alerts from ansible activity related to your hosts is relayed to datadoghq through datadog_callback.yml

    * dashboards for ansible metrics can now be created
