package com.perfectcorp.perfectlib.makeupcam.camera;

import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public final class ColorLab32f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f40593a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f40594b;
    public final float l;

    public ColorLab32f(float f2, float f3, float f4) {
        Preconditions.g(f2 >= Call.Parameters.DEFAULT_CAMERA_ZOOM, "L* < 0");
        Preconditions.g(f2 <= 100.0f, "L* > 100");
        Preconditions.g(f3 >= -128.0f, "a* < -128");
        Preconditions.g(f3 <= 128.0f, "a* > 128");
        Preconditions.g(f4 >= -128.0f, "b* < -128");
        Preconditions.g(f4 <= 128.0f, "b* > 128");
        this.l = f2;
        this.f40593a = f3;
        this.f40594b = f4;
    }
}
