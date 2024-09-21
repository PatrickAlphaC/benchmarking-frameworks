from ape import project, accounts


def main():
    account = accounts.test_accounts[0]
    account.deploy(project.Counter)
