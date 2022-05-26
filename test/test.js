const { cosh } = require('core-js/core/number')

const Main = artifacts.require('./Main.sol')

require('chai')
  .use(require('chai-as-promised'))
  .should()

contract('Land', ([deployer, author, tipper]) => {
  let obj

  before(async () => {
    obj = await Land.deployed()
  })

  describe('deployment', async () => {
    it('Verify deploys successfully', async () => {
      const address = await Land.address
      assert.notEqual(address, 0x0)
      assert.notEqual(address, '')
      assert.notEqual(address, null)
      assert.notEqual(address, undefined)
    })

    
  






  })

})