#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

names = EveryPolitician::Wikidata.wikipedia_xpath( 
  url: 'https://lb.wikipedia.org/wiki/Chamber',
  after: '//h3[contains(.,"Aktuell Period")]',
  before: '//h3[contains(.,"Period 2009-2013")]',
  xpath: '//li//a[not(@class="new")]/@title',
) 

EveryPolitician::Wikidata.scrape_wikidata(names: { lb: names })
