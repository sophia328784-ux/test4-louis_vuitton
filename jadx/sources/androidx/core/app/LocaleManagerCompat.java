package androidx.core.app;

import android.app.LocaleManager;
import android.content.Context;
import android.os.Build;
import android.os.LocaleList;
import androidx.core.os.LocaleListCompat;

/* JADX INFO: loaded from: classes.dex */
public abstract class LocaleManagerCompat {

    public static class Api33Impl {
        public static LocaleList a(Object obj) {
            return ((LocaleManager) obj).getApplicationLocales();
        }
    }

    public static LocaleListCompat a(Context context) {
        if (Build.VERSION.SDK_INT < 33) {
            return LocaleListCompat.a(AppLocalesStorageHelper.b(context));
        }
        Object systemService = context.getSystemService("locale");
        return systemService != null ? LocaleListCompat.f(Api33Impl.a(systemService)) : LocaleListCompat.f12082b;
    }
}
