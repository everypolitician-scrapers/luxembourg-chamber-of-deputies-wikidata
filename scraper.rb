#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

lb2013 = EveryPolitician::Wikidata.wikipedia_xpath(
  url: 'https://lb.wikipedia.org/wiki/Chamber',
  after: '//h3[contains(.,"Aktuell Period")]',
  before: '//h3[contains(.,"Period 2009-2013")]',
  xpath: '//li//a[not(@class="new")]/@title',
)

fr2013 = EveryPolitician::Wikidata.wikipedia_xpath(
  url: 'https://fr.wikipedia.org/wiki/Modèle:Palette_Députés_de_la_Chambre_des_députés_du_Luxembourg_2018-2023',
  xpath: '//table//td[contains(@class,"navbox-list")]//a[not(@class="new")]/@title'
)

fr2016 = EveryPolitician::Wikidata.wikipedia_xpath(
  url: 'https://fr.wikipedia.org/wiki/Modèle:Palette_Députés_de_la_Chambre_des_députés_du_Luxembourg_2013-2018',
  xpath: '//table//td[contains(@class,"navbox-list")]//a[not(@class="new")]/@title'
)

EveryPolitician::Wikidata.scrape_wikidata(names: { lb: lb2013, fr: fr2013 | fr2016 })
