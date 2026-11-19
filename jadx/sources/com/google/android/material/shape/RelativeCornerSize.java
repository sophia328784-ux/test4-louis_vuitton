package com.google.android.material.shape;

import android.graphics.RectF;
import defpackage.a;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class RelativeCornerSize implements CornerSize {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f32957a;

    public RelativeCornerSize(float f2) {
        this.f32957a = f2;
    }

    @Override // com.google.android.material.shape.CornerSize
    public final float a(RectF rectF) {
        return Math.min(rectF.width(), rectF.height()) * this.f32957a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof RelativeCornerSize) && this.f32957a == ((RelativeCornerSize) obj).f32957a;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f32957a)});
    }

    public final String toString() {
        return a.i((int) (this.f32957a * 100.0f), "%", new StringBuilder());
    }
}
