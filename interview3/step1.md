# set up api key
* get api key from your datadog dashboard
  - hover over **Integrations**  on the left-side menu, click **APIs**
  - click 'API Keys' drop-down on next page
  - copy the long alphanumeric number under "Key"


  replace <your api key> in the below command with your actual Datadog api key, run it in your training terminal

  - `export api_key=<insertyourapikeyhere>`

  (HINT: cat the manual commands file `cat manual_bash_commands`, more info on that below)


Before moving to step2, **review the important files and directories** for this exercise:

in the training terminal, list the files in your current directory with `ls` command

description of each file:

  * **ansible-datadog-callback (directory)**
    contains the datadog_callback.py which reads and sends ansible metrics/events data to datadoghq. Set up for this environment should copy the datadog_callback.py file up to this home directory


  * **datadog_callback.yml**

    this file is read by the 'datadog_callback.py' to read your dd api key: `cat datadog_callback.yml`

  * **datadogpy (directory)**
    contains the setup.py which reads and sends system metrics/events data to datadoghq (statsd)


  * **setup.py**

    python script to install the datadog Agent: `cat datadogpy/setup.py`


  * **ansible.yml**

    ansible playbook that launches the datadog agent and turns each host into a web-server with a custom home page: `less ansible.yml`

  * **hosts**

    inventory file for ansible, pre-populated with host01 and host02: `cat hosts`

  * **manual_bash_commands**

    list of the commands to be run in this exercise.
    `cat manual_bash_commands`
