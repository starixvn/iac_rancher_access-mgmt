# Create cluster Role Template
resource "rancher2_role_template" "cluster_dev_view" {
  name              = "Dev View"
  context           = "cluster"
  description       = "Terraform role - Cluster View for Dev"
  role_template_ids = ["nodes-view"]
  rules {
    api_groups = ["metrics.k8s.io"]
    resources  = ["nodemetrics", "nodes"]
    verbs      = ["get", "list", "watch"]
  }
}

# Create cluster Role Template no-permission
resource "rancher2_role_template" "cluster_no_permission" {
  name        = "No Permission"
  context     = "cluster"
  description = "Terraform role - Cluster No Permission"
  rules {
    api_groups = ["apiregistration.k8s.io"]
    resources  = ["apiservices"]
    verbs      = ["get", "list", "watch"]
  }
}

# Create Project Role without catalog permission
### code: pmc ###
resource "rancher2_role_template" "custom_project_member" {
  name              = "Custom Project Member"
  context           = "project"
  description       = "Terraform role - Project Member without catalog permission"
  role_template_ids = ["edit"]
  rules {
    api_groups = ["ui.cattle.io"]
    resources  = ["navlinks"]
    verbs      = ["get", "list", "watch"]
  }
  rules {
    api_groups = ["management.cattle.io"]
    resources  = ["projectroletemplatebindings"]
    verbs      = ["get", "list", "watch"]
  }
  rules {
    api_groups = ["project.cattle.io"]
    resources  = ["apps"]
    verbs      = ["*"]
  }
  rules {
    api_groups = ["project.cattle.io"]
    resources  = ["apprevisions"]
    verbs      = ["*"]
  }
  rules {
    api_groups = [""]
    resources  = ["persistentvolumes"]
    verbs      = ["get", "list", "watch"]
  }
  rules {
    api_groups = ["storage.k8s.io"]
    resources  = ["storageclasses"]
    verbs      = ["get", "list", "watch"]
  }
  rules {
    api_groups = ["apiregistration.k8s.io"]
    resources  = ["apiservices"]
    verbs      = ["get", "list", "watch"]
  }
  rules {
    api_groups = [""]
    resources  = ["persistentvolumeclaims"]
    verbs      = ["*"]
  }
  rules {
    api_groups = ["metrics.k8s.io"]
    resources  = ["pods"]
    verbs      = ["*"]
  }
  rules {
    api_groups = ["management.cattle.io"]
    resources  = ["clusterevents"]
    verbs      = ["get", "list", "watch"]
  }
  rules {
    api_groups = ["management.cattle.io"]
    resources  = ["projectloggings"]
    verbs      = ["get", "list", "watch"]
  }
  rules {
    api_groups = ["monitoring.coreos.com"]
    resources  = ["prometheuses", "prometheusrules", "servicemonitors"]
    verbs      = ["*"]
  }
  rules {
    api_groups     = ["management.cattle.io"]
    resource_names = ["local"]
    resources      = ["clusters"]
    verbs          = ["get"]
  }
}

### code: roc ###
resource "rancher2_role_template" "custom_project_readonly" {
  name              = "Custom Project ReadOnly"
  context           = "project"
  description       = "Terraform role - Project ReadOnly without catalog permission"
  role_template_ids = ["view"]
  rules {
    api_groups = ["ui.cattle.io"]
    resources  = ["navlinks"]
    verbs      = ["get", "list", "watch"]
  }
  rules {
    api_groups = ["management.cattle.io"]
    resources  = ["projectroletemplatebindings"]
    verbs      = ["get", "list", "watch"]
  }
  rules {
    api_groups = ["project.cattle.io"]
    resources  = ["apps"]
    verbs      = ["get", "list", "watch"]
  }
  rules {
    api_groups = ["project.cattle.io"]
    resources  = ["apprevisions"]
    verbs      = ["get", "list", "watch"]
  }
  rules {
    api_groups = [""]
    resources  = ["persistentvolumes"]
    verbs      = ["get", "list", "watch"]
  }
  rules {
    api_groups = ["storage.k8s.io"]
    resources  = ["storageclasses"]
    verbs      = ["get", "list", "watch"]
  }
  rules {
    api_groups = ["apiregistration.k8s.io"]
    resources  = ["apiservices"]
    verbs      = ["get", "list", "watch"]
  }
  rules {
    api_groups = [""]
    resources  = ["persistentvolumeclaims"]
    verbs      = ["get", "list", "watch"]
  }
  rules {
    api_groups = ["metrics.k8s.io"]
    resources  = ["pods"]
    verbs      = ["get", "list", "watch"]
  }
  rules {
    api_groups = ["management.cattle.io"]
    resources  = ["clusterevents"]
    verbs      = ["get", "list", "watch"]
  }
  rules {
    api_groups = ["management.cattle.io"]
    resources  = ["projectloggings"]
    verbs      = ["get", "list", "watch"]
  }
  rules {
    api_groups = ["management.cattle.io"]
    resources  = ["clustercatalogs"]
    verbs      = ["get", "list", "watch"]
  }
  rules {
    api_groups = ["management.cattle.io"]
    resources  = ["projectcatalogs"]
    verbs      = ["get", "list", "watch"]
  }
  rules {
    api_groups = ["monitoring.coreos.com"]
    resources  = ["prometheuses", "prometheusrules", "servicemonitors"]
    verbs      = ["get", "list", "watch"]
  }
  rules {
    api_groups     = ["management.cattle.io"]
    resource_names = ["local"]
    resources      = ["clusters"]
    verbs          = ["get"]
  }
}

### code: pmr ###
resource "rancher2_role_template" "project_member_restricted" {
  name              = "Custom Project Member Restricted"
  context           = "project"
  description       = "Terraform role - Project Member without DELETE Deploy Permission"
  role_template_ids = ["view"]
  rules {
    api_groups = ["management.cattle.io"]
    resources  = ["projectroletemplatebindings"]
    verbs      = ["get", "list", "watch"]
  }
  rules {
    api_groups = [""]
    resources  = ["persistentvolumes"]
    verbs      = ["get", "list", "watch"]
  }
  rules {
    api_groups = ["storage.k8s.io"]
    resources  = ["storageclasses"]
    verbs      = ["get", "list", "watch"]
  }
  rules {
    api_groups = ["apiregistration.k8s.io"]
    resources  = ["apiservices"]
    verbs      = ["get", "list", "watch"]
  }
  rules {
    api_groups = [""]
    resources  = ["persistentvolumeclaims"]
    verbs      = ["*"]
  }
  rules {
    api_groups = ["metrics.k8s.io"]
    resources  = ["pods"]
    verbs      = ["get", "list", "watch"]
  }
  rules {
    api_groups = ["management.cattle.io"]
    resources  = ["clusterevents"]
    verbs      = ["get", "list", "watch"]
  }
  rules {
    api_groups = ["management.cattle.io"]
    resources  = ["projectloggings"]
    verbs      = ["get", "list", "watch"]
  }
  rules {
    api_groups = ["monitoring.coreos.com"]
    resources  = ["prometheuses", "prometheusrules", "servicemonitors"]
    verbs      = ["*"]
  }
  rules {
    api_groups     = ["management.cattle.io"]
    resource_names = ["local"]
    resources      = ["clusters"]
    verbs          = ["get"]
  }
  rules {
    api_groups = ["apps"]
    resources  = ["deployments", "statefulsets", "daemonsets", "replicasets"]
    verbs      = ["get", "list", "watch", "create", "update", "patch"]
  }
  rules {
    api_groups = [""]
    resources  = ["pods/exec"]
    verbs      = ["get", "create"]
  }
  rules {
    api_groups = [""]
    resources  = ["services"]
    verbs      = ["*"]
  }
  rules {
    api_groups = ["networking.k8s.io"]
    resources  = ["ingresses"]
    verbs      = ["get", "list", "watch", "create", "update", "patch"]
  }
}


### code: nxpe ###
resource "rancher2_role_template" "management_role_nexpe" {
  name              = "NexPE Management"
  context           = "project"
  description       = "Terraform role - Project Member without DELETE Deploy Permission"
  role_template_ids = ["view"]
  rules {
    api_groups = ["management.cattle.io"]
    resources  = ["projectroletemplatebindings"]
    verbs      = ["get", "list", "watch"]
  }
  rules {
    api_groups = [""]
    resources  = ["persistentvolumes"]
    verbs      = ["get", "list", "watch"]
  }
  rules {
    api_groups = ["storage.k8s.io"]
    resources  = ["storageclasses"]
    verbs      = ["get", "list", "watch"]
  }
  rules {
    api_groups = ["apiregistration.k8s.io"]
    resources  = ["apiservices"]
    verbs      = ["get", "list", "watch"]
  }
  rules {
    api_groups = [""]
    resources  = ["persistentvolumeclaims"]
    verbs      = ["*"]
  }
  rules {
    api_groups = ["longhorn.io"]
    resources  = ["*"]
    verbs      = ["get", "list", "watch"]
  }
  rules {
    api_groups = ["metrics.k8s.io"]
    resources  = ["pods"]
    verbs      = ["get", "list", "watch"]
  }
  rules {
    api_groups = ["management.cattle.io"]
    resources  = ["clusterevents"]
    verbs      = ["get", "list", "watch"]
  }
  rules {
    api_groups = ["management.cattle.io"]
    resources  = ["projectloggings"]
    verbs      = ["get", "list", "watch"]
  }
  rules {
    api_groups = ["monitoring.coreos.com"]
    resources  = ["prometheuses", "prometheusrules", "servicemonitors"]
    verbs      = ["*"]
  }
  rules {
    api_groups     = ["management.cattle.io"]
    resource_names = ["local"]
    resources      = ["clusters"]
    verbs          = ["get"]
  }
  rules {
    api_groups = ["apps"]
    resources  = ["deployments", "statefulsets", "daemonsets", "replicasets"]
    verbs      = ["get", "list", "watch"]
  }
  rules {
    api_groups = [""]
    resources  = ["pods/exec"]
    verbs      = ["get", "create"]
  }
  rules {
    api_groups = [""]
    resources  = ["services"]
    verbs      = ["*"]
  }
  rules {
    api_groups = ["networking.k8s.io"]
    resources  = ["ingresses"]
    verbs      = ["get", "list", "watch"]
  }
}
