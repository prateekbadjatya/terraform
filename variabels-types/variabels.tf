variable filename1 {
  type        = string
  default     = "sample.txt"
  description = "file name"
}
variable filename2 {
  type        = string
  default     = "sample2.txt"
  description = "file name"
}
variable content1 {
  type        = number
  default     = 123456
  description = "file content type number"
}


variable content2 {
  type        = bool
  default     = true
  description = "file content boolean"
}


variable content3 {
  type        =  list(string)
  default     = ["red", "green", "blue"]
  description = "file content array"
}

variable content4 {
  type        =  tuple([string, number, bool])
  default     = ["red",1,true]
  description = "file content tuple"
}

variable content5 {
  type        =  map
  default     = {name: "Prateek", "age": 26}
  description = "file content tuple"
}