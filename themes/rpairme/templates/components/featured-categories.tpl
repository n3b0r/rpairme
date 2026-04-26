{assign var=featuredCategoriesTree value=Category::getNestedCategories(3, $language.id, true)}
{assign var=featuredCategories value=[]}

{if isset($featuredCategoriesTree[3]['children'])}
  {assign var=featuredCategories value=$featuredCategoriesTree[3]['children']}
{/if}

{if $featuredCategories|@count > 0}
  {assign var=categoryImageBaseUrl value=$urls.img_ps_url|default:'/img/'}
  <section class="featured-categories container">
    <div class="featured-categories__header">
      <h2 class="featured-categories__title">
        <span>{l s='Componentes por' d='Shop.Theme.Catalog'}</span>
        <span class="featured-categories__title-accent">{l s='categorías' d='Shop.Theme.Catalog'}</span>
      </h2>
    </div>

    <div class="featured-categories__list" role="list">
      {foreach from=$featuredCategories item=category}
        {assign var=categoryImageUrl value="`$categoryImageBaseUrl`c/`$category.id_category`_thumb.jpg"}
        <div class="featured-categories__item" role="listitem">
          <a
            class="featured-categories__link"
            href="{$link->getCategoryLink($category.id_category, $category.link_rewrite)|escape:'html':'UTF-8'}"
          >
            <span class="featured-categories__icon">
              <img
                class="featured-categories__image"
                src="{$categoryImageUrl|escape:'html':'UTF-8'}"
                alt="{$category.name|escape:'html':'UTF-8'}"
                loading="lazy"
              >
            </span>
            <span class="featured-categories__name">{$category.name|escape:'html':'UTF-8'}</span>
          </a>
        </div>
      {/foreach}
    </div>
  </section>
{/if}
