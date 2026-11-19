package com.sightcall.universal.util;

import android.content.Context;
import android.content.SharedPreferences;
import com.sightcall.universal.api.Apis;
import com.sightcall.universal.api.Environment;
import com.sightcall.universal.api.HttpLoggingInterceptor;
import net.rtccloud.sdk.util.OldLogger;

/* JADX INFO: loaded from: classes3.dex */
public class UniversalSettings {
    private static final String KEY_API_BASE_URL = "api_base_url";
    private static final String KEY_API_INTERCEPTOR = "api_interceptor";
    private static final String KEY_API_LOGIN_URL = "api_login_url";
    private static final String KEY_DEFAULT_ENV = "default_environment";
    private static final String KEY_LOGGER_VERBOSITY = "logger_verbosity";
    private static final String KEY_NETWORK_TRAFFIC = "network_traffic";
    private static final String KEY_ON_SCREEN_DISPLAY = "on_screen_display";
    private static final String KEY_SECURE_SCREEN = "secure_screen";
    private static final String SHARED_PREFERENCES_NAME = "universal_settings";
    private final LazyStringPreference apiBaseUrl;
    private final LazyBooleanPreference apiInterceptor;
    private final LazyStringPreference apiLoginUrl;
    private final LazyEnumPreference<Environment> defaultEnvironment;
    private final LazyIntegerPreference loggerVerbosity;
    private final LazyBooleanPreference networkTraffic;
    private final LazyBooleanPreference onScreenDisplay;
    private final LazyBooleanPreference secureScreen;

    public UniversalSettings(Context context) {
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(SHARED_PREFERENCES_NAME, 0);
        Environment environment = Environment.PROD;
        this.defaultEnvironment = new LazyEnumPreference<Environment>(sharedPreferences, KEY_DEFAULT_ENV, Environment.class, environment) { // from class: com.sightcall.universal.util.UniversalSettings.1
            @Override // com.sightcall.universal.util.LazyPreference, com.sightcall.universal.util.Lazy
            public void set(Environment environment2) {
                if (environment2 == null) {
                    environment2 = Environment.PROD;
                }
                super.set(environment2);
            }
        };
        Boolean bool = Boolean.FALSE;
        this.secureScreen = new LazyBooleanPreference(sharedPreferences, KEY_SECURE_SCREEN, bool);
        this.loggerVerbosity = (LazyIntegerPreference) new LazyIntegerPreference(sharedPreferences, KEY_LOGGER_VERBOSITY, null) { // from class: com.sightcall.universal.util.UniversalSettings.2
            @Override // com.sightcall.universal.util.LazyPreference, com.sightcall.universal.util.Lazy
            public void set(Integer num) {
                super.set(num);
                if (num == null) {
                    return;
                }
                int iIntValue = num.intValue();
                if (iIntValue == 2) {
                    OldLogger.verbose();
                    return;
                }
                if (iIntValue == 3) {
                    OldLogger.debug();
                    return;
                }
                if (iIntValue == 4) {
                    OldLogger.info();
                    return;
                }
                if (iIntValue == 5) {
                    OldLogger.warn();
                } else if (iIntValue != 6) {
                    OldLogger.warn();
                } else {
                    OldLogger.error();
                }
            }
        }.apply();
        this.apiInterceptor = (LazyBooleanPreference) new LazyBooleanPreference(sharedPreferences, KEY_API_INTERCEPTOR, bool) { // from class: com.sightcall.universal.util.UniversalSettings.3
            @Override // com.sightcall.universal.util.LazyPreference, com.sightcall.universal.util.Lazy
            public void set(Boolean bool2) {
                super.set(bool2);
                HttpLoggingInterceptor httpLoggingInterceptorLoggingInterceptor = Apis.loggingInterceptor();
                if (bool2 != null) {
                    bool2.booleanValue();
                }
                httpLoggingInterceptorLoggingInterceptor.setLevel(HttpLoggingInterceptor.Level.BODY);
            }
        }.apply();
        this.onScreenDisplay = new LazyBooleanPreference(sharedPreferences, KEY_ON_SCREEN_DISPLAY, bool);
        this.networkTraffic = new LazyBooleanPreference(sharedPreferences, KEY_NETWORK_TRAFFIC, bool);
        this.apiBaseUrl = new LazyStringPreference(sharedPreferences, KEY_API_BASE_URL, null);
        this.apiLoginUrl = new LazyStringPreference(sharedPreferences, KEY_API_LOGIN_URL, null);
    }

    public Lazy<String> apiBaseUrl() {
        return this.apiBaseUrl;
    }

    public Lazy<Boolean> apiInterceptor() {
        return this.apiInterceptor;
    }

    public Lazy<String> apiLoginUrl() {
        return this.apiLoginUrl;
    }

    public Lazy<Environment> defaultEnvironment() {
        return this.defaultEnvironment;
    }

    public Lazy<Integer> loggerVerbosity() {
        return this.loggerVerbosity;
    }

    public Lazy<Boolean> networkTraffic() {
        return this.networkTraffic;
    }

    public Lazy<Boolean> onScreenDisplay() {
        return this.onScreenDisplay;
    }

    public Lazy<Boolean> secureScreen() {
        return this.secureScreen;
    }
}
