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

<div class="footer-contact">
  <ul class="footer-contact__list list-unstyled mb-0">
    {if $contact_infos.email && $display_email}
      <li class="footer-contact__item">
        <span class="footer-contact__icon" aria-hidden="true">
          <svg viewBox="0 0 24 24"><path d="M3.75 7.5h16.5a.75.75 0 0 1 .75.75v7.5a.75.75 0 0 1-.75.75H3.75a.75.75 0 0 1-.75-.75v-7.5a.75.75 0 0 1 .75-.75Z"></path><path d="m3.75 8.25 8.25 6 8.25-6"></path></svg>
        </span>
        <a class="footer-contact__link" href="mailto:{$contact_infos.email}">{$contact_infos.email}</a>
      </li>
    {/if}

    {if $contact_infos.phone}
      <li class="footer-contact__item">
        <span class="footer-contact__icon" aria-hidden="true">
          <svg viewBox="0 0 24 24"><path d="M2.25 4.5c0-1.243 1.007-2.25 2.25-2.25h2.098c.521 0 .99.318 1.182.803l1.43 3.576a1.125 1.125 0 0 1-.258 1.223l-1.287 1.288a13.5 13.5 0 0 0 6.196 6.196l1.288-1.287a1.125 1.125 0 0 1 1.223-.258l3.576 1.43c.485.192.803.66.803 1.182V19.5a2.25 2.25 0 0 1-2.25 2.25h-.75C9.29 21.75 2.25 14.71 2.25 6V4.5Z"></path></svg>
        </span>
        <a class="footer-contact__link" href="tel:{$contact_infos.phone|replace:' ':''}">{$contact_infos.phone}</a>
      </li>
    {/if}

    {if $contact_infos.address.formatted}
      <li class="footer-contact__item footer-contact__item--address">
        <span class="footer-contact__icon" aria-hidden="true">
          <svg viewBox="0 0 24 24"><path d="M12 21s6-5.686 6-11.25a6 6 0 1 0-12 0C6 15.314 12 21 12 21Z"></path><path d="M12 12.75a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z"></path></svg>
        </span>
        <div class="footer-contact__text">{$contact_infos.address.formatted nofilter}</div>
      </li>
    {/if}
  </ul>
</div>
