<?php
/**
 * 2007-2025 PrestaShop
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2025 PrestaShop SA
 * @license   http://addons.prestashop.com/en/content/12-terms-and-conditions-of-use
 * International Registered Trademark & Property of PrestaShop SA
 */

if (!defined('_PS_VERSION_')) {
    exit;
}

/**
 * This function updates your module from previous versions to the version 2.0.0,
 * usefull when you modify your database, or register new hooks ...
 * Don't forget to create one file per version.
 */
function upgrade_module_2_0_0($module)
{
    /*
     * Do everything you want when upgrading your module to version 2.0.0
     * This upgrade adds PrestaShop 8.x compatibility
     */

    // Clear cache to ensure new templates are loaded
    if (method_exists('Cache', 'clear')) {
        Cache::clear();
    }

    // Clear smarty cache
    if (is_dir(_PS_CACHE_DIR_ . 'smarty/compile')) {
        Tools::deleteDirectory(_PS_CACHE_DIR_ . 'smarty/compile', false);
    }

    return true;
}
