# tf-nested-modules-gist
Run
```
    terraform get
    TF_VAR_aws_access_key=XXX  TF_VAR_aws_secret_key=YYY  terraform plan
```
# repo hierarchy
```
           +----------------------------+
           |    tf-nested-modules-gist  |
      +----|                            |
      |    +----------------------------+
      |
uses  |
      |    +----------------------------+
      |    |  VPC UAT module            |
      |    |                            |
      |    |   - decorates VPC module   |
      +--->|                            |
           |     +----------------------+
           |     |  VPC module          |
           |     |  ( as git submodule )|
           |     |   - subnet def.      |
           |     |   - sg def           |
           |     |   - ...              |
           +-----+----------------------+
```
