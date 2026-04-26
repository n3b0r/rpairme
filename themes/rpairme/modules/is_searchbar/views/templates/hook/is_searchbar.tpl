<div class="header-top__block header-top__block--search col">

  <div id="_desktop_search_from" class="d-none d-md-block">
    <form class="search-form js-search-form" data-search-controller-url="{$ajax_search_url}" method="get" action="{$search_controller_url}">
      <div class="search-form__form-group">
        <input type="hidden" name="controller" value="search">
        <button type="submit" class="search-form__btn btn" aria-label="{l s='Search' d='Shop.Theme.Catalog'}">
          <svg class="search-form__icon-svg" viewBox="0 0 24 24" aria-hidden="true">
            <path stroke-linecap="round" stroke-linejoin="round" d="m21 21-5.197-5.197m0 0A7.5 7.5 0 1 0 5.196 5.196a7.5 7.5 0 0 0 10.607 10.607Z"></path>
          </svg>
        </button>
        <input class="js-search-input search-form__input form-control"
               placeholder="{l s='Buscar productos, referencias, componentes...' d='Modules.Issearchbar.Form'}"
               type="text"
               name="s"
               value="{$search_string}"
               aria-label="{l s='Search' d='Shop.Theme.Catalog'}">
      </div>
    </form>
  </div>

  <a role="button" class="search-toggler header-top__link d-block d-md-none" data-toggle="modal" data-target="#saerchModal">
    <div class="header-top__icon-container">
      <svg class="header-top__icon-svg" viewBox="0 0 24 24" aria-hidden="true">
        <path stroke-linecap="round" stroke-linejoin="round" d="m21 21-5.197-5.197m0 0A7.5 7.5 0 1 0 5.196 5.196a7.5 7.5 0 0 0 10.607 10.607Z"></path>
      </svg>
    </div>
  </a>

</div>
