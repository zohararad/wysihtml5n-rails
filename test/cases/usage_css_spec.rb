require 'spec_helper'

class UsageCssSpec < Wysihtml5n::Rails::Spec

  describe 'application.css' do

    let(:app_css) { dummy_asset('application.css') }

    it 'will render wysihtml5n file with all included dependencies' do
      app_css.must_include 'bootstrap.scss'
      app_css.must_include 'editor.scss'
      app_css.must_include 'font-awesome.scss'
    end

    it 'must include basic css afterward' do
      app_css.must_include '#other-css { color: red; }',  'From our code afterward.'
    end

    it 'must render the correct path for the icon sprites' do
      app_css.must_include 'url(/assets/fontawesome-webfont.woff)'
    end

  end

end
