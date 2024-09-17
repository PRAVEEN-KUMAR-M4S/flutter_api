String maskEmail(String email) {
  if (email.isEmpty) return email;

  int index = email.indexOf('@');
  if (index <= 3) return email; // If the email is too short to mask

  String namePart = email.substring(0, index);
  String domainPart = email.substring(index);

  String maskedNamePart = namePart.substring(0, 3) + '*' * (namePart.length - 3);

  return maskedNamePart + domainPart;
}