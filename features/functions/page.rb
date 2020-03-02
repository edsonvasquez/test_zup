class MainPage < SitePrism::Page

    set_url 'https://www.americanas.com.br/'

    #home_search_products
    element :search_bar, '#h_search-input', match: :first
    element :buttoun_buy, '#btn-buy > div'
    element :button_continue, '#btn-continue > div'

    def search_product(product)
        search_bar.click
        search_bar.set product
        search_bar.send_keys(:return)
        sleep 5
    end

    def click_buy
        sleep 5
        buttoun_buy.click
        sleep 10
        button_continue.click
        sleep 5
    end
end
