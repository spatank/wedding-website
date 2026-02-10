#!/bin/bash

echo "Starting wedding website local server..."
echo "Serving from: $(pwd)"
echo ""
echo "Server will be available at: http://localhost:8000"
echo "Open your browser to: http://localhost:8000"
echo ""
echo "Press Ctrl+C to stop the server"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# Start Python HTTP server
python3 -m http.server 8000
