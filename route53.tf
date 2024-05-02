resource "aws_route53_record" "mongodb" {
  zone_id = "Z0547409165EGAKUG3EH3"
  name    = "mongodb-${var.ENV}.roboshopshopping"
  type    = "CNAME"
  ttl     = 10
  records = [aws_docdb_cluster.docdb.endpoint]
}