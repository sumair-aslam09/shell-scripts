#!/bin/bash
domain="amazon.com"
ip=$(dig "$domain" +short)
echo "IP Address of $domain:$ip"
