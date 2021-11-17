# packer-vyos
Build a deployable VyOS template in vCenter.  Because automating the deploy and configuration of a VyOS system shouldn't be painful.

## Prerequisites

You'll need the following prerequisite tools installed on your system to make this setup work.

### HashiCorp Packer

https://www.packer.io

## Setup:

You'll need to (by default) set a few environment variables to ensure you're not putting credentials into your code:

### vCenter Username:

```export PACKER_VCENTER_USERNAME='your-vcenter-username'```

### vCenter Password:

```export PACKER_VCENTER_PASSWORD='your-vcenter-password'```

## Build a Template:

### Define variable overrides for your site & configuration

Copy the sample-config.pkrvars.hcl file to config.auto.pkrvars.hcl.  The .auto.pkrvars.hcl name will cause packer to automatically load the file.  If you don't want that to happen, omit the .auto & supply a -var-file=... parameter on the packer command line.

```cp sample-config.pkrvars.hcl config.auto.pkrvars.hcl```

To check the predefined variable settings as well as that your overrides are taking effect, run:

```packer inspect .```

Pay close attention to the "input variables:" section, to ensure that your settings are correct.

### Initialize Packer

Currently a no-op.  Might be more consequential in the future.

```packer init .```

### Validate the template

Packer will parse the templates and ensure that they are syntactically correct and that all the necessary values and variables are defined.

```packer validate .```

### Build the images

```packer build .```

### Conclusion

At the end of this process, you should have a vCenter template created that you can "clone to VM..." to your heart's content.

We use terraform to deploy copies of that template & configure it - look for a terraform-vyos repo for an example, coming soon.
