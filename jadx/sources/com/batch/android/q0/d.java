package com.batch.android.q0;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.widget.ImageView;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public final class d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float[] f23977b = {Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f23978c = false;
    private float d = Call.Parameters.DEFAULT_CAMERA_ZOOM;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ColorStateList f23979e = ColorStateList.valueOf(b.v);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ImageView.ScaleType f23980f = ImageView.ScaleType.FIT_CENTER;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final DisplayMetrics f23976a = Resources.getSystem().getDisplayMetrics();

    public d a(int i2) {
        this.f23979e = ColorStateList.valueOf(i2);
        return this;
    }

    public d b(int i2, float f2) {
        return a(i2, TypedValue.applyDimension(1, f2, this.f23976a));
    }

    public d c(float f2) {
        float[] fArr = this.f23977b;
        fArr[0] = f2;
        fArr[1] = f2;
        fArr[2] = f2;
        fArr[3] = f2;
        return this;
    }

    public d d(float f2) {
        return c(TypedValue.applyDimension(1, f2, this.f23976a));
    }

    public d a(int i2, float f2) {
        this.f23977b[i2] = f2;
        return this;
    }

    public d a(float f2) {
        this.d = f2;
        return this;
    }

    public d a(ImageView.ScaleType scaleType) {
        this.f23980f = scaleType;
        return this;
    }

    public d a(ColorStateList colorStateList) {
        this.f23979e = colorStateList;
        return this;
    }

    public d a(boolean z) {
        this.f23978c = z;
        return this;
    }

    public d b(float f2) {
        this.d = TypedValue.applyDimension(1, f2, this.f23976a);
        return this;
    }
}
