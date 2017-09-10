---
title: Public, Private and Privileged Class Members
date: 2017-6-15
category: JS, OOPs
---

## Public Members

```javascript
function DuelCard(){
  this.mana = 9;
  this.power = 8000;
  this.name = 'Deathliger, Lion of Chaos'
}
```
Here `mana`, `power` and `name` are the public members of the class DuelCard and hence can be accessible from outside the class

```javascript
var Deathliger = new DuelCard()
Deathliger.name === 'Deathliger, Lion of Chaos' //=>true
```

## Private Members

```javascript
function DuelCard(){
  this.mana = 9;
  this.power = 8000;
  this.name = 'Deathliger, Lion of Chaos'

  var evolution = 'Diadlos, General of Fury'
}
```
Since, after creating instance of DuelCard `evolution` will not be accessible to this. `evolution` here is private member of class

```javascript
var Deathliger = new DuelCard()
Deathliger.evolution === 'Diadlos, General of Fury' //=>false
```

## Privileged Members

```javascript
function DuelCard(){
  this.mana = 9;
  this.power = 8000;
  this.name = 'Deathliger, Lion of Chaos'

  var evolution = 'Diadlos, General of Fury'

  this.getSetEvolution = function(value){
    if(!value){
      return evolution
    }
    evolution = value
  }
}
```
Here function `getSetEvolution` is privileged member as it has access to private members of the class and is itself accessible to outside

```javascript
var Deathliger = new DuelCard()
Deathliger.getSetEvolution() === 'Diadlos, General of Fury' //=>true
Deathliger.getSetEvolution('Ballom, Master of Death')
Deathliger.getSetEvolution() === 'Ballom, Master of Death' //=>true
```
