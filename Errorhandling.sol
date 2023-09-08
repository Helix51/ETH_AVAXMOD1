// Contract demonstrating safe math operations with require(), assert(), and revert()
contract SafeMath {
    function subtract(uint _a, uint _b) public pure returns (uint) {
        require(_b <= _a, "Subtraction result must be non-negative");
        assert(_b >= 0);
        uint result = _a - _b;
        if (_a < _b) {
            revert("Subtraction overflow");
        }
        return result;
    }
}
