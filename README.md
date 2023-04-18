# Ansible Role: ethereum_node_mgmt

slingnode.ethereum_node_mgmt is an Ansible role that facilitates common management tasks on servers running Ethereum clients. It is designed to seamlessly work with nodes deployed using [slingnode.ethereum role](https://github.com/SlingNode/slingnode-ansible-ethereum). The role supports the following tasks:

* validator key import (using command line or Key Manager API)
* Slashing protection DB import and export

# Supported clients

* Lighthouse
* Prysm
* Teku
* Nimbus

# Supported Operating Systems

The role has been tested on the following operating systems

RedHat based:

* AlmaLinux 9.1
* AlmaLinux 8.7
* RockyLinux 9.1
* RockyLinux 8.7
* AmazonLinux 2

Debian based:

* Ubuntu 22.04
* Ubuntu 20.04

# Documentation

The README file provides a basic overview only. Full documentation describing the role in details is available at [https://docs.slingnode.com/slingnode.ethereum_node_mgmt/](https://docs.slingnode.com/slingnode.ethereum_node_mgmt/).

# Requirements

Ansible Docker module is required on the Ansible controller. It can be installed using the below command:

```
ansible-galaxy collection install community.docker:==3.4.0
```

# Dependencies

The role is designed to work with nodes deployed using [slingnode.ethereum role](https://github.com/SlingNode/slingnode-ansible-ethereum).

# Role Variables

Role variables are defined in 'defaults'. This means they have the lowest precedence and can be easily overridden. See [Ansible documentation](https://docs.ansible.com/ansible/latest/playbook\_guide/playbooks\_variables.html#understanding-variable-precedence) for details on the precedence.

All client specific variables are defined in their corresponding variable file. All client specific variables have unique names (prefixed with clientname\_) so there's no risk of a clash.


## Important variables

This section outlines variables that you will most likely want to modify.

### **clients**

"clients" variable defines what clients the tasks will execute against.

* execution: geth, nethermind, erigon, besu
* consensus and validator: lighthouse, prysm, teku, nimbus

```yaml
clients:
  execution: geth
  consensus: lighthouse
  validator: lighthouse
```

### action variables

The variables below define what action the role will perform. All default to false, set to true to carry out required action.&#x20;

```yaml
import_validator_keys_api: false
import_validator_keys_cmd: false
export_slashing_protection_db: false
import_slashing_protection_db: false
```

### copy\_slashing\_protection\_db\_to\_server

When set to true the role will copy the slashing protection DB from the control host to the managed host where the import will occur. The variable is used with source\_slashing\_protection\_db\_to\_copy and import\_slashing\_protection\_db set to true. Otherwise it has no effect.&#x20;

```yaml
copy_slashing_protection_db_to_server: true
source_slashing_protection_db_to_copy: local_source/slashing_protection.json
import_slashing_protection_db: true
```

### keystore\_files

Variable required for command line based key import tasks. It specifies local source of the kyestore and password files to copy to the server. &#x20;

```yaml
keystore_files:
  - src: molecule/resources/test_validator_keystores/keystore-m_12381_3600_1_0_0-1680087924.json
    dest: "{{ blockchain_root_path }}/validator/keystore/keystore-m_12381_3600_1_0_0-1680087924.json"
  - src: molecule/resources/test_validator_keystores/keystore-m_12381_3600_1_0_0-1680087924.txt
    dest: "{{ blockchain_root_path }}/validator/keystore/keystore-m_12381_3600_1_0_0-1680087924.txt"
```

### keystore\_password\_file

Specifies file name on the managed server containing password to decrypt the keystore. Required by Lighthouse and Prysm.

```yaml
keystore_password_file: "keystore-m_12381_3600_1_0_0-1680087924.txt"
```

### keystores\_without\_slashing\_protection

Variable used with API keystore import. It specifies local paths on the control host. Use this variable when you do not want to import slashing protection DB along with the keystores.&#x20;

```yaml
keystores_without_slashing_protection:
  - keystore: molecule/resources/test_validator_keystores/keystore-m_12381_3600_1_0_0-1680087924.json
    password: molecule/resources/test_validator_keystores/keystore-m_12381_3600_1_0_0-1680087924.txt
```

### keystores\_with\_slashing\_protection

Variable used with API keystore import. It specifies local paths on the control host. Use this variable when you want to import slashing protection DB along with the keystores.

```yaml
keystores_with_slashing_protection:
  - keystore: molecule/resources/test_validator_keystores/keystore-m_12381_3600_0_0_0-1669980799.json
    password: molecule/resources/test_validator_keystores/keystore-m_12381_3600_0_0_0-1669980799.txt
    slashing_protection_db: molecule/resources/test_validator_keystores/slashing_protection_db.json
```


# Example playbook

The best place to start is to check the examples project. There are multiple example playbooks. The examples project is available here [https://github.com/SlingNode/slingnode-ethereum-examples](https://github.com/SlingNode/slingnode-ethereum-examples).

# Contact

If you have any questions join our [Discord server](https://discord.gg/EPg7yfhmUU) or log a GitHub issue.

# License

MIT

# Author Information

This role was created in 2023 by [pgjavier](https://github.com/pgjavier) and [karolpivo](https://github.com/karolpivo).
