function transferOwnership(newOwner) {
  require(newOwner != address(0), "Ownable: new owner is the zero address");
  _transferOwnership(newOwner);
}

function _transferOwnership(newOwner) {
  emit OwnershipTransferred(owner, newOwner);
  owner = newOwner;
  //Added revert statement to handle error
  if(newOwner == address(0)){
    revert();
  }
}