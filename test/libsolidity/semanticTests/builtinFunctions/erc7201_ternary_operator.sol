contract C {
    function simple() public pure returns (uint) {
        return erc7201(true ? "x" : "y");
    }
    function compounded(bool c1, bool c2) public pure returns (uint) {
        return erc7201(c1 ? "a" : (c2 ? "x" : "c"));
    }
}
// ----
// simple() -> -54410875867715754317031553053437925074622998971851806468326073383238108491776
// compounded(bool,bool): false, true -> -54410875867715754317031553053437925074622998971851806468326073383238108491776
