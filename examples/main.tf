module "demo" {
    source = "../"
    name = "this-ns-demo"
    pod_limit = 100
    labels = {
        "env" = "demo"
    }
    annotations = {
        "created-by" = "terraform"
    }
}