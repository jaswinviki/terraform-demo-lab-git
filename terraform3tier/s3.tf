resource "aws_s3_bucket" "task1_s3bucket" {
  bucket = "jas-website-images-res"
  acl    = "public-read"
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "null_resource" "images_repo" {
  provisioner "local-exec" {
    command = "mkdir my_images && cp sun1.png my_images/sun.png"
  }
  provisioner "local-exec" {
    when    = destroy
    command = "rm -rf my_images"
  }
}
resource "aws_s3_bucket_object" "sun_image" {
  bucket     = aws_s3_bucket.task1_s3bucket.bucket
  key        = "sun.png"
  source     = "my_images/sun.png"
  acl        = "public-read"
  depends_on = [aws_s3_bucket.task1_s3bucket, null_resource.images_repo]
}