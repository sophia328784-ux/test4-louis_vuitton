package com.google.firebase.installations.time;

/* JADX INFO: loaded from: classes2.dex */
public class SystemClock implements Clock {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static SystemClock f35213a;

    @Override // com.google.firebase.installations.time.Clock
    public final long a() {
        return System.currentTimeMillis();
    }
}
