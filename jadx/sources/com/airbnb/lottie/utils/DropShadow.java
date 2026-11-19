package com.airbnb.lottie.utils;

import android.graphics.Color;
import android.graphics.Matrix;
import com.airbnb.lottie.animation.LPaint;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class DropShadow {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f22282a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f22283b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f22284c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float[] f22285e;

    public DropShadow(DropShadow dropShadow) {
        this.f22282a = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.f22283b = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.f22284c = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.d = 0;
        this.f22282a = dropShadow.f22282a;
        this.f22283b = dropShadow.f22283b;
        this.f22284c = dropShadow.f22284c;
        this.d = dropShadow.d;
        this.f22285e = null;
    }

    public final void a(int i2, LPaint lPaint) {
        int iAlpha = Color.alpha(this.d);
        int iC = MiscUtils.c(i2);
        Matrix matrix = Utils.f22311a;
        int i3 = (int) ((((iAlpha / 255.0f) * iC) / 255.0f) * 255.0f);
        if (i3 <= 0) {
            lPaint.clearShadowLayer();
        } else {
            lPaint.setShadowLayer(Math.max(this.f22282a, Float.MIN_VALUE), this.f22283b, this.f22284c, Color.argb(i3, Color.red(this.d), Color.green(this.d), Color.blue(this.d)));
        }
    }

    public final void b(int i2) {
        this.d = Color.argb(Math.round((MiscUtils.c(i2) * Color.alpha(this.d)) / 255.0f), Color.red(this.d), Color.green(this.d), Color.blue(this.d));
    }

    public final void c(Matrix matrix) {
        if (this.f22285e == null) {
            this.f22285e = new float[2];
        }
        float[] fArr = this.f22285e;
        fArr[0] = this.f22283b;
        fArr[1] = this.f22284c;
        matrix.mapVectors(fArr);
        float[] fArr2 = this.f22285e;
        this.f22283b = fArr2[0];
        this.f22284c = fArr2[1];
        this.f22282a = matrix.mapRadius(this.f22282a);
    }

    public DropShadow(float f2, float f3, float f4, int i2) {
        this.f22282a = f2;
        this.f22283b = f3;
        this.f22284c = f4;
        this.d = i2;
        this.f22285e = null;
    }

    public DropShadow() {
        this.f22282a = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.f22283b = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.f22284c = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.d = 0;
    }
}
