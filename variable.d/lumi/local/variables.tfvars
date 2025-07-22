#######
cluster_org = "lumi"
cluster_env = "local"


# Access Controll Management
clusters_ac = {
  "sc-local" = {
    name = "sc-local"
    projects = {
      "pentagon" = {
        name        = "pentagon"
        description = "project for Pentagon Teams"
        roles = {
          "roc" = { # Project ReadOnly Member Custom
            group_members = []
            members       = []
          }
          "pmc" = { # Project Member Custom
            group_members = [
              "pentagon",
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
      "ken.nguyen",
      "troy.vo",
      "larry.tran",
      "mason.le",
      "alex.tran",
      "owen.dang",
    ]
  }

  "pentagon" = {
    members = [
      "billy.bui",
      "bill.nguyen",
      "brian.nguyen",
      "conall.nguyen",
      "draco.nguyen",
      "drake.doi",
      "dwight.tran",
      "elias.ngo",
      "elton.ton",
      "esther.nguyen",
      "george.phung",
      "lucian.vo",
      "ricky.nguyen",
      "roger.le",
      "vivian.nguyen",
      "zephyr.nguyen",
      "cruz.huynh",
      "wynn.ton",
      "james.nguyen",
      "theresa.le",
      "nancy.dao",
      "tracy.hoang",
      "eros.pham",
      "david.tran",
      "quinn.vo",
    ]
  }

}


# REQUIRED VARIABLE SET [rancher_cred]
vault_secrets = {
  rancher_cred = {
    mount = "nexops"
    path  = "automation/rancher/sc/local/nexops"
  }
}
