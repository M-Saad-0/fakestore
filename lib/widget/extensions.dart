extension StringExtension on String {
  String capitalize() {
    if (isEmpty) return this;
    return "${this[0].toUpperCase()}${substring(1)}";
  }
  String toTitle() {
    if (isEmpty) return this;

    return split(" ").map((word) => word.capitalize()).join(" ");
  }
}