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