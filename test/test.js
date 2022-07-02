const Fibonacci = artifacts.require("Fibonacci")

contract("Fibonacci", (accounts) => {
    let fibonacci
    beforeEach(async () => {
        fibonacci = await Fibonacci.new({ from: accounts[0] })
    })

    it("Should return the nth Fibonacci number recursevely", async () => {
        const n = 10
        const fib = parseInt(await fibonacci.fib_recursive(n))

        assert(fib === 55)
    })

    it("Should return the nth Fibonacci number", async () => {
        const n = 10
        const fib = parseInt(await fibonacci.fib(n))

        assert(fib === 55)
    })
})