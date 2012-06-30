require 'spec_helper'

class UsageJsSpec < Wysihtml5n::Rails::Spec

  describe 'application.js' do

    let(:app_js) { dummy_asset('application.js') }

    it 'will render main wysihtml5n.js file and all included modules' do
      app_js.must_include 'jquery.Jcrop.js'
      app_js.must_include 'wysihtml5 v0.3.0'
      app_js.must_include '$.fn.wysiHTML5N'
    end

    it 'must include basic js afterward' do
      app_js.must_include '$(document).ready(function(){});'
    end

  end

  describe 'individual.js' do

    let(:individual_js) { dummy_asset('individual.js') }

    it 'will render wysihtml5n modules individually' do
      individual_js.must_include 'jquery.Jcrop.js'
      individual_js.must_include 'wysihtml5 v0.3.0'
      individual_js.must_include '$.fn.wysiHTML5N'
    end

  end

end