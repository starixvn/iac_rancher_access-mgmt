###
cluster_org = "starix"
cluster_env = "prod"

# Access Controll Management
clusters_ac = {
  "eks-sc-prod" = {
    projects = {
      "pentagon" = {
        name        = "pentagon"
        description = "project for Pentagon Teams"
        roles = {
          "pmr" = { # Project Member Restricted
            group_members = [
              "pentagon-prod",
            ]
            members = []
          }
        }
      }
    }
  }

  "sc-prod" = {
    projects = {
      "pentagon" = {
        name        = "pentagon"
        description = "project for Pentagon Teams"
        roles = {
          "roc" = { # Project ReadOnly Member Custom
            group_members = []
            members       = []
          }
          "pmr" = { # Project Member Restricted
            group_members = [
              "pentagon-prod",
            ]
            members = []
          }
        }
      }
    }
  }

  "eks-sc-uat" = {
    projects = {
      "pentagon" = {
        name        = "pentagon"
        description = "project for Pentagon Teams"
        roles = {
          "pmc" = { # Project Member Custom
            group_members = [
              "pentagon-uat",
            ]
            members = []
          }
        }
      }
    }
  }

  "sc-uat" = {
    projects = {
      "pentagon" = {
        name        = "pentagon"
        description = "project for Pentagon Teams"
        roles = {
          "pmc" = { # Project Member Custom
            group_members = [
              "pentagon-uat",
            ]
            members = []
          }
        }
      }
    }
  }

  "k3sprod" = {
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

  "k3suat" = {
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
      "larry.tran",
      "dennis.le",
      "troy.vo",
    ]
  }

  "nexpe" = {
    rancher_admin = false
    members = [
      "alex.tran",
      "mason.le",
    ]
  }

  "pentagon-uat" = {
    rancher_admin = false
    members = [
      # "alice.le",
      "billy.bui",
      "brian.nguyen",
      "conall.nguyen",
      "david.tran",
      # "dory.vu",
      # "draco.nguyen",
      "drake.doi",
      # "dwight.tran",
      # "elias.ngo",
      # "elio.nguyen",
      "elton.ton",
      # "emi.tu",
      # "eros.pham",
      # "esther.nguyen",
      # "faisall.tran",
      # "jasmine.le",
      "lucian.vo",
      # "nancy.dao",
      # "quinn.vo",
      "ricky.nguyen",
      # "rita.bui",
      "roger.le",
      # "scofield.huynh",
      # "theresa.le",
      # "tracy.hoang",
      "vivian.nguyen",
      # "cruz.huynh",
      # "wynn.ton",
      "nexops.test",
    ]
  }

  "pentagon-prod" = {
    rancher_admin = false
    members = [
      "billy.bui",
      "conall.nguyen",
      "david.tran",
      "drake.doi",
      # "dwight.tran",
      "elton.ton",
      # "eros.pham",
      "lucian.vo",
      # "quinn.vo",
      "ricky.nguyen",
      "roger.le",
      # "scofield.huynh",
      "vivian.nguyen",
    ]
  }

}

# REQUIRED VARIABLE SET [rancher_cred]
vault_secrets = {
  rancher_cred = {
    mount = "nexops"
    path  = "automation/rancher/st/prod/nexops"
  }
}
