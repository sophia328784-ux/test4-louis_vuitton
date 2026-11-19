package com.google.android.gms.measurement.internal;

import defpackage.d21;
import java.util.Calendar;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public final class zzbb extends zzjf {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f31586c;
    public String d;

    @Override // com.google.android.gms.measurement.internal.zzjf
    public final boolean h() {
        Calendar calendar = Calendar.getInstance();
        this.f31586c = ((long) (calendar.get(16) + calendar.get(15))) / 60000;
        Locale locale = Locale.getDefault();
        String language = locale.getLanguage();
        Locale locale2 = Locale.ENGLISH;
        String lowerCase = language.toLowerCase(locale2);
        String lowerCase2 = locale.getCountry().toLowerCase(locale2);
        this.d = d21.p(new StringBuilder(String.valueOf(lowerCase).length() + 1 + String.valueOf(lowerCase2).length()), lowerCase, "-", lowerCase2);
        return false;
    }

    public final long k() {
        i();
        return this.f31586c;
    }

    public final String l() {
        i();
        return this.d;
    }
}
