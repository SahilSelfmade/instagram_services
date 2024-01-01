class AppLocalStorage {
        static AppLocalStorage? _instance;
        // Avoid self instance
        AppLocalStorage._();
        static AppLocalStorage get instance => _instance ??= AppLocalStorage._();
}