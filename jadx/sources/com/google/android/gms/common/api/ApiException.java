package com.google.android.gms.common.api;

/* JADX INFO: loaded from: classes2.dex */
public class ApiException extends Exception {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Status f28974b;

    public ApiException(Status status) {
        int i2 = status.f29008b;
        String str = status.f29009c;
        str = str == null ? "" : str;
        StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 2 + String.valueOf(str).length());
        sb.append(i2);
        sb.append(": ");
        sb.append(str);
        super(sb.toString());
        this.f28974b = status;
    }
}
