###
cluster_org = "starix"
cluster_env = "dr"

# Access Controll Management
clusters_ac = {
  "k3sdr" = {
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
  "sc-dr" = {
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
  "st-dr" = {
    projects = {
      "nexpe" = {
        roles = {
          "pmc" = { # Project Member Custom
            group_members = [
              "nexpe",
            ]
            members = []
          }
        }
      }
      "ai" = {
        roles = {
          "pmc" = { # Project Member Custom
            group_members = [
              "wabisabi",
            ]
            members = []
          }
        }
      }
      "alpha" = {
        roles = {
          "pmc" = { # Project Member Custom
            group_members = [
              "pioneers",
            ]
            members = []
          }
        }
      }
      "fanex" = {
        roles = {
          "pmc" = { # Project Member Custom
            group_members = [
              "pioneers",
              "synergy",
            ]
            members = []
          }
        }
      }
      "fps" = {
        roles = {
          "pmc" = { # Project Member Custom
            group_members = [
              "wabisabi",
            ]
            members = []
          }
        }
      }
      "lap" = {
        roles = {
          "pmc" = { # Project Member Custom
            group_members = [
              "subarashi",
            ]
            members = []
          }
        }
      }
      "aff" = {
        roles = {
          "pmc" = { # Project Member Custom
            group_members = [
              "subarashi",
            ]
            members = []
          }
        }
      }
      "nap" = {
        roles = {
          "pmc" = { # Project Member Custom
            group_members = [
              "novastar",
              "pioneers",
              "synergy",
              "subarashi",
              "wabisabi",
            ]
            members = []
          }
        }
      }
    }
  }
  "alp-dr" = {
    projects = {
      "alpha" = {
        roles = {
          "pmc" = { # Project Member Custom
            group_members = [
              "pioneers",
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

  "novastar" = {
    rancher_admin = false
    members = [
      "carlos.nguyen",
      "hank.nguyen",
      # "henry.dinh",
      # "jay.do",
      # "mira.nguyen",
      "tim.trinh",
    ]
  }
  "pioneers" = {
    rancher_admin = false
    members = [
      "alvin.nguyen",
      "andy.nguyen",
      "ethan.nguyen",
      "kan.nguyen",
      "louis.nguyen",
      "oliver.dang",
      "phillip.truong",
      "razor.nguyen",
      # "bobby.nguyen",
      # "egan.le",
      # "jack.nguyen",
      # "jerry.tran",
    ]
  }
  "synergy" = {
    rancher_admin = false
    members = [
      "franklin.nguyen",
      "jacob.phan",
      "kaden.trinh",
      "levi.vu",
      "robert.tran",
      "zane.trinh",
      # "agnes.tran",
      # "charles.nguyen",
    ]
  }
  "subarashi" = {
    rancher_admin = false
    members = [
      "happy.duong",
      "hogan.pham",
      "hubert.duong",
      "kai.le",
      "kos.nguyen",
      "quinn.vo",
    ]
  }
  "wabisabi" = {
    rancher_admin = false
    members = [
      "adam.tran",
      "diego.nguyen",
      "jonathan.doan",
      "terry.nguyen",
      "tony.nguyen",
      # "hani.nguyen",
      # "lincoln.ha",
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
    ]
  }

}

# REQUIRED VARIABLE SET [rancher_cred]
vault_secrets = {
  rancher_cred = {
    mount = "nexops"
    path  = "automation/rancher/st/dr/nexops"
  }
}
