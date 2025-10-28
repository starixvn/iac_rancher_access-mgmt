#####
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

  "st-sit" = {
    projects = {
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
  "nexpe" = {
    members = [
      # "alex.tran",
      # "mason.le",
    ]
  }
  "novastar" = {
    members = [
      "carlos.nguyen",
      "frankie.nguyen",
      "hank.nguyen",
      "henry.dinh",
      "jay.do",
      "mira.nguyen",
      "tim.trinh",
      # "nexops.test",
    ]
  }
  "pioneers" = {
    members = [
      "alvin.nguyen",
      "andy.nguyen",
      "egan.le",
      "ethan.nguyen",
      "louis.nguyen",
      "oliver.dang",
      "phillip.truong",
      "razor.nguyen",
      # "bobby.nguyen",
      # "duke.nguyen",
      # "jack.nguyen",
      # "jerry.tran",
      # "kan.nguyen",
    ]
  }
  "synergy" = {
    members = [
      "agnes.tran",
      "jacob.phan",
      "kaden.trinh",
      "levi.vu",
      "luca.duong",
      "robert.tran",
      "zane.trinh",
      # "charles.nguyen",
      # "franklin.nguyen",
    ]
  }
  "subarashi" = {
    members = [
      "happy.duong",
      "hubert.duong",
      "kai.le",
      "quinn.vo",
      "victor.nguyen",
      # "hogan.pham",
      # "kos.nguyen",
      # "walter.nguyen",
    ]
  }
  "wabisabi" = {
    members = [
      "adam.tran",
      "diego.nguyen",
      "terry.nguyen",
      # "hani.nguyen",
      # "jonathan.doan",
      # "leon.pham",
      # "lincoln.ha",
      # "tony.nguyen",
    ]
  }

  "pentagon-sit" = {
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
