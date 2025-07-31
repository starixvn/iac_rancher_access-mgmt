####
cluster_org = "starix"
cluster_env = "sit"

# Access Controll Management
clusters_ac = {
  "sc-sit" = { # Cluster on Rancher
    projects = {
      "pentagon" = {
        description = "project for Pentagon Teams"
        roles = {
          "roc" = { # Project ReadOnly Member Custom
            group_members = []
            members       = []
          }
          "pmc" = { # Project Member Custom
            group_members = [
              "pentagon-sit",
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
      "dennis.le",
      "josh.tran",
      "larry.tran",
      "troy.vo",
    ]
  }

  "pentagon-sit" = {
    rancher_admin = false
    members = [
      "alice.le",
      "billy.bui",
      "brian.nguyen",
      "conall.nguyen",
      "david.tran",
      "dory.vu",
      "draco.nguyen",
      "drake.doi",
      "dwight.tran",
      "elias.ngo",
      "elio.nguyen",
      "elton.ton",
      "emi.tu",
      "eros.pham",
      "esther.nguyen",
      "faisall.tran",
      "jasmine.le",
      "lucian.vo",
      "nancy.dao",
      "quinn.vo",
      "ricky.nguyen",
      "rita.bui",
      "roger.le",
      "scofield.huynh",
      "theresa.le",
      "tracy.hoang",
      "vivian.nguyen",
      "cruz.huynh",
      "wynn.ton",
      "nexops.test",
    ]
  }

}

# REQUIRED VARIABLE SET [rancher_cred]
vault_secrets = {
  rancher_cred = {
    mount = "nexops"
    path  = "automation/rancher/st/sit/nexops"
  }
}
