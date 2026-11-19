package com.google.android.material.shape;

import android.graphics.RectF;
import java.util.Arrays;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public final class AdjustedCornerSize implements CornerSize {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CornerSize f32930a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f32931b;

    public AdjustedCornerSize(float f2, CornerSize cornerSize) {
        while (cornerSize instanceof AdjustedCornerSize) {
            cornerSize = ((AdjustedCornerSize) cornerSize).f32930a;
            f2 += ((AdjustedCornerSize) cornerSize).f32931b;
        }
        this.f32930a = cornerSize;
        this.f32931b = f2;
    }

    @Override // com.google.android.material.shape.CornerSize
    public final float a(RectF rectF) {
        return Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, this.f32930a.a(rectF) + this.f32931b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdjustedCornerSize)) {
            return false;
        }
        AdjustedCornerSize adjustedCornerSize = (AdjustedCornerSize) obj;
        return this.f32930a.equals(adjustedCornerSize.f32930a) && this.f32931b == adjustedCornerSize.f32931b;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f32930a, Float.valueOf(this.f32931b)});
    }
}
