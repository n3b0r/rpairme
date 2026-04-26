{$themeDir = _PS_THEME_DIR_}
{$preloadFilePath = "`$themeDir`assets/preload.html"}
{$urlsWithCdn = $urls.img_ps_url|replace:'/img/':'/'}

{if file_exists($preloadFilePath)}
  {capture name="preloadBlock"}{include file=$preloadFilePath}{/capture}
  {assign var="normalizedPreloadBlock" value=$smarty.capture.preloadBlock|regex_replace:'@https?://[^/]+/themes/@':"`$urlsWithCdn`themes/"|replace:'/themes/':"`$urlsWithCdn`themes/"}
  {$normalizedPreloadBlock nofilter}
{/if}
