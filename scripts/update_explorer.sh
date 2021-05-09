#!/bin/bash

sudo docker-compose -f /vagrant/docker-compose.yml exec explorer cubedash-gen --force-refresh s2_sen2cor_ard_granule_EO3
