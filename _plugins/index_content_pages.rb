module IndexContentPages
  class Generator < Jekyll::Generator
    def generate(site)
      condition_pages = site.pages
        .select { |page| page.data.fetch('condition', false) }
        .select { |page| page.data.fetch('nav_order', 1) == 1 }
        .sort_by { |page| page.data['condition'] }

      index_page = site.pages.find { |page| page.name == 'index.html' }
      index_page.data['condition_pages'] = condition_pages
    end
  end
end
