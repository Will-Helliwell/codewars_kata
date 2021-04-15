# Spec

[] -> ""
[{ name: "bob" }] -> "bob"
[{ name: "bob" }, { name: "lisa" }] -> "bob & lisa"
[{ name: "ken" }, { name: "roger" }, { name: "jill" }] -> "ken, roger & jill"
[{ name: "ken" }, { name: "roger" }, { name: "jill" }, { name: "marvin" }] -> "ken, roger, jill & marvin"


non-array
array containing at least one non-hash
array containing at least one hash without the name key
