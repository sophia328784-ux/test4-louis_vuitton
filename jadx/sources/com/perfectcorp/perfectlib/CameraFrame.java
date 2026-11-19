package com.perfectcorp.perfectlib;

import defpackage.md;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraFrame {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f39502a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f39503b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f39504c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f39505e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f39506f;

    public CameraFrame(byte[] bArr, int i2, int i3, boolean z) {
        if (i2 <= 0 || i2 % 2 != 0) {
            md.n("width must be positive even number");
            throw null;
        }
        if (i3 <= 0 || i3 % 2 != 0) {
            md.n("height must be positive even number");
            throw null;
        }
        int i4 = i2 * i3;
        if (bArr.length < i4 + (i4 >> 1)) {
            md.n("data has insufficient length");
            throw null;
        }
        this.f39502a = bArr;
        this.f39503b = i2;
        this.f39504c = i3;
        this.d = z;
    }

    public final void setFrameOrientation(int i2) {
        this.f39505e = true;
        this.f39506f = i2;
    }
}
