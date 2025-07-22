##
cluster_org = "starix"
cluster_env = "local"

# Access Controll Management
clusters_ac = {
  "st-local" = { # Cluster on Rancher
    projects = {
      "ops" = {
        name        = "ops"
        description = "Project for Ops Services"
        roles       = {}
      }
      "nexpe" = {
        name        = "nexpe"
        description = "project for NexPE Teams"
        roles = {
          "pmc" = { # Project Member Custom
            group_members = [
              "nexpe",
            ]
            members = []
          }
        }
      }
    }
  }
  "st-nexprod" = {
    projects = {
      "nexpe" = {
        name        = "nexpe"
        description = "project for NexPE Teams"
        roles = {
          "pmc" = { # Project Member Custom
            group_members = [
              "nexpe",
            ]
            members = []
          }
        }
      }
    }
  }
}


user_groups = {
  "nexops" = {
    rancher_admin = true
    members = [
      "josh.tran",
      "dennis.le",
      "troy.vo",
      "ken.nguyen",
      "larry.tran",
      "owen.dang",
    ]
  }
  "nexpe" = {
    rancher_admin = false
    members = [
      "mason.le",
      "alex.tran",
    ]
  }

}

# REQUIRED VARIABLE SET [rancher_cred]
vault_secrets = {
  rancher_cred = {
    mount = "nexops"
    path  = "automation/rancher/st/local/nexops"
  }
}
