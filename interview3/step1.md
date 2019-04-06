# set up api key
* get api key from your datadog dashboard
  - hover over **Integrations**  on the left-side menu, click **APIs**
  - click 'API Keys' drop-down on next page
  - copy the long alphanumeric number under "Key"


  replace <your api key> in the below command with your actual Datadog api key, run it in your training terminal

  - `export api_key=<insertyourapikeyhere>`

  (HINT: cat the manual commands file `cat manual_bash_commands`, more info on that below)


Before moving to step2, **review the important files** for this exercise:

in the training terminal, list the files in your current directory with `ls` command

description of each file:

  * **datadog_callback.yml**

    this file relays ansible activity on the local ansible controller: `cat datadog_callback.yml`


  * **ansible.yml**

    ansible playbook that launches the datadog agent and turns each host into a web-server with a custom home page: `less ansible.yml`

  * **hosts**

    inventory file for ansible, pre-populated with host01 and host02: `cat hosts`

  * **manual_bash_commands**

    list of the commands to be run in this exercise.
    `cat manual_bash_commands`

  
