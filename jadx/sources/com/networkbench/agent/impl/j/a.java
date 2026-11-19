package com.networkbench.agent.impl.j;

import com.batch.android.x0.h;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private byte f37395a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private byte f37396b;

    public a(byte b2, byte b3) {
        this.f37395a = b2;
        this.f37396b = b3;
    }

    public static a a(byte b2) {
        return new a((byte) (b2 & 7), (byte) ((b2 & h.a.f24176e) >>> 6));
    }

    public byte b() {
        return this.f37395a;
    }

    public byte c() {
        return this.f37396b;
    }

    public byte a() {
        return (byte) ((this.f37395a & 255) | (this.f37396b << 6));
    }
}
