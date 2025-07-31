resource "aws_lambda_function" "my_lambda" {
  function_name = "my-lambda"
  filename      = "function.zip"
  role          = aws_iam_role.lambda_exec.arn
  handler       = "index.handler"
  runtime       = "nodejs18.x"
}
