// lib/services/order_service.dart
import 'package:flutter/material.dart';
import '../models/order.dart';
import '../utils/dummy_data.dart';

class OrderService extends ChangeNotifier {
  // Gunakan initialOrders sebagai data awal
  final List<Order> _orders = initialOrders;

  List<Order> get allOrders {
    // Urutkan berdasarkan tanggal dibuat terbaru (newest first)
    _orders.sort((a, b) => b.createdAt.compareTo(a.createdAt));
    return List.unmodifiable(_orders);
  }

  // Digunakan oleh Admin untuk update status
  void updateOrderStatus(String orderId, String newStatus) {
    final index = _orders.indexWhere((order) => order.id == orderId);
    if (index != -1) {
      final oldOrder = _orders[index];
      // Pastikan status yang diberikan valid
      final validStatus =
          ['Pending', 'Confirmed', 'Completed', 'Cancelled'].contains(newStatus)
          ? newStatus
          : oldOrder.status;

      _orders[index] = oldOrder.copyWith(status: validStatus);
      notifyListeners(); // Beri tahu Consumer (UI) bahwa data telah berubah
    }
  }

  // Digunakan oleh User untuk menambahkan order baru
  void addOrder(Order order) {
    _orders.add(order);
    notifyListeners();
  }

  // Digunakan oleh AdminDashboard untuk statistik
  Map<String, int> getOrderCounts() {
    int pending = 0;
    int confirmed = 0;
    int completed = 0;
    int cancelled = 0;

    for (var order in _orders) {
      switch (order.status.toLowerCase()) {
        case 'pending':
          pending++;
          break;
        case 'confirmed':
          confirmed++;
          break;
        case 'completed':
          completed++;
          break;
        case 'cancelled':
          cancelled++;
          break;
      }
    }

    return {
      'All': _orders.length,
      'Pending': pending,
      'Confirmed': confirmed,
      'Completed': completed,
      'Cancelled': cancelled,
    };
  }
}
