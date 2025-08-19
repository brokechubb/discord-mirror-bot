# PM2 Quick Reference for Discord Mirror

## Essential Commands

### Start/Stop

```bash
# Start the application
npm run pm2:start
./start.sh start

# Stop the application
npm run pm2:stop
./start.sh stop

# Restart the application
npm run pm2:restart
./start.sh restart
```

### Monitoring

```bash
# Check status
npm run pm2:status
./start.sh status

# View logs
npm run pm2:logs
./start.sh logs

# Open monitoring dashboard
npm run pm2:monit
./start.sh monit
```

### Management

```bash
# Reload (zero-downtime)
npm run pm2:reload
./start.sh reload

# Remove from PM2
npm run pm2:delete
./start.sh delete

# Save configuration
npm run pm2:save

# Setup auto-start on boot
npm run pm2:startup
./start.sh setup
```

## Direct PM2 Commands

```bash
# Start with ecosystem file
pm2 start ecosystem.config.js

# Start in production mode
pm2 start ecosystem.config.js --env production

# List all processes
pm2 list

# Show detailed info
pm2 show discord-mirror

# Kill all processes
pm2 kill

# Reset PM2
pm2 resurrect
```

## Log Locations

- **Error logs**: `./logs/err.log`
- **Output logs**: `./logs/out.log`
- **Combined logs**: `./logs/combined.log`

## Configuration

The `ecosystem.config.js` file includes:

- Auto-restart on crash
- Memory limit (1GB)
- Comprehensive logging
- Environment-specific settings
- Process management policies

## Troubleshooting

### If the app won't start

1. Check logs: `npm run pm2:logs`
2. Verify config: `pm2 show discord-mirror`
3. Restart PM2: `pm2 kill && pm2 resurrect`

### If you need to reset

1. Stop: `npm run pm2:stop`
2. Delete: `npm run pm2:delete`
3. Start fresh: `npm run pm2:start`
