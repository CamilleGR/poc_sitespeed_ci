#!/bin/bash

while :
do

sitespeed.io -n 1 --headless --browsertime.chrome.collectTracingEvents --chrome.collectNetLog --chrome.chromedriverPath ./chromedriver  --graphite.httpPort $(minikube service graphite-http --url | grep -Eo  '([0-9]+)$') --graphite.port $(minikube service graphite-api --url | grep -Eo  '([0-9]+)$') --graphite.host $(minikube ip)   https://www.leanovia.com/fr/

done
