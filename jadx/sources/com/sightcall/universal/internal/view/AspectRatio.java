package com.sightcall.universal.internal.view;

/* JADX INFO: loaded from: classes3.dex */
public class AspectRatio {
    int height;
    int width;

    public AspectRatio(int i2, int i3) {
        this.width = i2;
        this.height = i3;
    }

    public void set(int i2, int i3) {
        this.width = i2;
        this.height = i3;
    }

    public float value() {
        return this.width / this.height;
    }
}
