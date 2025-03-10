#!/usr/bin/env bash

echo "ACCEPTANCE TESTS"

mysql -h127.0.0.1 -uroot -proot bitpay-wordpress-test <./.github/workflows/acceptance/dump.sql && echo "Restored Database"

sudo cp ./.github/workflows/acceptance/000-default.conf /etc/apache2/sites-available/000-default.conf
sudo echo "127.0.0.1    bitpay-wordpress.test" | sudo tee -a /etc/hosts


