module main

import quickjs

fn test_simple(){
	quickjs.run('console.log("hello from js!")', 'test.js')
}
