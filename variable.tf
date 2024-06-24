variable name {
    type = string 
    description = "the name of NS"
    default = "this"
}

variable labels {
    description = " a map of labels to add to the namespace"
    type = map(string)
    default = {}
}

variable annotations {
    description = " a map of annotations to add to the namespace"
    type = map(string)
    default = {}
}