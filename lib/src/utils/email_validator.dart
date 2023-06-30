



bool validateEmail(String? email){

  if(email==null) {
    return false;
  }
  return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);
}


bool validateOTP(String? otp){
  if(otp==null) {
    return false;
  }

  return RegExp(r"^[0-9]+").hasMatch(otp);

}