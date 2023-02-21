public_cidr = {
    "public1" = {
    cidr  = "10.0.1.0/24"
    tags  = {
      Name  = "public1"
    }
    }
    
    "public2" = {
    cidr  = "10.0.2.0/24"
    tags  = {
      Name  = "public2"
    }
    }
   
}

private_cidr = {
    "private1" = {
    cidr  = "10.0.3.0/24"
    tags  = {
      Name  = "private1"
    }
    }

    "private2" = {
    cidr  = "10.0.4.0/24"
    tags  = {
      Name  = "private2"
    }
    }

  }