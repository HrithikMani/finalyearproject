const Main = artifacts.require('./Main.sol')

require('chai')
  .use(require('chai-as-promised'))
  .should()

contract('Decentragram', ([deployer, author, tipper]) => {
  let obj

  before(async () => {
    obj = await Main.deployed()
  })

  describe('deployment', async () => {
    it('deploys successfully', async () => {
      const address = await Main.address
      assert.notEqual(address, 0x0)
      assert.notEqual(address, '')
      assert.notEqual(address, null)
      assert.notEqual(address, undefined)
    })

    it('has a name', async () => {
      const name = await obj.name()
      assert.equal(name, 'Hrithik')
      
    })
  })

})