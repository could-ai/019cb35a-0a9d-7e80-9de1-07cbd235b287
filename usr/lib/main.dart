import 'package:flutter/material.dart';

void main() {
  runApp(const TaiwanStockApp());
}

class TaiwanStockApp extends StatelessWidget {
  const TaiwanStockApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '台灣股票趨勢',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const StockTrendsScreen(),
      },
    );
  }
}

class StockTrendsScreen extends StatelessWidget {
  const StockTrendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('明日台灣股票趨勢'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '台股近期走勢分析',
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      '根據最新資訊，台股近期受地緣政治風險影響，盤中波動較大，3月2日曾重挫逾800點，終場下跌319點，但仍守住關鍵支撐位35,000點附近。',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      '市場信心尚未完全恢復，法人賣超較多，外資大幅提款，但投信逆勢買超。近期焦點在AI、低軌衛星、光通訊及半導體族群，部分個股在法說會前已有股價表現。',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '明日走勢預測',
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      '整體來看，短線台股仍有震盪，明日走勢需觀察開盤後的市場反應及國際情勢變化，投資人宜謹慎操作。',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.orange.shade50,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text(
                        '⚠️ 投資有風險，入市需謹慎。以上資訊僅供參考，不構成投資建議。',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.orange,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {
                // TODO: Implement refresh functionality when API is connected
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('數據更新中... (模擬)')),
                );
              },
              icon: const Icon(Icons.refresh),
              label: const Text('更新數據'),
            ),
          ],
        ),
      ),
    );
  }
}