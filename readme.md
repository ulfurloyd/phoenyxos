# phoenyxos

my NixOS configuration, built with flakes, flake-parts and a modular structure.

it manages my systems and their system/home configurations.

## hosts

- nyx: desktop
- hermes: laptop

## structure

- `modules/features/`: applications, desktop, development, shell config modules
- `modules/hosts/`: host bootstrap and specific configuration
- `modules/profiles/`: shared system and home profiles (think users)
- `modules/system/`: system-level config and integrations

## deployment

systems are build from the flake, `comin` reconciles this repo as the source of truth.

config changes are tested locally with `nh os test`, then pushed upstream.
