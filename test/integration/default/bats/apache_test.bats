
@test "apache binary is found in PATH" {
  run which apache2
  [ "$status" -eq 0 ]
}

@test "apache config is valid" {
  run sudo apache2ctl configtest
  [ "$status" -eq 0 ]
}

@test "apache is running" {
run service apache2 status
[ "$status" -eq 0 ]
[[ ($output == "Apache2 is running"*) ]]
}
