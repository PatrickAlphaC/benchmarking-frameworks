from brownie import Counter, accounts


def deploy():
    counter = Counter.deploy({"from": accounts[0]})
    print("Starting count: ", counter.number())
    counter.increment({"from": accounts[0]})
    print("Ending count: ", counter.number())
    return counter


def main():
    return deploy()
