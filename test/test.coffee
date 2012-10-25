should = require('chai').should()
Backbone = require 'backbone'
require('../') Backbone

class Model extends Backbone.Model
  idAttribute: ['a', 'b']

describe 'composite keys', ->
  it 'should be available in `initialize`', ->
    id = null
    Model::initialize = -> id = @id
    new Model a: 1, b: 2
    id.should.equal '1-2'

  it 'should change when `silent: true`', ->
    a = new Model a: 1, b: 2
    a.id.should.equal '1-2'
    a.set {b: 1}, silent: true
    a.id.should.equal '1-1'

  it 'should update collection index when changed', ->
    a = new Model a: 1, b: 2
    b = new Backbone.Collection
    b.add a
    b.get('1-2').should.equal a
    a.set b: 1
    (b.get('1-2') is undefined).should.be.true
    b.get('1-1').should.equal a

  it 'should not repeat in collections', ->
    a = new Model a: 1, b: 2
    b = new Model a: 1, b: 2
    c = new Backbone.Collection
    c.add a
    c.add b
    c.length.should.equal 1
    c.models.should.include a
    c.models.should.not.include b