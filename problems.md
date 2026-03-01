1.  FAILURE: Build failed with an exception.
    * What went wrong:
    A problem occurred configuring project ':shared_preferences_android'.
    > Could not resolve all artifacts for configuration 'classpath'.
    > Could not resolve org.jetbrains.kotlin:kotlin-gradle-plugin:2.3.0.
        Required by:
            project :shared_preferences_android
        > Could not resolve org.jetbrains.kotlin:kotlin-gradle-plugin:2.3.0.
            > Could not get resource 'https://dl.google.com/dl/android/maven2/org/jetbrains/kotlin/kotlin-gradle-plugin/2.3.0/kotlin-gradle-plugin-2.3.0.pom'.
                > Could not GET 'https://dl.google.com/dl/android/maven2/org/jetbrains/kotlin/kotlin-gradle-plugin/2.3.0/kotlin-gradle-plugin-2.3.0.pom'.
                > dl.google.com
        > Could not resolve org.jetbrains.kotlin:kotlin-gradle-plugin:2.3.0.
            > Could not get resource 'https://repo.maven.apache.org/maven2/org/jetbrains/kotlin/kotlin-gradle-plugin/2.3.0/kotlin-gradle-plugin-2.3.0.pom'.
                > Could not GET 'https://repo.maven.apache.org/maven2/org/jetbrains/kotlin/kotlin-gradle-plugin/2.3.0/kotlin-gradle-plugin-2.3.0.pom'.
                > repo.maven.apache.org
    > Failed to notify project evaluation listener.
    > java.lang.NullPointerException (no error message)
    > java.lang.NullPointerException (no error message)

    * Try:
    > Run with --stacktrace option to get the stack trace.
    > Run with --info or --debug option to get more log output.
    > Run with --scan to get full insights.
    > Get more help at https://help.gradle.org.

    BUILD FAILED in 2s
    Running Gradle task 'assembleDebug'...                           2,279ms
    [!] Gradle threw an error while downloading artifacts from the network.
    Error: Gradle task assembleDebug failed with exit code 1

2.  If there is no internet following error occurred. 
    
    i.  Then 'failed to load font Roboto' occurr
        TypeError: Failed to fetch (If there is no internet available)
    
    ii. Dart stack trace:
        Non-error `null` thrown by JS does not have stack trace.
        Caught in Dart at:

    iii.    Flutter Web engine failed to complete HTTP request to fetch 
            Error: TypeError: Failed to fetch dynamically imported module
    ** Flutter Web App Problem
    What should i do for running in offline mode?
    -> To run a Flutter Web app completely offline, you need to bundle everything locally so the browser doesn't have to fetch a single byte from the external web.

    How to bundle fonts locally?
    To stop fetching Roboto font from google, you need to tell Flutter to package the fonts inside your build.
    
    The Fix: Add the --web-resources-cdn flag or modify your pubspec.yaml
    Where to modify pubspec.yml?

    Recommendation: Use the following command when building your app:
    flutter build web --pwa-strategy offline-first --web-resources-cdn

    How to  Host the CanvasKit Engine Locally?
    Flutter Web often uses CanvasKit (a WebAssembly version of Skia) for rendering.
    the app downloads this from a Google CDN at runtime.
    You need to force Flutter to use a local copy of these files.

    Step-by-Step Configuration:

    1. Download the engine: When you build your app, Flutter creates a build/web/canvaskit folder.

    2. Initialize with local path: In your web/index.html, modify the initialization script to point to the local CanvasKit files.

    Modify your index.html loader script (usually inside _flutter.loader.loadEntrypoint):
    ```javascript
    _flutter.loader.loadEntrypoint({
    onEntrypointLoaded: function(engineInitializer) {
        engineInitializer.initializeEngine({
        // This forces the engine to look in your local build folder
        canvasKitBaseUrl: "/canvaskit/" 
        }).then(function(appRunner) {
        appRunner.runApp();
        });
    }
    });
    ```
    
    How to Enable PWA (Progressive Web App) Support?
    If you want the app to work offline after the first visit (like a desktop app), you need a Service Worker.

    1. Ensure your web/manifest.json is configured.
    2. Check that web/index.html includes the service worker registration script (Flutter includes this by default in newer versions).
    3. When the user visits the site once, the Service Worker caches all scripts, images, and fonts. The next time they open it without internet, it loads from the local cache.