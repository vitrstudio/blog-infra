resource "aws_route53_record" "root" {
  zone_id = var.zone_id
  name    = "blog.${var.domain_name}"
  type    = "A"

  alias {
    name                   = var.static_website_cloudfront_domain
    zone_id                = "Z2FDTNDATAQYW2"
    evaluate_target_health = false
  }
}

resource "aws_route53_record" "www" {
  zone_id = var.zone_id
  name    = "www.blog.${var.domain_name}"
  type    = "A"

  alias {
    name                   = var.static_website_cloudfront_domain
    zone_id                = "Z2FDTNDATAQYW2"
    evaluate_target_health = false
  }
}

resource "aws_route53_record" "api" {
  zone_id = var.zone_id
  name    = "api.blog.${var.domain_name}"
  type    = "A"

  alias {
    name                   = var.api_cloudfront_domain
    zone_id                = "Z2FDTNDATAQYW2"
    evaluate_target_health = false
  }
}