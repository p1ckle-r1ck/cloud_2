resource "yandex_storage_bucket" "image_backet" {
  bucket = "imag-netology116132"
  folder_id = var.cloud.folder_id
  acl = "public-read"
  website {
    index_document = "test_image"
  }
}

resource "yandex_storage_object" "image" {
    bucket = yandex_storage_bucket.image_backet.bucket
    key = "test_image"
    source = "./image.jpg"
}