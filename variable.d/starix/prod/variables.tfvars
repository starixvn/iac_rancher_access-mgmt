###
cluster_org = "starix"
cluster_env = "prod"

# Access Controll Management
clusters_ac = {
  "eks-sc-prod" = {
    projects = {
      "pentagon" = {
        roles = {
          "pmr" = { # Project Member Restricted
            group_members = [
              "pentagon-prod",
            ]
          }
        }
      }
    }
  }

  "sc-prod" = {
    projects = {
      "pentagon" = {
        roles = {
          "pmr" = { # Project Member Restricted
            group_members = ["pentagon-prod"]
          }
        }
      }
    }
  }

  "eks-sc-uat" = {
    projects = {
      "pentagon" = {
        roles = {
          "pmc" = { # Project Member Custom
            group_members = ["pentagon-uat"]
          }
        }
      }
    }
  }

  "sc-uat" = {
    projects = {
      "pentagon" = {
        roles = {
          "pmc" = { # Project Member Custom
            group_members = ["pentagon-uat"]
          }
        }
      }
    }
  }

  "k3sprod" = {
    projects = {
      "nexpe" = {
        roles = {
          "pmc" = { # Project Member Custom
            group_members = ["nexpe"]
          }
        }
      }
    }
  }

  "k3suat" = {
    projects = {
      "nexpe" = {
        roles = {
          "pmc" = { # Project Member Custom
            group_members = ["nexpe"]
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
      "owen.dang",
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
      "billy.bui",
      "brian.nguyen",
      "conall.nguyen",
      "cruz.huynh",
      "david.tran",
      "draco.nguyen",
      "drake.doi",
      "dwight.tran",
      "elton.ton",
      "eros.pham",
      "lucian.vo",
      "nexops.test",
      "ricky.nguyen",
      "roger.le",
      "vivian.nguyen",
      "wynn.ton",
      "zephyr.nguyen",
      # "alice.le",
      # "dory.vu",
      # "elias.ngo",
      # "elio.nguyen",
      # "emi.tu",
      # "esther.nguyen",
      # "faisall.tran",
      # "jasmine.le",
      # "nancy.dao",
      # "quinn.vo",
      # "rita.bui",
      # "scofield.huynh",
      # "theresa.le",
      # "tracy.hoang",
    ]
  }

  "pentagon-prod" = {
    rancher_admin = false
    members = [
      "billy.bui",
      "conall.nguyen",
      "david.tran",
      "drake.doi",
      "elton.ton",
      "eros.pham",
      "lucian.vo",
      "ricky.nguyen",
      "roger.le",
      "vivian.nguyen",
      "dwight.tran",
      # "quinn.vo",
      # "scofield.huynh",
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
