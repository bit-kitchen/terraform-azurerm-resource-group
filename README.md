# bit-kitchen/resource-group/azurerm

Create a new or access an existing resource group.

## Usage

### Create a new resource group

Both `name` and `location` are required for a new named resource group.

```hcl
module "new_resource_group" {
    source  = "bit-kitchen/resource-group/azurerm"
    version = "~> 1.0"

    name     = "example"
    location = "West Europe"
}
```

### Create a new resource group with a randomly generated UUID name

Only `location` is required for a new randomly named resource group.

```hcl
module "new_resource_group_with_random_name" {
    source  = "bit-kitchen/resource-group/azurerm"
    version = "~> 1.0"

    location = "eastus"
}
```

### Access an existing resource group

`name` is required for an existing resource group.
And `location` cannot be specified in this case.

```hcl
module "existing_resource_group" {
    source  = "bit-kitchen/resource-group/azurerm"
    version = "~> 1.0"

    name = "existing-resource-group-name"
}
```


## Inputs

Name     | Type        | Required <br> as a resource | Required <br> as a data source | Description
-------- | ----------- | --------------------------- | ------------------------------ | -----------
name     | string      | ☐ | ☑ | The Name of the Resource Group to create or access.
location | string      | ☑ | ☒ | The Azure Region where the Resource Group exists.
tags     | map(string) | ☐ | ☒ | A mapping of tags which should be assigned to the Resource Group.

☐: Optional.  
☑: Required to be specified.  
☒: Required to be not specified.  


## Outputs

Name     | Type        | Description
-------- | ----------- | -----------
id       | string      | The ID of the Resource Group.
name     | string      | The Name of the Resource Group.
location | string      | The Location of the Resource Group.
tags     | map(string) | The Tags of the Resource Group.


## LICENSE

[MIT](LICENSE)
