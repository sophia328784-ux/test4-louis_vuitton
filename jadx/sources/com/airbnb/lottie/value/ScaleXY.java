package com.airbnb.lottie.value;

/* JADX INFO: loaded from: classes.dex */
public class ScaleXY {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f22332a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f22333b;

    public ScaleXY(float f2, float f3) {
        this.f22332a = f2;
        this.f22333b = f3;
    }

    public final String toString() {
        return this.f22332a + "x" + this.f22333b;
    }

    public ScaleXY() {
        this(1.0f, 1.0f);
    }
}
