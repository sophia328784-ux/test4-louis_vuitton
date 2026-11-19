package androidx.core.os;

import android.os.LocaleList;

/* JADX INFO: loaded from: classes.dex */
final class LocaleListPlatformWrapper implements LocaleListInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LocaleList f12084a;

    public LocaleListPlatformWrapper(LocaleList localeList) {
        this.f12084a = localeList;
    }

    public final boolean equals(Object obj) {
        return this.f12084a.equals(((LocaleListInterface) obj).getLocaleList());
    }

    @Override // androidx.core.os.LocaleListInterface
    public final LocaleList getLocaleList() {
        return this.f12084a;
    }

    public final int hashCode() {
        return this.f12084a.hashCode();
    }

    public final String toString() {
        return this.f12084a.toString();
    }
}
