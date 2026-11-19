package com.google.firebase.crashlytics.internal.stacktrace;

/* JADX INFO: loaded from: classes2.dex */
public class TrimmedThrowableData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f35069a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f35070b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StackTraceElement[] f35071c;
    public final TrimmedThrowableData d;

    public TrimmedThrowableData(String str, String str2, StackTraceElement[] stackTraceElementArr, TrimmedThrowableData trimmedThrowableData) {
        this.f35069a = str;
        this.f35070b = str2;
        this.f35071c = stackTraceElementArr;
        this.d = trimmedThrowableData;
    }
}
