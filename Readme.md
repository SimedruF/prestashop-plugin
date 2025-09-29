# Sameday Courier - PrestaShop Module

[![Version](https://img.shields.io/badge/version-2.0.0-blue.svg)](https://github.com/SimedruF/prestashop-plugin)
[![PrestaShop](https://img.shields.io/badge/PrestaShop-8.2.1-orange.svg)](https://www.prestashop.com/)
[![PHP](https://img.shields.io/badge/PHP-7.4%2B-purple.svg)](https://php.net/)

The official Sameday Courier shipping module for PrestaShop, providing seamless integration with Sameday Courier's delivery services for Romanian e-commerce stores.

## Description

This module integrates Sameday Courier's shipping services directly into your PrestaShop store, allowing customers to select from various delivery options including standard delivery, lockers, and open package services. The module provides comprehensive AWB (Air Waybill) management, real-time tracking, and automated synchronization with Sameday's API.

## Features

### Core Functionality
- **Multiple Delivery Options**: Standard delivery, locker delivery, and open package services
- **AWB Management**: Automatic generation and management of Air Waybills
- **Real-time Tracking**: Order tracking integration with Sameday's tracking system
- **Service Synchronization**: Automatic sync of available services, cities, and pickup points
- **Multi-parcel Support**: Handle orders with multiple packages

### Advanced Features
- **Locker Integration**: Full support for Sameday's locker network
- **Pickup Points**: Manage and sync pickup point locations
- **Price Calculation**: Dynamic shipping cost calculation based on weight, dimensions, and destination
- **Order History**: Complete tracking history for all shipments
- **Admin Interface**: Comprehensive backend management tools

### PrestaShop Compatibility
- **Version Support**: Compatible with PrestaShop 8.2.1
- **Multi-store Ready**: Works with PrestaShop's multi-store functionality
- **Responsive Design**: Mobile-friendly checkout integration
- **Hook Integration**: Seamless integration with PrestaShop hooks

## Installation

### Manual Installation
1. Download the module files
2. Upload the `samedaycourier` folder to your PrestaShop `/modules/` directory
3. Go to your PrestaShop admin panel
4. Navigate to **Modules and Services** > **Modules and Services**
5. Search for "Sameday Courier" and click **Install**

### Configuration
1. After installation, click **Configure** on the module
2. Enter your Sameday API credentials:
   - Username
   - Password 
   - Environment (Testing/Production)
3. Configure your pickup points and services
4. Set up shipping zones and rates
5. Test the integration in sandbox mode

## Requirements

- **PrestaShop**: 8.2.1 or higher
- **PHP**: 7.4 or higher
- **cURL**: PHP cURL extension enabled
- **OpenSSL**: For secure API communication
- **Sameday Account**: Active Sameday Courier account with API access

## File Structure

```
samedaycourier/
├── classes/                 # Core module classes
│   ├── SamedayApiHelper.php    # API communication handler
│   ├── SamedayAwb.php          # AWB management
│   ├── SamedayCarrierCore.php  # Carrier integration
│   ├── SamedayService.php      # Service management
│   └── ...
├── libs/                    # External libraries
│   └── sameday-php-sdk/        # Official Sameday PHP SDK
├── views/                   # Templates and assets
│   ├── templates/              # Smarty templates
│   ├── js/                     # JavaScript files
│   └── img/                    # Images and icons
├── sql/                     # Database schemas
├── translations/            # Language files
├── upgrade/                 # Module upgrade scripts
└── config.xml              # Module configuration
```

## Usage

### For Store Administrators
1. **Service Management**: Configure available Sameday services
2. **Pickup Points**: Set up and manage pickup locations
3. **AWB Generation**: Generate shipping labels for orders
4. **Order Tracking**: Monitor shipment status and history
5. **City Synchronization**: Keep delivery locations up to date

### For Customers
1. **Checkout Options**: Select from available Sameday delivery services
2. **Locker Selection**: Choose preferred locker locations
3. **Tracking**: Track orders using provided tracking numbers
4. **Flexible Delivery**: Multiple delivery options including open package

## API Integration

The module uses the official Sameday PHP SDK to communicate with Sameday's RESTful API:

- **Authentication**: Secure token-based authentication
- **Service Discovery**: Automatic retrieval of available services
- **AWB Operations**: Create, update, and track shipments
- **Location Services**: Sync cities, counties, and locker locations
- **Real-time Updates**: Live status updates for shipments

## Development

### Local Development Setup
1. Clone the repository
2. Set up a local PrestaShop installation
3. Configure the module with sandbox credentials
4. Use the included build script for deployment

### Build Script
```bash
./build.sh
```

## Support

- **Documentation**: [Sameday Developer Portal](https://developers.sameday.ro)
- **API Reference**: [Sameday API Documentation](https://api.sameday.ro/docs)
- **Issues**: Report issues via GitHub Issues
- **Contact**: support@sameday.ro

## Changelog

### Version 2.0.0
- PrestaShop 8.2.1 compatibility
- Enhanced locker integration
- Improved AWB management
- Updated PHP SDK integration
- Performance optimizations

## License

This module is licensed under the PrestaShop License. See [LICENSE](LICENSE) file for details.

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Submit a pull request

## About Sameday Courier

Sameday Courier is Romania's leading courier and logistics company, providing fast and reliable delivery services across Romania and Europe. With an extensive network of pickup points, lockers, and delivery options, Sameday offers flexible solutions for e-commerce businesses of all sizes.