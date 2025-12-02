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
      "bill.nguyen",
      "billy.bui",
      "brian.nguyen",
      "conall.nguyen",
      "cruz.huynh",
      "david.tran",
      "draco.nguyen",
      "drake.doi",
      "dwight.tran",
      "elias.ngo",
      "elton.ton",
      "eros.pham",
      "esther.nguyen",
      "george.phung",
      "james.nguyen",
      "justin.pham",
      "lucian.vo",
      "nancy.dao",
      "quinn.vo",
      "ricky.nguyen",
      "roger.le",
      "theresa.le",
      "tracy.hoang",
      "vander.nguyen",
      "vivian.nguyen",
      "wynn.ton",
      "zephyr.nguyen",
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
