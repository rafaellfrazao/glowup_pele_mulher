import 'package:flutter/material.dart';
import '../../services/responsive.dart';

class ModuleCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String statusText;
  final String imagePath;
  final Color statusColor;
  final Color statusBgColor;
  final IconData statusIcon;
  final bool isLocked;
  final VoidCallback? onTap; // Adicionado para permitir clique

  const ModuleCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.statusText,
    required this.imagePath,
    required this.statusColor,
    required this.statusBgColor,
    required this.statusIcon,
    this.isLocked = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    bool isMobile = Responsive.isMobile(context);

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: const Color(0xFF16181A),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white.withOpacity(0.05)),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap, // Ação ao clicar
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: isMobile
                ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    imagePath,
                    width: double.infinity,
                    height: 140,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      width: double.infinity,
                      height: 140,
                      color: Colors.grey[850],
                      child: const Icon(Icons.image, color: Colors.grey),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  title,
                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(color: Colors.grey[400], fontSize: 13),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(color: statusBgColor, shape: BoxShape.circle),
                      child: Icon(statusIcon, color: statusColor, size: 14),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                      decoration: BoxDecoration(
                        color: isLocked ? Colors.transparent : statusBgColor,
                        borderRadius: BorderRadius.circular(20),
                        border: isLocked ? Border.all(color: Colors.white.withOpacity(0.1)) : null,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (isLocked) ...[
                            Icon(Icons.lock_outline, color: statusColor, size: 14),
                            const SizedBox(width: 6),
                          ],
                          Text(
                            statusText,
                            style: TextStyle(color: statusColor, fontWeight: FontWeight.w600, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )
                : Row(
              children: [
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(color: statusBgColor, shape: BoxShape.circle),
                  child: Icon(statusIcon, color: statusColor, size: 16),
                ),
                const SizedBox(width: 16),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    imagePath,
                    width: 100,
                    height: 60,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      width: 100,
                      height: 60,
                      color: Colors.grey[850],
                      child: const Icon(Icons.image, color: Colors.grey),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        subtitle,
                        style: TextStyle(color: Colors.grey[400], fontSize: 13),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: isLocked ? Colors.transparent : statusBgColor,
                    borderRadius: BorderRadius.circular(20),
                    border: isLocked ? Border.all(color: Colors.white.withOpacity(0.1)) : null,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (isLocked) ...[
                        Icon(Icons.lock_outline, color: statusColor, size: 14),
                        const SizedBox(width: 6),
                      ],
                      Text(
                        statusText,
                        style: TextStyle(color: statusColor, fontWeight: FontWeight.w600, fontSize: 13),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}