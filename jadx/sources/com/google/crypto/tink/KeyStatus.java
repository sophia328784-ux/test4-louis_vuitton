package com.google.crypto.tink;

import com.google.errorprone.annotations.Immutable;

/* JADX INFO: loaded from: classes2.dex */
@Immutable
public final class KeyStatus {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final KeyStatus f33847b = new KeyStatus("ENABLED");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final KeyStatus f33848c = new KeyStatus("DISABLED");
    public static final KeyStatus d = new KeyStatus("DESTROYED");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f33849a;

    public KeyStatus(String str) {
        this.f33849a = str;
    }

    public final String toString() {
        return this.f33849a;
    }
}
