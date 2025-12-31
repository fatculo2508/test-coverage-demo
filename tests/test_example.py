"""Example test file"""

import pytest
from src.calculator import add, subtract, multiply, divide, is_even, is_positive


def test_add():
    """Test addition"""
    assert add(2, 3) == 5
    assert add(-1, 1) == 0
    assert add(0, 0) == 0


def test_subtract():
    """Test subtraction"""
    assert subtract(5, 3) == 2
    assert subtract(0, 5) == -5


def test_multiply():
    """Test multiplication"""
    assert multiply(3, 4) == 12
    assert multiply(-2, 3) == -6


def test_divide():
    """Test division"""
    assert divide(10, 2) == 5
    assert divide(7, 2) == 3.5


def test_divide_by_zero():
    """Test division by zero raises error"""
    with pytest.raises(ValueError, match="Cannot divide by zero"):
        divide(10, 0)


def test_is_even():
    """Test even number check"""
    assert is_even(4) is True
    assert is_even(3) is False


def test_is_positive():
    """Test positive number check"""
    assert is_positive(5) is True
    assert is_positive(-3) is False
