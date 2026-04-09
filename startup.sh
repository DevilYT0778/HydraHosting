#!/bin/bash
echo "=== Starting HydraHosting ==="

cd /workspaces/HydraHosting/HydraDAEMON
nohup node . > /tmp/daemon.log 2>&1 &
echo "HydraDAEMON started!"

sleep 3

cd /workspaces/HydraHosting/hydra
nohup node . > /tmp/hydra.log 2>&1 &
echo "Hydra started!"

sleep 3

cd /workspaces/HydraHosting/HydraPanel
nohup node . > /tmp/hydrapanel.log 2>&1 &
echo "HydraPanel started!"

echo "=== All services running ==="
