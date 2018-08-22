resource "aws_ebs_volume" "ebs" {
    count = "${var.create} ? 1 : 0}"
    availability_zone = "${var.availability_zone}"
    encrypted = "${var.encrypted}"
    kms_key_id = "${var.kms_key_id}"
    size = "${var.size}"
    type = "${var.type}"

    tags {
        Name = "${var.name}-0${count.index + 1}"
        env = "${var.env}"
    }
}