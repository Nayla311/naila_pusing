// lib/utils/dummy_data.dart
import '../models/order.dart';
import '../models/user.dart';

// ADMIN USER CREDENTIALS
// Digunakan untuk simulasi login admin.
final User dummyAdminUser = User(
  'admin@gmail.com',
  'admin123', // Password Admin
  'Admin Palace',
  DateTime.now(),
  role: 'admin',
);

// INITIAL ORDERS (Data Dummy)
final List<Order> initialOrders = [
  Order(
    id: 'BP2025101A',
    serviceName: 'Deep Cleansing Facial',
    serviceCategory: 'Facial Treatment',
    price: 'Rp 300.000',
    duration: '2 hours',
    bookingDate: DateTime.now().add(const Duration(days: 3)),
    bookingTime: '10:00',
    customerName: 'Anya Geraldine',
    customerPhone: '081234567890',
    status: 'Confirmed',
    createdAt: DateTime.now().subtract(const Duration(days: 5)),
    notes: 'Please ensure vegan products are used.',
  ),
  Order(
    id: 'BP2025102B',
    serviceName: 'Luxury Nail Art',
    serviceCategory: 'Nail Care',
    price: 'Rp 200.000',
    duration: '2 hours',
    bookingDate: DateTime.now().add(const Duration(days: 1)),
    bookingTime: '14:00',
    customerName: 'Bunga Citra Lestari',
    customerPhone: '085098765432',
    status: 'Pending', // Order Pending
    createdAt: DateTime.now().subtract(const Duration(days: 2)),
    notes: 'Need blue glitter polish.',
  ),
  Order(
    id: 'BP2025103C',
    serviceName: 'Hair Coloring',
    serviceCategory: 'Hair Styling',
    price: 'Rp 400.000',
    duration: '4 hours',
    bookingDate: DateTime.now().add(const Duration(days: 7)),
    bookingTime: '13:00',
    customerName: 'Cinta Laura',
    customerPhone: '087654321098',
    status: 'Pending', // Order Pending
    createdAt: DateTime.now().subtract(const Duration(days: 1)),
  ),
  Order(
    id: 'BP2025104D',
    serviceName: 'Wedding Makeup',
    serviceCategory: 'Make Up Artist',
    price: 'Rp 500.000',
    duration: '3 hours',
    bookingDate: DateTime.now().add(const Duration(days: 10)),
    bookingTime: '09:00',
    customerName: 'Dian Sastro',
    customerPhone: '081122334455',
    status: 'Cancelled', // Order Cancelled
    createdAt: DateTime.now().subtract(const Duration(hours: 10)),
  ),
  Order(
    id: 'BP2025105E',
    serviceName: 'Basic Manicure',
    serviceCategory: 'Nail Care',
    price: 'Rp 100.000',
    duration: '1 hour',
    bookingDate: DateTime.now().subtract(const Duration(days: 2)),
    bookingTime: '11:00',
    customerName: 'Emma Watson',
    customerPhone: '089876543210',
    status: 'Completed', // Order Completed
    createdAt: DateTime.now().subtract(const Duration(days: 15)),
  ),
];
