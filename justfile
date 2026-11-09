# -----------------------------------------------------------------------------
# Variable section
# -----------------------------------------------------------------------------

# -----------------------------------------------------------------------------
# Command section
# -----------------------------------------------------------------------------

# Default behavior when running 'just' without input.
default:
    @just --choose

# Lists the commands without prompting for selection.
list:
    @just -l

# Runs 'Molecule' test scenario for credential encryption
test-credentials:
  @molecule test --scenario-name credentials -- -vv

# Runs 'Molecule' test scenario for service templating
test-service-template:
  @molecule  test --scenario-name service-create-template -- -vv

# Runs 'Molecule' test scenario for service copying
test-service-copy:
  @molecule  test --scenario-name service-create-copy -- -vv

# Runs 'Molecule' test scenario for service default state values
test-service-defaults:
  @molecule  test --scenario-name service-defaults -- -vv

# Runs 'Molecule' test scenario for service enabling
test-service-enable:
  @molecule test --scenario-name service-enable -- -vv
