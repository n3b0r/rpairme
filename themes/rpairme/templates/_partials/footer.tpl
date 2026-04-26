{**
 * Copyright since 2007 PrestaShop SA and Contributors
 * PrestaShop is an International Registered Trademark & Property of PrestaShop SA
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to https://devdocs.prestashop.com/ for more information.
 *
 * @author    PrestaShop SA and Contributors <contact@prestashop.com>
 * @copyright Since 2007 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 *}
<div class="footer-container">
  <div class="container">
    <div class="row footer-container__row">
      <div class="col-lg-5 col-xl-4 footer-container__brand-col">
        <div class="footer-brand">
          <a href="{$urls.pages.index}" class="footer-brand__logo-link">
            {images_block webpEnabled=$webpEnabled}
              <img
                {if !empty($shop.logo_details)}
                  src="{$shop.logo_details.src}"
                  width="{$shop.logo_details.width}"
                  height="{$shop.logo_details.height}"
                {else}
                  src="{$shop.logo}"
                {/if}
                class="footer-brand__logo img-fluid"
                alt="{$shop.name} {l s='logo' d='Shop.Theme.Global'}">
            {/images_block}
          </a>
          <p class="footer-brand__tagline">{l s='Tu tienda de componentes electrónicos' d='Shop.Theme.Global'}</p>

          {block name='hook_footer_contact'}
            {hook h='displayFooter' mod='ps_contactinfo'}
          {/block}

          {block name='hook_footer_social'}
            {hook h='displayFooterBefore' mod='ps_socialfollow'}
          {/block}
        </div>
      </div>

      <div class="col-lg-7 col-xl-8 footer-container__links-col">
        <div class="row">
          {block name='hook_footer_links'}
            {hook h='displayFooter' mod='ps_linklist'}
          {/block}
        </div>
      </div>
    </div>

    <div class="row footer-container__after">
      {block name='hook_footer_after'}
        {hook h='displayFooterAfter'}
      {/block}
    </div>
  </div>
</div>
