module "demo" {
    source = "../"
    name = "this-ns-demo"
    labels = {
        "env" = "demo"
    }
    annotations = {
        "created-by" = "terraform"
    }
}