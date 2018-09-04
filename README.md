install ansible

    yum install python-netaddr -y
    pip install ansible


install kubernetes node  eg： 10.21.51.76

    # cat /root/ansible/inventory/host.ini
    [masters]
    10.21.21.29
    10.21.21.30
    10.21.21.31
    [nodes]
    10.21.51.76
    [etcd]

    ansible-playbook --inventory-file=/root/ansible/inventory/host.ini /root/ansible/playbooks/deploy-node.yml  --forks=200
