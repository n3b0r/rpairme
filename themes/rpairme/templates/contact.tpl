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
{extends file='page.tpl'}

{block name='page_header_container'}{/block}

{if $layout === 'layouts/layout-left-column.tpl'}
  {block name="left_column"}
    <div id="left-column" class="col-12 col-sm-4 col-md-3">
      {widget name="ps_contactinfo" hook='displayLeftColumn'}
    </div>
  {/block}
{else if $layout === 'layouts/layout-right-column.tpl'}
  {block name="right_column"}
    <div id="right-column" class="col-12 col-sm-4 col-md-3">
      {widget name="ps_contactinfo" hook='displayRightColumn'}
    </div>
  {/block}
{/if}

{block name='page_content'}
  <div class="contact-map mb-4">
    <iframe
      src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2980.7963272904108!2d-0.9374874224951333!3d41.66014237126648!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd596ad48597adc9%3A0x54a5d7d8d6dbf0e1!2sVGS%3A%20Especialistas%20en%20desarrollo%20de%20proyectos%20digitales!5e0!3m2!1ses!2ses!4v1777225090926!5m2!1ses!2ses"
      width="100%"
      height="380"
      style="border:0;"
      allowfullscreen=""
      loading="lazy"
      referrerpolicy="no-referrer-when-downgrade">
    </iframe>
  </div>
  {widget name="contactform"}
{/block}
