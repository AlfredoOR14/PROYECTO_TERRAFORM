provider "aws" {
  region = "us-east-1"  # Cambia la región según tus necesidades
}

resource "aws_ecr_repository" "example" {
  name                 = "example-repo"  # Nombre del repositorio
  image_tag_mutability = "MUTABLE"       # Etiquetas de imágenes mutables
  image_scanning_configuration {
    scan_on_push = true                   # Escaneo de imágenes al subirlas al repositorio
  }
}
