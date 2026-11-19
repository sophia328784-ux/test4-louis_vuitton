package androidx.core.os;

import android.content.res.Configuration;

/* JADX INFO: loaded from: classes.dex */
public abstract class ConfigurationCompat {
    public static void a(Configuration configuration, LocaleListCompat localeListCompat) {
        configuration.setLocales(localeListCompat.f12083a.f12084a);
    }
}
