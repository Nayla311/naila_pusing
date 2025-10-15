import 'package:flutter/material.dart';

class Order {
  final String id;
  final String serviceName;
  final String serviceCategory;
  final String price;
  final String duration;
  final DateTime bookingDate;
  final String bookingTime;
  final String customerName;
  final String customerPhone;
  final String status; // pending, confirmed, completed, cancelled
  final DateTime createdAt;
  final String? notes;

  Order({
    required this.id,
    required this.serviceName,
    required this.serviceCategory,
    required this.price,
    required this.duration,
    required this.bookingDate,
    required this.bookingTime,
    required this.customerName,
    required this.customerPhone,
    required this.status,
    required this.createdAt,
    this.notes,
  });

  // Generate order ID
  static String generateOrderId() {
    final now = DateTime.now();
    return 'BP${now.year}${now.month.toString().padLeft(2, '0')}${now.day.toString().padLeft(2, '0')}${now.millisecondsSinceEpoch.toString().substring(8)}';
  }

  // Get status color
  Color getStatusColor() {
    switch (status.toLowerCase()) {
      case 'confirmed':
        return Colors.green;
      case 'pending':
        return Colors.orange;
      case 'completed':
        return Colors.blue;
      case 'cancelled':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  // Get status icon
  IconData getStatusIcon() {
    switch (status.toLowerCase()) {
      case 'confirmed':
        return Icons.check_circle;
      case 'pending':
        return Icons.schedule;
      case 'completed':
        return Icons.done_all;
      case 'cancelled':
        return Icons.cancel;
      default:
        return Icons.info;
    }
  }

  // Format date
  String getFormattedDate() {
    final months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];
    return '${bookingDate.day} ${months[bookingDate.month - 1]} ${bookingDate.year}';
  }

  // Copy with method for updating order
  Order copyWith({
    String? id,
    String? serviceName,
    String? serviceCategory,
    String? price,
    String? duration,
    DateTime? bookingDate,
    String? bookingTime,
    String? customerName,
    String? customerPhone,
    String? status,
    DateTime? createdAt,
    String? notes,
  }) {
    return Order(
      id: id ?? this.id,
      serviceName: serviceName ?? this.serviceName,
      serviceCategory: serviceCategory ?? this.serviceCategory,
      price: price ?? this.price,
      duration: duration ?? this.duration,
      bookingDate: bookingDate ?? this.bookingDate,
      bookingTime: bookingTime ?? this.bookingTime,
      customerName: customerName ?? this.customerName,
      customerPhone: customerPhone ?? this.customerPhone,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      notes: notes ?? this.notes,
    );
  }
}
