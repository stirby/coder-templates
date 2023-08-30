terraform {
  required_providers {
    coder = {
        source = "coder/coder"
        version = "~> 0.8.3"
    }
    oci = {
        source = "oracle/oci"
        version = "5.10.0"
    }
  }
}

# == Admin Vars ===
variable "tenancy_ocid" {
  type = string
  description = "OCI Tenancy ID"
}

variable "oci_fingerprint" {
  type = string
  description = "OCI Public fingerprint"
}

variable "user_ocid" {
  type = string
  description = "OCI User ID for authentication"
}

variable "private_key_path" {
  type = string
  description = "Path to private SSH key for OCI"
}


# == Params =======
data "coder_parameter" "region" {
  name         = "region"
  display_name = "Region"
  description  = "What location should your workspace live in?"
  default      = "us-phoenix-1"
  icon         = "/emojis/1f310.png"
  mutable      = false
  
  option {
    name  = "Australia East (Sydney)"
    value = "ap-sydney-1"
    icon  = "/emojis/1f1e6-1f1fa.png" 
  }
  option {
    name  = "Australia Southeast (Melbourne)"
    value = "ap-melbourne-1"
    icon  = "/emojis/1f1e6-1f1fa.png" 
  }
  option {
    name  = "Brazil East (Sao Paulo)"
    value = "sa-saopaulo-1"
    icon  = "/emojis/1f1e7-1f1f7.png"
  }
  option {
    name  = "Brazil Southeast (Vinhedo)"
    value = "sa-vinhedo-1"
    icon  = "/emojis/1f1e7-1f1f7.png"
  }
  option {
    name  = "Canada Southeast (Montreal)"
    value = "ca-montreal-1"
    icon  = "/emojis/1f1e8-1f1e6.png"
  }
  option {
    name  = "Canada Southeast (Toronto)"
    value = "ca-toronto-1"
    icon  = "/emojis/1f1e8-1f1e6.png"
  }
  option {
    name  = "Chile (Santiago)"
    value = "sa-santiago-1"
    icon  = "/emojis/1f1e8-1f1f1.png"
  }
  option {
    name  = "France Central (Paris)"
    value = "eu-paris-1"
    icon  = "/emojis/1f1eb-1f1f7.png" 
  }
  option {
    name  = "France South (Marseille)"
    value = "eu-marseille-1"
    icon  = "/emojis/1f1eb-1f1f7.png"
  }
  option {
    name  = "Germany Central (Frankfurt)"
    value = "eu-frankfurt-1"
    icon  = "/emojis/1f1e9-1f1ea.png"
  }
  option {
    name  = "India South (Hyderabad)"
    value = "ap-hyderabad-1"
    icon  = "/emojis/1f1ee-1f1f3.png" 
  }
  option {
    name  = "India West (Mumbai)"
    value = "ap-mumbai-1"
    icon  = "/emojis/1f1ee-1f1f3.png"
  }
  option {
    name  = "Israel Central (Jerusalem)"
    value = "il-jerusalem-1"
    icon  = "/emojis/1f1ee-1f1f1.png" 
  }
  option {
    name  = "Italy Northwest (Milan)"
    value = "eu-milan-1"
    icon  = "/emojis/1f1ee-1f1f9.png"
  }
  option {
    name  = "Japan Central (Osaka)"
    value = "ap-osaka-1"
    icon  = "/emojis/1f1ef-1f1f5.png"
  }
  option {
    name  = "Japan East (Tokyo)"
    value = "ap-tokyo-1"
    icon  = "/emojis/1f1ef-1f1f5.png"
  }
  option {
    name  = "Mexico Central (Queretaro)" 
    value = "mx-queretaro-1"
    icon  = "/emojis/1f1f2-1f1fd.png" 
  }
  option {
    name  = "Mexico Northeast (Monterrey)"
    value = "mx-monterrey-1"
    icon  = "/emojis/1f1f2-1f1fd.png"
  }
  option {
    name  = "Netherlands Northwest (Amsterdam)"
    value = "eu-amsterdam-1"
    icon  = "/emojis/1f1f3-1f1f1.png" 
  }
  option {
    name  = "Saudi Arabia West (Jeddah)"
    value = "me-jeddah-1"
    icon  = "/emojis/1f1f8-1f1e6.png"
  }
  option {
    name  = "Serbia Central (Jovanovac)"
    value = "eu-jovanovac-1"
    icon  = "/emojis/1f1f7-1f1f8.png"
  }
  option {
    name  = "Singapore (Singapore)"
    value = "ap-singapore-1"
    icon  = "/emojis/1f1f8-1f1ec.png"
  }
  option {
    name  = "South Africa Central (Johannesburg)"
    value = "af-johannesburg-1"
    icon  = "/emojis/1f1ff-1f1e6.png"
  }
  option {
    name  = "South Korea Central (Seoul)"
    value = "ap-seoul-1"
    icon  = "/emojis/1f1f0-1f1f7.png"
  }
  option {
    name  = "South Korea North (Chuncheon)"
    value = "ap-chuncheon-1"
    icon  = "/emojis/1f1f0-1f1f7.png"
  }
  option {
    name  = "Spain Central (Madrid)"
    value = "eu-madrid-1"
    icon  = "/emojis/1f1ea-1f1f8.png"
  }
  option {
    name  = "Sweden Central (Stockholm)"
    value = "eu-stockholm-1"
    icon  = "/emojis/1f1f8-1f1ea.png"
  }
  option {
    name  = "Switzerland North (Zurich)"
    value = "eu-zurich-1"
    icon  = "/emojis/1f1e8-1f1ed.png"
  }
  option {
    name  = "UAE Central (Abu Dhabi)"
    value = "me-abudhabi-1"
    icon  = "/emojis/1f1e6-1f1ea.png"
  }
  option {
    name  = "UAE East (Dubai)"
    value = "me-dubai-1"
    icon  = "/emojis/1f1e6-1f1ea.png"
  }
  option {
    name  = "UK South (London)"
    value = "uk-london-1"
    icon  = "/emojis/1f1ec-1f1e7.png"
  }
  option {
    name  = "UK West (Newport)"
    value = "uk-cardiff-1"
    icon  = "/emojis/1f1ec-1f1e7.png"
  }
    option {
    name  = "US East (Ashburn)"
    value = "us-ashburn-1"
    icon  = "/emojis/1f1fa-1f1f8.png"
  }
  option {
    name  = "US Midwest (Chicago)"
    value = "us-chicago-1"
    icon  = "/emojis/1f1fa-1f1f8.png"
  }
  option {
    name  = "US West (Phoenix)"
    value = "us-phoenix-1"
    icon  = "/emojis/1f1fa-1f1f8.png"
  }
  option {
    name  = "US West (San Jose)"
    value = "us-sanjose-1"
    icon  = "/emojis/1f1fa-1f1f8.png"
  }
}

data "coder_parameter" "ocpus" {
  name         = "ocpus"
  display_name = "CPU Count"
  description  = "How many CPU cores should be provisioned for your workspace?"
  default      = "2"
  icon         = "/icon/memory.svg"
  type         = "number"
  mutable      = true
  validation {
    min = 1
    max = 32
  }
}

data "coder_parameter" "memory" {
  name         = "memory"
  display_name = "Memory"
  description  = "The amount of memory in GB"
  default      = "2"
  icon         = "/icon/memory.svg"
  type         = "number"
  mutable      = true
  validation {
    min = 1
    max = 64 
  }
}

data "coder_parameter" "home_disk_size" {
  name         = "home_disk_size"
  display_name = "Home disk size"
  description  = "The size of the home disk in GB"
  default      = "50"
  type         = "number"
  icon         = "/emojis/1f4bd.png"
  mutable      = false
  validation {
    min = 50
    max = 1600
  }
}

# == Coder ========

data "coder_workspace" "me" {}

resource "coder_agent" "main" {
  os   = "linux"
  arch = "amd64"

  metadata {
    key          = "cpu"
    display_name = "CPU Usage"
    interval     = 5
    timeout      = 5
    script       = <<-EOT
      #!/bin/bash
      set -e
      top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4 "%"}'
    EOT
  }
  metadata {
    key          = "memory"
    display_name = "Memory Usage"
    interval     = 5
    timeout      = 5
    script       = <<-EOT
      #!/bin/bash
      set -e
      free -m | awk 'NR==2{printf "%.2f%%\t", $3*100/$2 }'
    EOT
  }
  metadata {
    key          = "disk"
    display_name = "Disk Usage"
    interval     = 600 # every 10 minutes
    timeout      = 30  # df can take a while on large filesystems
    script       = <<-EOT
      #!/bin/bash
      set -e
      df /home/${data.coder_workspace.me.owner} | awk '$NF=="/home/${data.coder_workspace.me.owner}"{printf "%s", $5}'
    EOT
  }

}


# == Oracle =======

locals {
  ubuntu_images = {
    af-johannesburg-1 = "ocid1.image.oc1.af-johannesburg-1.aaaaaaaag5hca6vtbbmoqxzakgkxnnh7rbzlt5khndbcz7u52wbhvxzt74qq"
    ap-chuncheon-1 = "ocid1.image.oc1.ap-chuncheon-1.aaaaaaaaqhjmwdjsrg5mpfzanq3gxithp2sql2chhqguur4gklgb7l4ncznq"
    ap-hyderabad-1 = "ocid1.image.oc1.ap-hyderabad-1.aaaaaaaatnv5436pmjea5ff7oafzba6igw7imhsvr6p6t6hpm64cnu5oo4kq"
    ap-melbourne-1 = "ocid1.image.oc1.ap-melbourne-1.aaaaaaaalqfklqaw2elltscu3bpcxkiiln4fdkqciackt2tcarodtwr5yk2q"
    ap-mumbai-1 = "ocid1.image.oc1.ap-mumbai-1.aaaaaaaabcyqx5im2jdsteoiree7tkk2wbkuff4jrfwuqym4bycmiznpuosa"
    ap-osaka-1 = "ocid1.image.oc1.ap-osaka-1.aaaaaaaau2asu7iugaautay6ugxhliqr6nw7zumfapdykbssyjazywwbpzmq"
    ap-seoul-1 = "ocid1.image.oc1.ap-seoul-1.aaaaaaaazzcgxt2b3qdhemc4muzakloslxvhg3b7fb3cvzfukmcm2snl5leq"
    ap-singapore-1 = "ocid1.image.oc1.ap-singapore-1.aaaaaaaaddgquoimizqwk2pnqmyzkevyc5g7akw3jtciihjdkrmsqqqhi6fa"
    ap-sydney-1 = "ocid1.image.oc1.ap-sydney-1.aaaaaaaa7bdcq7cetinhtyr7apivnlshm5lrwtasyw2sybrxuauqkpvfzknq"
    ap-tokyo-1 = "ocid1.image.oc1.ap-tokyo-1.aaaaaaaaupqp746qmoqhg6at55w6tmnz4jhyz4swi3yukzlvspmhddjye2eq"
    ca-montreal-1 = "ocid1.image.oc1.ca-montreal-1.aaaaaaaazo4nr7mpqwcikishgducsoeoop6gkatpowwhiul4esvwasocsxca"
    ca-toronto-1 = "ocid1.image.oc1.ca-toronto-1.aaaaaaaaibltbewrp3zmcshik7z3rdk25kt5ppikuo2i6qo4shcppeno5e5a"
    eu-amsterdam-1 = "ocid1.image.oc1.eu-amsterdam-1.aaaaaaaajsp62yuuzajmnoii7eglxuooobhuip7ikzr3wduxyby5yfhrtb4q"
    eu-frankfurt-1 = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaad3dy5orksgsw23qyv6cf4nc4mwcys44afih5vsp3mc2tzm7tsp2q"
    eu-madrid-1 = "ocid1.image.oc1.eu-madrid-1.aaaaaaaaoowfkick6l7aq3aettsvbzz25yy3ymb5kjo5wpscrxno2ap2elba"
    eu-marseille-1 = "ocid1.image.oc1.eu-marseille-1.aaaaaaaaw2lnbhy3wzwmfz5wadhjsfsyyl4a5r5mefwxsvnu64bpasrcxo7q"
    eu-milan-1 = "ocid1.image.oc1.eu-milan-1.aaaaaaaa7mxzotic2obgdzntx4adczlyaj2rang7rdpuldedvgkg7wlnzwcq"
    eu-paris-1 = "ocid1.image.oc1.eu-paris-1.aaaaaaaaaivxljabxwmkdzkdzk3agfdkix7ybkqzwbalawmn5rtpdohf2rua"
    eu-stockholm-1 = "ocid1.image.oc1.eu-stockholm-1.aaaaaaaaxbeuael2jmoy3eln4zrka4v2e2yeyaomslja5o7mes7eelysi3sa"
    eu-zurich-1 = "ocid1.image.oc1.eu-zurich-1.aaaaaaaarxcjh5ac763nuruhtigyuyyaeqpe6oop7mgimcuumauhcjwf6rsa"
    il-jerusalem-1 = "ocid1.image.oc1.il-jerusalem-1.aaaaaaaamsslzvunbj44xr7omicps6xree7cmzxwkzwopy6wizhoay4et6ja"
    me-abudhabi-1 = "ocid1.image.oc1.me-abudhabi-1.aaaaaaaadtmlhorccjzrbneebrvf2ulxx3l4h4n55sz3c75oawassgqkdegq"
    me-dubai-1 = "ocid1.image.oc1.me-dubai-1.aaaaaaaafxjimchblz6fnzkd6tc2jl3z5rmqwsw737h4vttnxwh44q4yddkq"
    me-jeddah-1 = "ocid1.image.oc1.me-jeddah-1.aaaaaaaajtosnfpgkyupfh7uebgappvnrz76tmszpy2jgzvssemuevby4iza"
    mx-queretaro-1 = "ocid1.image.oc1.mx-queretaro-1.aaaaaaaanqlq6pdtozndxmldbgdj32q6iqx5ojnceqlogehafpqti4zuodjq"
    sa-santiago-1 = "ocid1.image.oc1.sa-santiago-1.aaaaaaaangm3sqx7pz47a2apf44b73npjxaxnfyxcirzkzoamnjnai5ohjwq"
    sa-saopaulo-1 = "ocid1.image.oc1.sa-saopaulo-1.aaaaaaaa276mhbegdohrplgjr4g26czbbbyjsb3de2cjds644lmkbtad5flq"
    sa-vinhedo-1 = "ocid1.image.oc1.sa-vinhedo-1.aaaaaaaa666jiaf7mvvw5g5vnex7zmongztkrgeilnapczr25kcsa5xonwyq"
    uk-cardiff-1 = "ocid1.image.oc1.uk-cardiff-1.aaaaaaaasvwmnl55bee43udab3okxnftxdslm2jjczivstpcshvw5hgnjmqq"
    uk-london-1 = "ocid1.image.oc1.uk-london-1.aaaaaaaahyhkbel5zxxlnlq7ox7ri6icnx3hhwxqqud3v5jdycs2rfqjqovq"
    us-ashburn-1 = "ocid1.image.oc1.iad.aaaaaaaaq7lzb7lkmbnp6zlcbgbcxnypaugvm2cymqtmpfsyd45jxub5ktha"
    us-chicago-1 = "ocid1.image.oc1.us-chicago-1.aaaaaaaachbmdg4efkqmodnpdpc7yu3huiqhq67he7mo4v7ahh5fh7ttc6hq"
    us-phoenix-1 = "ocid1.image.oc1.phx.aaaaaaaajevaflvu6j5jefeq3g7lmfuxwd6k3fmt4rwg5ben4fmm2rj4ar6a"
    us-sanjose-1 = "ocid1.image.oc1.us-sanjose-1.aaaaaaaakgwu3iyootgssy3dzgf5sp5gn7hklexrafiky26chko3xj65yfjq"
  }
}

provider "oci" {
    region           = data.coder_parameter.region.value
    tenancy_ocid     = var.tenancy_ocid
    user_ocid        = var.user_ocid
    fingerprint      = var.oci_fingerprint
    private_key_path = var.private_key_path
}

resource "oci_core_vcn" "workspace_vcn" {
  cidr_block     = "10.0.0.0/16"
  display_name   = "workspace-vcn"
  compartment_id = var.tenancy_ocid
  dns_label      = "workspacevcn"
}


resource "oci_core_instance" "workspace" {
  count               = data.coder_workspace.me.start_count
  availability_domain = data.oci_identity_availability_domain.ad.name
  compartment_id      = var.tenancy_ocid
  display_name        = "coder-${data.coder_workspace.me.owner}-${data.coder_workspace.me.name}"  
  
  shape = "VM.Standard.E4.Flex"
  shape_config {
    ocpus         = data.coder_parameter.ocpus.value
    memory_in_gbs = data.coder_parameter.memory.value
  }

  
  source_details {
    source_type = "image"
    source_id   = local.ubuntu_images[data.coder_parameter.region.value]
  }


  create_vnic_details {
    subnet_id                 = oci_core_subnet.workspace_subnet.id
    display_name              = "Mainvnic"
    assign_public_ip          = true
    assign_private_dns_record = true
    hostname_label            = "workspace"
  }

  metadata = {
    user_data = base64encode(templatefile("./cloud-config.yaml.tftpl", {
      username          = data.coder_workspace.me.owner
      init_script       = base64encode(coder_agent.main.init_script)
      coder_agent_token = coder_agent.main.token
    }))
  }

  timeouts {
    create = "60m"
  }
}

resource "oci_core_volume" "home_volume" {
  availability_domain = data.oci_identity_availability_domain.ad.name
  compartment_id      = var.tenancy_ocid
  display_name        = "HomeBlockVolume"
  size_in_gbs         = "${data.coder_parameter.home_disk_size.value}"
}

resource "oci_core_volume_attachment" "home_volume_attach" {
  count           = data.coder_workspace.me.start_count
  attachment_type = "paravirtualized"
  instance_id     = oci_core_instance.workspace[count.index].id
  volume_id       = oci_core_volume.home_volume.id
}

resource "oci_core_internet_gateway" "test_internet_gateway" {
  compartment_id = var.tenancy_ocid
  display_name   = "CoderInternetGateway"
  vcn_id         = oci_core_vcn.workspace_vcn.id
}

resource "oci_core_default_route_table" "default_route_table" {
  manage_default_resource_id = oci_core_vcn.workspace_vcn.default_route_table_id
  display_name               = "CoderRouteTable"

  route_rules {
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = oci_core_internet_gateway.test_internet_gateway.id
  }
}

resource "oci_core_subnet" "workspace_subnet" { 
  availability_domain = data.oci_identity_availability_domain.ad.name
  cidr_block          = "10.0.1.0/24"
  display_name        = "WorkspaceSubnet"
  dns_label           = "workspacesubnet"
  security_list_ids   = [oci_core_vcn.workspace_vcn.default_security_list_id]
  compartment_id      = var.tenancy_ocid
  vcn_id              = oci_core_vcn.workspace_vcn.id
  route_table_id      = oci_core_vcn.workspace_vcn.default_route_table_id
  dhcp_options_id     = oci_core_vcn.workspace_vcn.default_dhcp_options_id
}

data "oci_identity_availability_domain" "ad" {
  compartment_id = var.tenancy_ocid
  ad_number      = 1
}

