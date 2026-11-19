package com.perfectcorp.perfectlib;

import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class RgbColorSpace {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f39824a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f39825b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f39826c;

    public RgbColorSpace(int i2, int i3, int i4) {
        Preconditions.g(i2 >= 0, "r < 0");
        Preconditions.g(i2 <= 255, "r > 255");
        Preconditions.g(i3 >= 0, "g < 0");
        Preconditions.g(i3 <= 255, "g > 255");
        Preconditions.g(i4 >= 0, "b < 0");
        Preconditions.g(i4 <= 255, "b > 255");
        this.f39824a = i2;
        this.f39825b = i3;
        this.f39826c = i4;
    }

    public final int getB() {
        return this.f39826c;
    }

    public final int getG() {
        return this.f39825b;
    }

    public final int getR() {
        return this.f39824a;
    }
}
