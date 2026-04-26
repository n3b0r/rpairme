{assign var=featuredCategoriesTree value=Category::getNestedCategories(3, $language.id, true)}
{assign var=featuredCategories value=[]}

{if isset($featuredCategoriesTree[3]['children'])}
  {assign var=featuredCategories value=$featuredCategoriesTree[3]['children']}
{/if}

{if $featuredCategories|@count > 0}
  <section class="featured-categories container my-5">
    <div class="featured-categories__header mb-4">
      <p class="h1 featured-categories__title m-0">
        {l s='Categorías destacadas' d='Shop.Theme.Catalog'}
      </p>
    </div>

    <div class="featured-categories__list row">
      {foreach from=$featuredCategories item=category}
        <div class="featured-categories__item col-12 col-sm-6 col-lg-4 col-xl-3 mb-3">
          <a
            class="featured-categories__link card h-100 p-3 text-decoration-none text-reset"
            href="{$link->getCategoryLink($category.id_category, $category.link_rewrite)|escape:'html':'UTF-8'}"
          >
            <span class="h5 mb-2">{$category.name|escape:'html':'UTF-8'}</span>

            {if !empty($category.description)}
              <div class="featured-categories__description small text-muted">
                {$category.description nofilter}
              </div>
            {/if}
          </a>
        </div>
      {/foreach}
    </div>
  </section>
{/if}
