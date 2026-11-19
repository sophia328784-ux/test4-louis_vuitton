package com.google.android.filament.utils;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"filament-utils-android_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class MatrixKt {
    public static final Mat4 a(Float3 float3) {
        return new Mat4(new Float4(float3.f28639a, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14, null), new Float4(Call.Parameters.DEFAULT_CAMERA_ZOOM, float3.f28640b, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13, null), new Float4(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, float3.f28641c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11, null), (Float4) null, 8, (DefaultConstructorMarker) null);
    }
}
