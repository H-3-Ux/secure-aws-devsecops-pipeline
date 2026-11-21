resource "aws_ecs_cluster" "app" {
  name = "secure-devsecops-cluster"

  setting {
    name  = "containerInsights"
    value = "enabled"
  }
}

resource "aws_cloudwatch_log_group" "app" {
  name              = "/ecs/secure-devsecops-app"
  retention_in_days = 7
}
