package com.google.android.gms.auth.api.signin.internal;

/* JADX INFO: loaded from: classes2.dex */
public class HashAccumulator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f28830a = 1;

    public final void a(Object obj) {
        this.f28830a = (this.f28830a * 31) + (obj == null ? 0 : obj.hashCode());
    }
}
