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
      "owen.dang",
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
      "tim.trinh",
      # "carlos.nguyen",
      # "frankie.nguyen",
      # "hank.nguyen",
      # "henry.dinh",
      # "jay.do",
      # "mira.nguyen",
      # "nexops.test",
    ]
  }
  "pioneers" = {
    members = [
      "alvin.nguyen",
      "razor.nguyen",
      "andy.nguyen",
      "egan.le",
      # "bobby.nguyen",
      # "duke.nguyen",
      # "ethan.nguyen",
      # "jack.nguyen",
      # "jerry.tran",
      # "kan.nguyen",
      # "louis.nguyen",
      # "oliver.dang",
      # "phillip.truong",
    ]
  }
  "synergy" = {
    members = [
      "charles.nguyen",
      "jacob.phan",
      "kaden.trinh",
      "robert.tran",
      "zane.trinh",
      # "agnes.tran",
      # "franklin.nguyen",
      # "levi.vu",
      # "luca.duong",
    ]
  }
  "subarashi" = {
    members = [
      "hogan.pham",
      "kai.le",
      # "happy.duong",
      # "hubert.duong",
      # "kos.nguyen",
      # "quinn.vo",
      # "victor.nguyen",
      # "walter.nguyen",
    ]
  }
  "wabisabi" = {
    members = [
      "adam.tran",
      "tony.nguyen",
      # "diego.nguyen",
      # "hani.nguyen",
      # "jonathan.doan",
      # "leon.pham",
      # "lincoln.ha",
      # "terry.nguyen",
    ]
  }

  "pentagon-sit" = {
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
      "nancy.dao",
      "ricky.nguyen",
      "roger.le",
      "wynn.ton",
      # "alice.le",
      # "dory.vu",
      # "elias.ngo",
      # "elio.nguyen",
      # "emi.tu",
      # "esther.nguyen",
      # "faisall.tran",
      # "jasmine.le",
      # "rita.bui",
      # "scofield.huynh",
      # "theresa.le",
      # "tracy.hoang",
      # "vivian.nguyen",
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
