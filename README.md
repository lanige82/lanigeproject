# lanigeproject
All my IT projects including architectural diagrams and codes

**Automated ELK Stack Deployment**

The files in this repository were used to configure the network depicted below.



![image](https://user-images.githubusercontent.com/84403949/119572158-3f5bc180-bdaa-11eb-9094-d8f6ffa120c6.png)


These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the Playbook.yml file may be used to install only certain pieces of it, such as Filebeat.
 
•	Metricbeatplaybook.yml
•	Filebeatplaybook.yml
•	Install-elk.yml
•	Filebeat-config.yml
•	Metricbeat-config.yml

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
- Beats in Use
- Machines Being Monitored
- How to Use the Ansible Build

**Description of the Topology**

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.
Load balancing ensures that the application will be highly available, in addition to restricting access to the network.
Load balancer manages traffic coming into the DVWA servers, and prevent the servers from denial of service attack. 
Jump boxes improve a company’s network security by having a secure central location that must be connected to first before launching any tasks.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the files and system metrics.
Filebeat collect data about file systems, syslogs and every other logs through the logstash which serves as a pipeline and sends it in the elasticsearch put it in a readable format in json then we can do the monitoring on kibana.
Metricbeat record collects machine metrics such as uptime, OS
The configuration details of each machine may be found below.
| Name            | Function      | IP Address | Operating System |
|------------------|----------------|----------------|------------------|
| Jump Box       | Gateway    | 10.0.0.4      | Linux             |
| DVWA web1 | webserver  |  10.0.0.5     | linux             |
| DVWA web2 |webserver   | 10.0.0.6      |linux             |
| ELK server     |ELKserver    |  10.1.0.4     |linux             |

**Access Policies**

The machines on the internal network are not exposed to the public Internet.
Only the jumpbox machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
<my-home-public-IP>
Machines within the network can only be accessed by 10.0.0.4.
My jump box was allowed to access your ELK VM through the virtual network peering? What was its IP address?_
A summary of the access policies in place can be found in the table below.
| Name             | Publicly Accessible   | Allowed IP Addresses |
|------------------|----------------------------|----------------------|
| Jump Box      | yes                               | 13.92.43.248  |
| DVWA web1 and web2 | no                                | via loadbalancer (137.117.64.26)|
| ELKserver     | yes(only port 5601)  | internet   			 |




**Elk Configuration**

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because it ensures that the scripts runs identically and any time, we need to work on the machine be it to spin up addition machine/server we don’t need to halt the operation. We can edit the script and make adjustments then just run it without halting the running servers
The main advantage of automating configuration with Ansible? it is for easy configuration and orchestration; a single script can be used to orchestrate thousands of servers.
The playbook implements the following tasks:
•	Install docker.io
•	Install python3 pip
•	Increase virtual memory and increase the memory usage for improve resource power
•	Download and launch docker elk container
•	Enable system service on boot

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

 ![image](https://user-images.githubusercontent.com/84403949/119572381-8c3f9800-bdaa-11eb-979c-1f200d447e9e.png)


**Target Machines & Beats**

This ELK server is configured to monitor the following machines:
•	DVWA Web1 10.0.0.5
•	DVWA web2 10.0.0.6
We have installed the following Beats on these machines:

•	Filebeat
•	Metricbeat

These Beats allow us to collect the following information from each machine:

Filebeat helps us collect system log files which is being transported to the elasticsearch which puts the data into readable format by indexing the data then sends it via logstash which serves as the pipeline and this is being visualized on our kibana console. These logfiles contains information logfiles like when changes were made on the file.

Metricbeat collects metric data from systems and services such as cpu usage, memory usage, disk IO and network statistic and sends it through logstash pipeline to the elasticsearch which converts the data into readable format and it is being virtualized through the kibana console.

**Using the Playbook**

In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned:
SSH into the control node and follow the steps below:

•	Copy the install-elk.yml file to /etc/ansible/files.
•	Update the /etc/ansible/hosts nano file to include ELK server and it's private IP address 10.1.0.4 under ELK servers
•	Run the playbook, ansible-playbook install-elk.yml and navigate to <my home IP>:5601/app/kibana to check that the installation worked as expected.

The playbook is a filebeat-playbook.yml and metricbeat-playbook.yml located in /etc/ansible, we copied it to our roles directory.
We need to update our /etc/ansible/hosts file and configuration file downloaded from ELK. 
We specified the hosts in our playbook as "webservers".  Since we need to monitor logs files and metric data on the DVWA web1 and web2 servers so this tells us where we need to monitor data from, so we need to install the filebeat and metricbeat configuration files on our webservers since they are the ones we are monitoring. 

We navigated to http://[elk_public_IP_address]:5601/app/kibana to check if the elk server is running.

Following  commands can be used to download the playbook, update the files, etc.

we can use the curl command to download the filebeat and metricbeat playbook using 

curl -L -O https://artifacts.elastic.co/downloads/beats/filebeatbeat/filebeat-7.6.1-amd64.deb

curl -L -O https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.6.1-amd64.deb_

 we use the dpkg to install and update the download
 
 dpkg -i filebeat-7.6.1-amd64.deb
 
 dpkg -i metricbeat-7.6.1-amd64.deb
 
# lanigeproject2

 **Assessment, Analysis and Hardening of a Vulnerable system (Capstone Engagement)**
 
 **Red team activity:** Security assessment of a vulnerable Linux system with a full penetration engagement using KALI Linux operating system tools like NMAP, Nessus vulnerability scanner, brute forcing using Hydra Metasploit.

**Blue Team activity:** Log analysis and attack characterization using ELK log management,monitoring and analysis.

**Network Topology**
 
![image](https://user-images.githubusercontent.com/84403949/128955467-5afca5b4-453b-43ed-b2c9-b5b6145e2e81.png)
 
 View project https://github.com/lanige82/lanigeproject/tree/main/lanigeproject2

# lanigeproject3
 
 **Assessment, Analysis and Hardening of a Vulnerable WordPress Web Server**
 
**Red team activity:** Security assessment of a vulnerable Linux system with a full penetration engagement using KALI Linux operating system tools like NMAP, Wp-scan, exploiting ssh protocol, Brute forcing using John-The-Ripper, Misconfiguration of sudo privileges were exploited, MySQL database was accessed to obtain sensitive data

**Blue Team activity:** Log analysis and attack characterization using ELK log management and monitoring and analysis.

**Network Analysis and Forensic:** Deep network packet analysis using Wireshark. Network packets were sniffed and analyzed to examine normal and suspicious activities.

**Network Topology**

 ![image](https://user-images.githubusercontent.com/84403949/128955531-d9793379-6cd9-49f0-8795-2eb8d0f4ae3f.png)
 
 **View Project** https://github.com/lanige82/lanigeproject/tree/main/lanigeproject3

