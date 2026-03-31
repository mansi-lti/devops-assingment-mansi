resource "aws_lunch_template" "lt" {
image_id = var.ami_id
instance_type = var.instance_type

user_data = base64encode (<<EOF
#!/bin/bash
yum install -y nginx
systemctl start nginx
EOF
)
}

