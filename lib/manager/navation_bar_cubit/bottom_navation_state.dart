
sealed class BottomNavationState {}

final class ButtonNavationBarInitial extends BottomNavationState  {}

final class ButtonNavationBarSuccessState extends BottomNavationState  {
  final int index;

  ButtonNavationBarSuccessState({required this.index});
}