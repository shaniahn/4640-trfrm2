1) Pull the code from this repository into your workspace folder
2) You will need to source the .env file for Terraform and Ansible to be able to connect (this isn't included), so I would create a new token on your own DO account.
3) Source the file that you've created with the token.
4) Once you're in the /dev folder of the project, run ``` terraform plan``` to check that everything is how you want it.
5) Run ``` terraform apply ``` when you want to execute the plan.
6) You should now see 2 load balancer droplets in your DO account.
7) Move into the /mgmt folder so that we can install nginx on each of the droplets.
8) Once in that folder, run the command ``` ansible-playbook nginx_setup.yml  -u root ``` and this will install and start nginx on both droplets.
9) Go to DO account, under Networking, you'll see the IP address for the load balancer under the load balancer tab. Copy this and paste it into your URL bar.
10) You should see a generic nginx landing page - ideally, this will be a page hosting something else.
