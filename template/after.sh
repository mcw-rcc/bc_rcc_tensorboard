# Wait for TensorBoard to start
echo "$(date): Waiting for TensorBoard to open port ${port}..."

if wait_until_port_used "${host}:${port}" 600; then
  echo "$(date): Discovered TensorBoard listening on port ${port}!"
else
  echo "$(date): Timed out waiting for TensorBoard to open port ${port}!"
  clean_up 1
fi

sleep 2
