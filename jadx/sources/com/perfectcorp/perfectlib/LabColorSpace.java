package com.perfectcorp.perfectlib;

import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public final class LabColorSpace {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f39655a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f39656b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f39657c;

    public LabColorSpace(float f2, float f3, float f4) {
        Preconditions.g(f2 >= Call.Parameters.DEFAULT_CAMERA_ZOOM, "L* < 0");
        Preconditions.g(f2 <= 100.0f, "L* > 100");
        Preconditions.g(f3 >= -128.0f, "a* < -128");
        Preconditions.g(f3 <= 128.0f, "a* > 128");
        Preconditions.g(f4 >= -128.0f, "b* < -128");
        Preconditions.g(f4 <= 128.0f, "b* > 128");
        this.f39655a = f2;
        this.f39656b = f3;
        this.f39657c = f4;
    }

    public final float getA() {
        return this.f39656b;
    }

    public final float getB() {
        return this.f39657c;
    }

    public final float getL() {
        return this.f39655a;
    }
}
