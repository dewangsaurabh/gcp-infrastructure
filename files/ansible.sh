#! /bin/bash
  
if ! command -v ansible >/dev/null; then
        echo "Installing Ansible dependencies and Git."
        if command -v yum >/dev/null; then
                sudo yum install -y git python python-devel
        elif command -v apt-get >/dev/null; then
                sudo apt-get update -qq
                #sudo apt-get install -y -qq git python-yaml python-paramiko python-jinja2
                sudo apt-get install -y -qq git python python-dev
        else
                echo "neither yum nor apt-get found!"
                exit 1
        fi
        echo "Installing pip via easy_install."
        #curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
        curl https://bootstrap.pypa.io/pip/2.7/get-pip.py -o get-pip.py
        #sudo python ez_setup.py && rm -f ez_setup.py
        #sudo easy_install pip
        python get-pip.py
        export PATH="$PATH:$HOME/.local/bin"
        echo $PATH
        # Make sure setuptools are installed crrectly.
        pip install setuptools --no-use-wheel --upgrade
        echo "Installing required python modules."
        pip install paramiko pyyaml jinja2 markupsafe
        pip install ansible
        git clone https://github.com/dewangsaurabh/ansiblejenkins.git
        ansible-playbook ansiblejenkins/playbook.yml
fi
