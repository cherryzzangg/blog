{% if theme.busuanzi_count.enable %}
<div class="busuanzi-count">
  <script async src="https://busuanzi.ibruce.info/busuanzi/2.3/busuanzi.pure.mini.js"></script>

  {% if theme.busuanzi_count.site_uv %}
  <span id="busuanzi_container_site_uv" style='display:none'>
    <span class="site-uv" title="{{ __('footer.site_uv') }}">
      <i class="fa fa-{{ theme.busuanzi_count.site_uv_icon }}"></i>&nbsp
      {{ theme.busuanzi_count.site_uv_header }}
      <span class="busuanzi-value" id="busuanzi_value_site_uv"></span>
      {{ theme.busuanzi_count.site_uv_footer }}
    </span>
  </span>
  {% endif %}

  {% if theme.busuanzi_count.site_pv %}
  <span id="busuanzi_container_site_uv" style='display:none'>
    <span class="site-pv" title="{{ __('footer.site_pv') }}">
      <i class="fa fa-{{ theme.busuanzi_count.site_pv_icon }}"></i>&nbsp
      {{ theme.busuanzi_count.site_pv_header }}
      <span class="busuanzi-value" id="busuanzi_value_site_pv"></span>
      {{ theme.busuanzi_count.site_pv_footer }}
    </span>
  </span>
  {% endif %}
</div>
{% endif %}

