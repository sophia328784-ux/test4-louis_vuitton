package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
public final class zzmk extends RuntimeException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f30741b;

    public zzmk(int i2, String str, Throwable th) {
        String strValueOf;
        if (str != null) {
            StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 2 + str.length());
            sb.append(i2);
            sb.append(": ");
            sb.append(str);
            strValueOf = sb.toString();
        } else {
            strValueOf = String.valueOf(i2);
        }
        super(strValueOf, th);
        this.f30741b = i2;
    }
}
