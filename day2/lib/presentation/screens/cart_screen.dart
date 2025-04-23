import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import '../../providers/cart_provider.dart';

//show items in cart
@RoutePage()
class CartScreen extends ConsumerWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //get cart state from provider
    final cart = ref.watch(cartProvider);
    final items = cart.items.values.toList();
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
        actions: [
          if (items.isNotEmpty)
            //clear cart btn
            IconButton(
              icon: const Icon(Icons.delete_outline),
              onPressed: () {
                ref.read(cartProvider.notifier).clear();
              },
            ),
        ],
      ),
      body: items.isEmpty
          ? const Center(
              child: Text(
                'Your cart is empty',
                style: TextStyle(fontSize: 18),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(8.0),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Icon(
                          Icons.image,
                          size: 30,
                          color: Colors.grey[400],
                        ),
                      ),
                      title: Text(
                        item.product.name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 4),
                          Text('\$${item.product.price.toStringAsFixed(2)}'),
                          const SizedBox(height: 4),
                          Text('Quantity: ${item.quantity}'),
                        ],
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          //remove item btn
                          IconButton(
                            icon: const Icon(Icons.remove_circle_outline),
                            onPressed: () {
                              ref.read(cartProvider.notifier).removeItem(item.product.id);
                            },
                          ),
    


