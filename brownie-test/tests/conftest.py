import pytest
from scripts.deploy import deploy


@pytest.fixture
def counter_contract():
    return deploy()
