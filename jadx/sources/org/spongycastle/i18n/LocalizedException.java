package org.spongycastle.i18n;

import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes5.dex */
public class LocalizedException extends Exception {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Throwable f77885b;

    /* JADX WARN: Illegal instructions before constructor call */
    public LocalizedException(ErrorBundle errorBundle, Throwable th) {
        Locale locale = Locale.getDefault();
        errorBundle.getClass();
        super(errorBundle.b("text", locale, TimeZone.getDefault()));
        this.f77885b = th;
    }

    @Override // java.lang.Throwable
    public final Throwable getCause() {
        return this.f77885b;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public LocalizedException(ErrorBundle errorBundle) {
        Locale locale = Locale.getDefault();
        errorBundle.getClass();
        super(errorBundle.b("text", locale, TimeZone.getDefault()));
    }
}
