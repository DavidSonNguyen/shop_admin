class SelectEvent {
  final int col;
  final int row;

  SelectEvent({required this.col, required this.row});

  SelectEvent copyWith({int? col, int? row}) {
    return SelectEvent(
      col: col ?? this.col,
      row: row ?? this.row,
    );
  }

  @override
  int get hashCode {
    return Object.hash(col, row);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SelectEvent) return false;
    return other.col == col && other.row == row;
  }
}
