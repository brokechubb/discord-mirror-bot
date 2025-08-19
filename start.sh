#!/bin/bash

# Discord Mirror PM2 Management Script

case "$1" in
    start)
        echo "Starting Discord Mirror with PM2..."
        pm2 start ecosystem.config.js
        pm2 save
        echo "Discord Mirror started successfully!"
        ;;
    stop)
        echo "Stopping Discord Mirror..."
        pm2 stop discord-mirror
        echo "Discord Mirror stopped!"
        ;;
    restart)
        echo "Restarting Discord Mirror..."
        pm2 restart discord-mirror
        echo "Discord Mirror restarted!"
        ;;
    reload)
        echo "Reloading Discord Mirror..."
        pm2 reload discord-mirror
        echo "Discord Mirror reloaded!"
        ;;
    status)
        echo "Discord Mirror Status:"
        pm2 status
        ;;
    logs)
        echo "Showing Discord Mirror logs..."
        pm2 logs discord-mirror
        ;;
    monit)
        echo "Opening PM2 monitoring..."
        pm2 monit
        ;;
    delete)
        echo "Deleting Discord Mirror from PM2..."
        pm2 delete discord-mirror
        echo "Discord Mirror deleted from PM2!"
        ;;
    setup)
        echo "Setting up PM2 startup script..."
        pm2 startup
        pm2 save
        echo "PM2 startup configured!"
        ;;
    *)
        echo "Usage: $0 {start|stop|restart|reload|status|logs|monit|delete|setup}"
        echo ""
        echo "Commands:"
        echo "  start   - Start the Discord Mirror application"
        echo "  stop    - Stop the Discord Mirror application"
        echo "  restart - Restart the Discord Mirror application"
        echo "  reload  - Reload the Discord Mirror application (zero-downtime)"
        echo "  status  - Show PM2 status"
        echo "  logs    - Show application logs"
        echo "  monit   - Open PM2 monitoring interface"
        echo "  delete  - Remove application from PM2"
        echo "  setup   - Configure PM2 to start on system boot"
        exit 1
        ;;
esac
