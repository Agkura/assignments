function mysteryScoping1() {
  var x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping2() {
  const x = 'out of block';
  if (true) {
    const x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping3() {
  var x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping4() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping5() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  x = 'out of block again';
  console.log(x);
}

function madLib(verb, adj, noun){
  console.log(`We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}`);
}

const madLib = (sent, word) => {
  let words = sent.split(" ");
  return words.includes(word);
}

const fizzBuzz = function (array) {
  let magic = [];
  for(let i = 0; i < array.length; i++){
    if (array[i] % 5 === 0 && array[i] % 3 === 0) {
      continue;
    }
    if (array[i] % 5 === 0 || array[i] % 3 === 0) {
      magic.push(array[i])
    }
  }
  return magic;
}

function isPrime(num){
  if (num <= 1) {
    return false;
  }
  var max = (num/2) + 1;
  for (let i = 2; i < max; i++){
    if ( num % i === 0 ) {
      return false;
    }
  }
  return true;
}

function sumOfNPrimes(num){
  var primes = firstNPrimes(num);
  var sum = 0;
  for (let i = 0; i < primes.length; i++) {
    sum += primes[i];
  }
  return sum;
}

function firstNPrimes(number){
  var target = 0;
  var array = [];
  while (array.length !== number ) {
    if (isPrime(target)) {
      array.push(target);
    }
    target++;
  }
  return array;
}

function titleize(array, callback){
  var newNames = array.map(
    el => `Mx. ${el} Jingleheimer Schmidt`
  );
  callback(newNames);
}

function printEach(array){
  array.forEach(
    ar => console.log(ar)
  );
}

function Elephant(name, height){
  this.name = name
  this.height = height
  
}
