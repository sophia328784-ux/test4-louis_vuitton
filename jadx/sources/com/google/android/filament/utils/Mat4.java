package com.google.android.filament.utils;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0011B/\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bB+\b\u0016\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\t\u0012\b\b\u0002\u0010\r\u001a\u00020\t¢\u0006\u0004\b\u0007\u0010\u000eB\u0011\b\u0016\u0012\u0006\u0010\u000f\u001a\u00020\u0000¢\u0006\u0004\b\u0007\u0010\u0010¨\u0006\u0012"}, d2 = {"Lcom/google/android/filament/utils/Mat4;", "", "Lcom/google/android/filament/utils/Float4;", "x", "y", "z", "w", "<init>", "(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;)V", "Lcom/google/android/filament/utils/Float3;", "right", "up", "forward", "position", "(Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;Lcom/google/android/filament/utils/Float3;)V", NBSSpanMetricUnit.Minute, "(Lcom/google/android/filament/utils/Mat4;)V", "Companion", "filament-utils-android_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class Mat4 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Companion f28664e = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Float4 f28665a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Float4 f28666b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Float4 f28667c;
    public final Float4 d;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/google/android/filament/utils/Mat4$Companion;", "", "filament-utils-android_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public /* synthetic */ Mat4(Float4 float4, Float4 float5, Float4 float6, Float4 float7, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 1) != 0) {
            float4 = new Float4(1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14, null);
        }
        if ((i2 & 2) != 0) {
            float5 = new Float4(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13, null);
        }
        if ((i2 & 4) != 0) {
            float6 = new Float4(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11, null);
        }
        if ((i2 & 8) != 0) {
            float7 = new Float4(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 7, null);
        }
        this(float4, float5, float6, float7);
    }

    public final Quaternion a() {
        Quaternion quaternion;
        Float4 float4 = this.f28665a;
        float f2 = float4.f28643a;
        Float4 float5 = this.f28666b;
        float f3 = float5.f28644b;
        float f4 = float5.f28643a;
        float f5 = float5.f28645c;
        Float4 float6 = this.f28667c;
        float f6 = float6.f28645c;
        float f7 = float6.f28643a;
        float f8 = float6.f28644b;
        float f9 = f2 + f3 + f6;
        if (f9 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            float fSqrt = ((float) Math.sqrt(f9 + 1.0f)) * 2.0f;
            quaternion = new Quaternion((f5 - f8) / fSqrt, (f7 - float4.f28645c) / fSqrt, (float4.f28644b - f4) / fSqrt, fSqrt * 0.25f);
        } else if (f2 > f3 && f2 > f6) {
            float fSqrt2 = ((float) Math.sqrt(((f2 + 1.0f) - f3) - f6)) * 2.0f;
            quaternion = new Quaternion(0.25f * fSqrt2, (f4 + float4.f28644b) / fSqrt2, (f7 + float4.f28645c) / fSqrt2, (f5 - f8) / fSqrt2);
        } else if (f3 > f6) {
            float fSqrt3 = ((float) Math.sqrt(((f3 + 1.0f) - f2) - f6)) * 2.0f;
            quaternion = new Quaternion((f4 + float4.f28644b) / fSqrt3, 0.25f * fSqrt3, (f8 + f5) / fSqrt3, (f7 - float4.f28645c) / fSqrt3);
        } else {
            float fSqrt4 = ((float) Math.sqrt(((f6 + 1.0f) - f2) - f3)) * 2.0f;
            quaternion = new Quaternion((f7 + float4.f28645c) / fSqrt4, (f8 + f5) / fSqrt4, 0.25f * fSqrt4, (float4.f28644b - f4) / fSqrt4);
        }
        return QuaternionKt.b(quaternion);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Mat4)) {
            return false;
        }
        Mat4 mat4 = (Mat4) obj;
        return Intrinsics.c(this.f28665a, mat4.f28665a) && Intrinsics.c(this.f28666b, mat4.f28666b) && Intrinsics.c(this.f28667c, mat4.f28667c) && Intrinsics.c(this.d, mat4.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.f28667c.hashCode() + ((this.f28666b.hashCode() + (this.f28665a.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        Float4 float4 = this.f28665a;
        float f2 = float4.f28643a;
        Float4 float5 = this.f28666b;
        float f3 = float5.f28643a;
        Float4 float6 = this.f28667c;
        float f4 = float6.f28643a;
        Float4 float7 = this.d;
        return StringsKt.b0("\n            |" + f2 + " " + f3 + " " + f4 + " " + float7.f28643a + "|\n            |" + float4.f28644b + " " + float5.f28644b + " " + float6.f28644b + " " + float7.f28644b + "|\n            |" + float4.f28645c + " " + float5.f28645c + " " + float6.f28645c + " " + float7.f28645c + "|\n            |" + float4.d + " " + float5.d + " " + float6.d + " " + float7.d + "|\n            ");
    }

    public Mat4(Float4 float4, Float4 float5, Float4 float6, Float4 float7) {
        float4.getClass();
        float5.getClass();
        float6.getClass();
        float7.getClass();
        this.f28665a = float4;
        this.f28666b = float5;
        this.f28667c = float6;
        this.d = float7;
    }

    public Mat4() {
        this((Float4) null, (Float4) null, (Float4) null, (Float4) null, 15, (DefaultConstructorMarker) null);
    }

    public /* synthetic */ Mat4(Float3 float3, Float3 float4, Float3 float5, Float3 float6, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 8) != 0) {
            float6 = new Float3(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 7, null);
        }
        this(float3, float4, float5, float6);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Mat4(Float3 float3, Float3 float4, Float3 float5, Float3 float6) {
        float3.getClass();
        float4.getClass();
        float5.getClass();
        float6.getClass();
        float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        int i2 = 2;
        DefaultConstructorMarker defaultConstructorMarker = null;
        this(new Float4(float3, f2, i2, defaultConstructorMarker), new Float4(float4, f2, i2, defaultConstructorMarker), new Float4(float5, f2, i2, defaultConstructorMarker), new Float4(float6, 1.0f));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Mat4(Mat4 mat4) {
        this(Float4.a(mat4.f28665a), Float4.a(mat4.f28666b), Float4.a(mat4.f28667c), Float4.a(mat4.d));
        mat4.getClass();
    }
}
