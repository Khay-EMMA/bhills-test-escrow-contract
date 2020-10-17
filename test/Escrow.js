const EscrowService = artifacts.require("EscrowService")

contract("EscrowService", (accounts) => {
    let contractInstance;

    const seller = accounts[0]
    
    beforeEach(async () => {
        contractInstance = await EscrowService.new();
    });


    it("Should abort the purchase", async () => {
        const result = await contractInstance.abort({from : seller})
        console.log(result)
    })
})