package com.google.android.material.shape;

import android.graphics.RectF;
import androidx.core.math.MathUtils;
import java.util.Arrays;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public final class ClampedCornerSize implements CornerSize {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f32932a;

    public ClampedCornerSize(float f2) {
        this.f32932a = f2;
    }

    @Override // com.google.android.material.shape.CornerSize
    public final float a(RectF rectF) {
        return MathUtils.a(this.f32932a, Call.Parameters.DEFAULT_CAMERA_ZOOM, Math.min(rectF.width() / 2.0f, rectF.height() / 2.0f));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ClampedCornerSize) && this.f32932a == ((ClampedCornerSize) obj).f32932a;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f32932a)});
    }
}
