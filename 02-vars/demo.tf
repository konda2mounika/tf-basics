output "sample" {
  value = "Hello world"
}
output "sample-op"{
    value =var.sample
}
output "sample-op1"{
    value =${var.sample}
}

