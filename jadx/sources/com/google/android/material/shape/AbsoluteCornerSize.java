package com.google.android.material.shape;

import android.graphics.RectF;
import defpackage.d21;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class AbsoluteCornerSize implements CornerSize {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f32929a;

    public AbsoluteCornerSize(float f2) {
        this.f32929a = f2;
    }

    @Override // com.google.android.material.shape.CornerSize
    public final float a(RectF rectF) {
        return this.f32929a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof AbsoluteCornerSize) && this.f32929a == ((AbsoluteCornerSize) obj).f32929a;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f32929a)});
    }

    public final String toString() {
        return d21.e(this.f32929a, "px", new StringBuilder());
    }
}
