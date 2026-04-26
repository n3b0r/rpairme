{**
 * 2007-2020 PrestaShop and Contributors
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2020 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
<div class="header-top__block header-top__block--cart col flex-grow-0">
  <div class="js-blockcart blockcart cart-preview dropdown" data-refresh-url="{$refresh_url}">
    <a href="#" role="button" id="cartDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
      class="header-top__link d-none d-md-block">
      <div class="header-top__icon-container">
        <svg class="header-top__icon-svg" viewBox="0 0 24 24" aria-hidden="true">
          <path stroke-linecap="round" stroke-linejoin="round" d="M15.75 10.5V6a3.75 3.75 0 1 0-7.5 0v4.5m11.356-1.993 1.263 12c.07.665-.45 1.243-1.119 1.243H4.25a1.125 1.125 0 0 1-1.12-1.243l1.264-12A1.125 1.125 0 0 1 5.513 7.5h12.974c.576 0 1.059.435 1.119 1.007ZM8.625 10.5a.375.375 0 1 1-.75 0 .375.375 0 0 1 .75 0Zm7.5 0a.375.375 0 1 1-.75 0 .375.375 0 0 1 .75 0Z"></path>
        </svg>
        {if $cart.products_count > 0}
          <span class="header-top__badge {if $cart.products_count > 9}header-top__badge--smaller{/if}">
            {$cart.products_count}
          </span>
        {/if}
      </div>
    </a>
    <a href="{$cart_url}" class="d-flex d-md-none header-top__link">
      <div class="header-top__icon-container">
        <svg class="header-top__icon-svg" viewBox="0 0 24 24" aria-hidden="true">
          <path stroke-linecap="round" stroke-linejoin="round" d="M15.75 10.5V6a3.75 3.75 0 1 0-7.5 0v4.5m11.356-1.993 1.263 12c.07.665-.45 1.243-1.119 1.243H4.25a1.125 1.125 0 0 1-1.12-1.243l1.264-12A1.125 1.125 0 0 1 5.513 7.5h12.974c.576 0 1.059.435 1.119 1.007ZM8.625 10.5a.375.375 0 1 1-.75 0 .375.375 0 0 1 .75 0Zm7.5 0a.375.375 0 1 1-.75 0 .375.375 0 0 1 .75 0Z"></path>
        </svg>
        {if $cart.products_count > 0}
          <span class="header-top__badge {if $cart.products_count > 9}header-top__badge--smaller{/if}">
            {$cart.products_count}
          </span>
        {/if}
      </div>
    </a>
    <div class="dropdown-menu blockcart__dropdown cart-dropdown dropdown-menu-right" aria-labelledby="cartDropdown">
      <div class="cart-dropdown__content keep-open js-cart__card-body cart__card-body">
        <div class="cart-loader">
          <div class="spinner-border text-primary" role="status"><span
              class="sr-only">{l s='Loading...' d='Shop.Theme.Global'}</span></div>
        </div>
        <div class="cart-dropdown__title d-flex align-items-center mb-3">
          <p class="h5 mb-0 mr-2">
            {l s='Your cart' d='Modules.Isshoppingcart.Isshoppingcart'}
          </p>
          <a data-toggle="dropdown" href="#" class="cart-dropdown__close dropdown-close ml-auto cursor-pointer text-decoration-none">
            <i class="material-icons d-block">close</i>
          </a>
        </div>
        {if $cart.products_count > 0}
          <div class="cart-dropdown__products pt-3 mb-3">
            {foreach from=$cart.products item=product}
              {include 'module:is_shoppingcart/views/templates/front/is_shoppingcart-product-line.tpl' product=$product}
            {/foreach}
          </div>

          <div class="cart-summary-line cart-total">
            <span class="label">{$cart.totals.total.label}</span>
            <span class="value">{$cart.totals.total.value}</span>
          </div>

          <div class="mt-3">
            <a href="{$cart_url}" class="btn btn-sm btn-primary btn-block dropdown-close">
              {l s='Proceed to checkout' d='Shop.Theme.Actions'}
            </a>
          </div>

        {else}
          <div class="alert alert-warning">
            {l s='Unfortunately your basket is empty' d='Modules.Isshoppingcart.Isshoppingcart'}
          </div>
        {/if}
      </div>
    </div>
  </div>
</div>
