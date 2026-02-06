## Allowed roles:
##   "mcd/owner"
##   "mcd/domains-manager"
##   "mcd/responder"
##   "mcd/editor"
##   "mcd/viewer"
##   "mcd/monitor-editor"

resource "montecarlo_iam_group" "example_thin" {
  name        = "name"
  role        = "mcd/viewer"
}

resource "montecarlo_iam_group" "example_thick" {
  name        = "name"
  description = "description"
  role        = "mcd/viewer"
  domains     = ["domainUUID"] # restricting to selecting domains
  sso_group   = "sso_group"    # automatical mapping to SSO group
}
