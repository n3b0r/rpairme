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
{block name='product_miniature_item'}
  {$listingType = $type|default:'listing'}
  <div
    {if $listingType === 'listing'}
      class="products-list__block products-list__block--grid"
    {elseif $listingType === 'slider'}
      class="swiper-slide product-slider__item col-6 col-md-4 col-lg-3"
    {/if}
    >
    <article
      class="product-miniature product-miniature--card card js-product-miniature h-100 {block name='product_miniature_item_class'}{/block}"
      data-id-product="{$product.id_product}" data-id-product-attribute="{$product.id_product_attribute}"
      >
      <div class="product-miniature__media">
        {include
          file='catalog/_partials/miniatures/_partials/product-thumb.tpl'
          thumbExtraClass='product-miniature__thumb--card'
          showFlags=false
          showQuickView=false
          showReviews=false
        }

        {if $product.has_discount}
          <span class="product-miniature__discount-badge">
            {l s='Dto' d='Shop.Theme.Catalog'} {$product.discount_to_display}
          </span>
        {/if}
      </div>

      <div class="product-miniature__content">
        {include file='catalog/_partials/miniatures/_partials/product-title.tpl'}

        <div class="product-miniature__price-line">
          <span class="price product-miniature__price" aria-label="{l s='Price' d='Shop.Theme.Catalog'}">{$product.price}</span>
          {if $configuration.taxes_enabled && $configuration.display_taxes_label}
            <span class="product-miniature__tax">{$product.labels.tax_long}</span>
          {/if}
        </div>

        {if $product.has_discount}
          <div class="product-miniature__divider"></div>

          <div class="product-miniature__saving{if !$product.has_discount} product-miniature__saving--empty{/if}">
              {l s='En rebajas - Ahorra %amount%' d='Shop.Theme.Catalog' sprintf=['%amount%' => $product.discount_to_display]}
          </div>
        {/if}
      </div>

    </article>
  </div>
{/block}
