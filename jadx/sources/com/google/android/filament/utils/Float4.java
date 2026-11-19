package com.google.android.filament.utils;

import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bB\u0011\b\u0016\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\nB%\b\u0016\u0012\u0006\u0010\t\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\fB\u001b\b\u0016\u0012\u0006\u0010\t\u001a\u00020\r\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\u000eB\u0011\b\u0016\u0012\u0006\u0010\t\u001a\u00020\u0000¢\u0006\u0004\b\u0007\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/google/android/filament/utils/Float4;", "", "", "x", "y", "z", "w", "<init>", "(FFFF)V", "v", "(F)V", "Lcom/google/android/filament/utils/Float2;", "(Lcom/google/android/filament/utils/Float2;FF)V", "Lcom/google/android/filament/utils/Float3;", "(Lcom/google/android/filament/utils/Float3;F)V", "(Lcom/google/android/filament/utils/Float4;)V", "filament-utils-android_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class Float4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f28643a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f28644b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f28645c;
    public float d;

    public /* synthetic */ Float4(float f2, float f3, float f4, float f5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0.0f : f2, (i2 & 2) != 0 ? 0.0f : f3, (i2 & 4) != 0 ? 0.0f : f4, (i2 & 8) != 0 ? 0.0f : f5);
    }

    public static Float4 a(Float4 float4) {
        float f2 = float4.f28643a;
        float f3 = float4.f28644b;
        float f4 = float4.f28645c;
        float f5 = float4.d;
        float4.getClass();
        return new Float4(f2, f3, f4, f5);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Float4)) {
            return false;
        }
        Float4 float4 = (Float4) obj;
        return Float.compare(this.f28643a, float4.f28643a) == 0 && Float.compare(this.f28644b, float4.f28644b) == 0 && Float.compare(this.f28645c, float4.f28645c) == 0 && Float.compare(this.d, float4.d) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.d) + pq0.b(pq0.b(Float.hashCode(this.f28643a) * 31, 31, this.f28644b), 31, this.f28645c);
    }

    public final String toString() {
        return "Float4(x=" + this.f28643a + ", y=" + this.f28644b + ", z=" + this.f28645c + ", w=" + this.d + ")";
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Float4(Float2 float2, float f2, float f3) {
        this(float2.f28637a, float2.f28638b, f2, f3);
        float2.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Float4(Float3 float3, float f2) {
        this(float3.f28639a, float3.f28640b, float3.f28641c, f2);
        float3.getClass();
    }

    public Float4(float f2, float f3, float f4, float f5) {
        this.f28643a = f2;
        this.f28644b = f3;
        this.f28645c = f4;
        this.d = f5;
    }

    public Float4() {
        this(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 15, null);
    }

    public Float4(float f2) {
        this(f2, f2, f2, f2);
    }

    public /* synthetic */ Float4(Float2 float2, float f2, float f3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(float2, (i2 & 2) != 0 ? 0.0f : f2, (i2 & 4) != 0 ? 0.0f : f3);
    }

    public /* synthetic */ Float4(Float3 float3, float f2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(float3, (i2 & 2) != 0 ? Call.Parameters.DEFAULT_CAMERA_ZOOM : f2);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Float4(Float4 float4) {
        this(float4.f28643a, float4.f28644b, float4.f28645c, float4.d);
        float4.getClass();
    }
}
