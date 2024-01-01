class AppApiConstants {
        static AppApiConstants? _instance;
        // Avoid self instance
        AppApiConstants._();
        static AppApiConstants get instance => _instance ??= AppApiConstants._();
}