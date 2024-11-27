from ape import project, accounts


def main():
    account = accounts.test_accounts[0]
    return account.deploy(project.Counter)
