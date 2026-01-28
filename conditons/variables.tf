variable "zone_id" {
    default = "Z2726763474"
}

variable "instance_name" {
    default = ["db", "frontend", "backend"]
}

variable "tags" {
    default = {
        Project = "expense"
        Environment = "Dev"
        Module = "db"
        Name = "db"
    }
}