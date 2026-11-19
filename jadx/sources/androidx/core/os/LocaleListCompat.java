package androidx.core.os;

import android.os.LocaleList;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class LocaleListCompat {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final LocaleListCompat f12082b = f(new LocaleList(new Locale[0]));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LocaleListPlatformWrapper f12083a;

    public LocaleListCompat(LocaleListPlatformWrapper localeListPlatformWrapper) {
        this.f12083a = localeListPlatformWrapper;
    }

    public static LocaleListCompat a(String str) {
        if (str == null || str.isEmpty()) {
            return f12082b;
        }
        String[] strArrSplit = str.split(",", -1);
        int length = strArrSplit.length;
        Locale[] localeArr = new Locale[length];
        for (int i2 = 0; i2 < length; i2++) {
            localeArr[i2] = Locale.forLanguageTag(strArrSplit[i2]);
        }
        return f(new LocaleList(localeArr));
    }

    public static LocaleListCompat f(LocaleList localeList) {
        return new LocaleListCompat(new LocaleListPlatformWrapper(localeList));
    }

    public final Locale b(int i2) {
        return this.f12083a.f12084a.get(i2);
    }

    public final boolean c() {
        return this.f12083a.f12084a.isEmpty();
    }

    public final int d() {
        return this.f12083a.f12084a.size();
    }

    public final String e() {
        return this.f12083a.f12084a.toLanguageTags();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof LocaleListCompat) {
            return this.f12083a.equals(((LocaleListCompat) obj).f12083a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f12083a.f12084a.hashCode();
    }

    public final String toString() {
        return this.f12083a.f12084a.toString();
    }
}
