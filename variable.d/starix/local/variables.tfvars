##
cluster_org = "starix"
cluster_env = "local"

# Access Controll Management
clusters_ac = {
  "st-local" = { # Cluster on Rancher
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
          "nxpe" = {
            group_members = [
              "nexpe",
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
          "nxpe" = {
            group_members = [
              "nexpe",
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
          "nxpe" = {
            group_members = [
              "nexpe",
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
          "nxpe" = {
            group_members = [
              "nexpe",
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
          "nxpe" = {
            group_members = [
              "nexpe",
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
          "nxpe" = {
            group_members = [
              "nexpe",
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
          "nxpe" = {
            group_members = [
              "nexpe",
            ]
            members = []
          }
        }
      }
      "hrm" = {
        roles = {
          "pmc" = { # Project Member Custom
            group_members = [
              "novastar",
            ]
            members = []
          }
          "nxpe" = {
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
      "dennis.le",
      "josh.tran",
      "ken.nguyen",
      "larry.tran",
      "owen.dang",
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
  "novastar" = {
    rancher_admin = false
    members = [
      "carlos.nguyen",
      "frankie.nguyen",
      "hank.nguyen",
      "henry.dinh",
      "jay.do",
      "mira.nguyen",
      "nexops.test",
      "tim.trinh",
    ]
  }
  "pioneers" = {
    rancher_admin = false
    members = [
      "alvin.nguyen",
      "andy.nguyen",
      "bobby.nguyen",
      "duke.nguyen",
      "egan.le",
      "ethan.nguyen",
      "jack.nguyen",
      "jerry.tran",
      "kan.nguyen",
      "louis.nguyen",
      "oliver.dang",
      "phillip.truong",
      "razor.nguyen",
    ]
  }
  "synergy" = {
    rancher_admin = false
    members = [
      "agnes.tran",
      "charles.nguyen",
      "franklin.nguyen",
      "jacob.phan",
      "kaden.trinh",
      "levi.vu",
      "luca.duong",
      "robert.tran",
      "zane.trinh",
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
      "victor.nguyen",
      "walter.nguyen",
    ]
  }
  "wabisabi" = {
    rancher_admin = false
    members = [
      "adam.tran",
      "diego.nguyen",
      "hani.nguyen",
      "jonathan.doan",
      "leon.pham",
      "lincoln.ha",
      "terry.nguyen",
      "tony.nguyen",
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
