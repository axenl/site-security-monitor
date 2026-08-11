# Site Security Monitor

A lightweight open-source security monitoring toolkit for Linux web servers.

Site Security Monitor helps administrators monitor server health, detect suspicious
website file changes, and improve the security of Joomla and PHP-based websites.

## Features

- PHP-FPM service status monitoring
- Website file integrity monitoring
- Suspicious PHP file detection
- Joomla CMS security checks
- Enterprise WeChat notification support
- Duplicate alert prevention
- Recovery notifications

## Supported Environment

- Linux server
- Nginx
- PHP 8.x
- Joomla CMS
- BT Panel / aaPanel compatible

## Installation

Clone the repository:

```bash
git clone https://github.com/axenl/site-security-monitor.git
cd site_security_monitor
```

Create configuration file:

```bash
cp config.example.sh config.sh
```

Run monitor:

```bash
bash monitor.sh
```

## Configuration

Edit `config.sh` to configure:

- Website paths
- Notification settings
- Monitoring options

Example:

```bash
WEBSITES=(
"/www/wwwroot/example.com"
)
```

## Project Structure

```text
site_security_monitor/
├── monitor.sh
├── config.example.sh
├── modules/
├── README.md
└── LICENSE
```

## Roadmap

- Advanced malware detection
- WebShell scanning
- More CMS security checks
- Additional notification channels
- Automated security reports

## Security Notice

Never upload sensitive information:

- Server IP addresses
- Passwords
- API tokens
- Private configuration files

## License

MIT License
