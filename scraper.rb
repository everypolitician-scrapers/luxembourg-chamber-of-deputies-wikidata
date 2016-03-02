#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

names = EveryPolitician::Wikidata.morph_wikinames(source: 'tmtmtmtm/luxembourg-chamber-of-deputies-wikipedia', column: 'wikipedia__lb')
EveryPolitician::Wikidata.scrape_wikidata(names: { lb: names })
