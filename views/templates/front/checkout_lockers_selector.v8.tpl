{**
 * 2007-2024 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Open Software License (OSL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/OSL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2025 PrestaShop SA
 * @license   https://opensource.org/licenses/OSL-3.0 Open Software License (OSL 3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}

{include file='./_partials/checkout_lockers.tpl'}
<div class="col-sm-2">
    {l s='Select location' mod='samedaycourier'}
</div>
<div class="col-sm-8">
    <select id="samedaycourier_locker_id" name="samedaycourier_locker_id" class="form-select">
        <option value="">{l s='Please select location' mod='samedaycourier'}</option>
        {if isset($lockers) && !empty($lockers)}
            {foreach from=$lockers key='city_name' item='city_lockers'}
                <optgroup label="{$city_name}">
                    {foreach from=$city_lockers item='locker'}
                        <option 
                            value="{$locker.id}" 
                            data-locker-name="{$locker.name}" 
                            data-locker-address="{$locker.address}"
                            {if $lockerId == $locker.id}selected="selected"{/if}
                        >
                            {$locker.label}
                        </option>
                    {/foreach}
                </optgroup>
            {/foreach}
        {/if}
    </select>

    <div style="display:inline-block; vertical-align: middle;">
        <input type="hidden" id="locker_name" name="locker_name" value="{$lockerName|escape:'htmlall':'UTF-8'}">
        <input type="hidden" id="locker_address" name="locker_address" value="{$lockerAddress|escape:'htmlall':'UTF-8'}">
        <input type="hidden" id="locker_ooh_type" name="locker_ooh_type" value="{$lockerOohType|escape:'htmlall':'UTF-8'}">
        {if $lockerId}
            <span style="padding-bottom: 10px;font-size: 13px; font-weight: bold; line-height: 22px;width:100%;display:block">
                {l s='Selected: %s - %s' sprintf=[$lockerName|escape:'htmlall':'UTF-8', $lockerAddress|escape:'htmlall':'UTF-8'] mod='samedaycourier'}
            </span>
        {/if}
    </div>
</div>
