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

# Runs 'Molecule' test scenario for service templating
test-template:
  @molecule  test --scenario-name create-template-service -- --extra-vars "@input-data.yml"

# Runs 'Molecule' test scenario for service copying
test-copy:
  @molecule  test --scenario-name create-copy-service -- --extra-vars "@input-data.yml"

# Runs 'Molecule' test scenario for service state configuration
test-state:
  @molecule  test --scenario-name enable-service -- --extra-vars "@input-data.yml"

# Runs 'Molecule' test scenario for service default state values
test-defaults:
  @molecule  test --scenario-name service-defaults -- --extra-vars "@input-data.yml"
