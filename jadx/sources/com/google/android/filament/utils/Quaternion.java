package com.google.android.filament.utils;

import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0010B/\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bB\u001b\b\u0016\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\u000bB\u0011\b\u0016\u0012\u0006\u0010\n\u001a\u00020\f¢\u0006\u0004\b\u0007\u0010\rB\u0011\b\u0016\u0012\u0006\u0010\u000e\u001a\u00020\u0000¢\u0006\u0004\b\u0007\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcom/google/android/filament/utils/Quaternion;", "", "", "x", "y", "z", "w", "<init>", "(FFFF)V", "Lcom/google/android/filament/utils/Float3;", "v", "(Lcom/google/android/filament/utils/Float3;F)V", "Lcom/google/android/filament/utils/Float4;", "(Lcom/google/android/filament/utils/Float4;)V", "q", "(Lcom/google/android/filament/utils/Quaternion;)V", "Companion", "filament-utils-android_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class Quaternion {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Companion f28668e = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f28669a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f28670b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f28671c;
    public final float d;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/google/android/filament/utils/Quaternion$Companion;", "", "filament-utils-android_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {

        @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f28672a;

            static {
                int[] iArr = new int[RotationsOrder.values().length];
                try {
                    iArr[RotationsOrder.XZY.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[RotationsOrder.XYZ.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[RotationsOrder.YXZ.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[RotationsOrder.YZX.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[RotationsOrder.ZYX.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr[RotationsOrder.ZXY.ordinal()] = 6;
                } catch (NoSuchFieldError unused6) {
                }
                f28672a = iArr;
            }
        }

        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static Quaternion a(Float3 float3, float f2) {
            double d = f2 * 0.017453292f * 0.5f;
            float fSin = (float) Math.sin(d);
            float f3 = float3.f28639a;
            float f4 = float3.f28640b;
            float f5 = (f4 * f4) + (f3 * f3);
            float f6 = float3.f28641c;
            float fSqrt = 1.0f / ((float) Math.sqrt((f6 * f6) + f5));
            Float3 float4 = new Float3(float3.f28639a * fSqrt, float3.f28640b * fSqrt, float3.f28641c * fSqrt);
            return new Quaternion(new Float3(float4.f28639a * fSin, float4.f28640b * fSin, fSin * float4.f28641c), (float) Math.cos(d));
        }
    }

    public /* synthetic */ Quaternion(float f2, float f3, float f4, float f5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0.0f : f2, (i2 & 2) != 0 ? 0.0f : f3, (i2 & 4) != 0 ? 0.0f : f4, (i2 & 8) != 0 ? 1.0f : f5);
    }

    public final Mat4 a() {
        Quaternion quaternionB = QuaternionKt.b(this);
        float f2 = quaternionB.f28670b;
        float f3 = f2 * f2;
        float f4 = quaternionB.f28671c;
        float f5 = f4 * f4;
        float f6 = quaternionB.f28669a;
        float f7 = f6 * f2;
        float f8 = quaternionB.d;
        float f9 = f4 * f8;
        float f10 = f6 * f4;
        float f11 = f2 * f8;
        Float4 float4 = new Float4(1.0f - ((f5 + f3) * 2.0f), (f9 + f7) * 2.0f, (f10 - f11) * 2.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8, null);
        float f12 = f6 * f6;
        float f13 = f2 * f4;
        float f14 = f6 * f8;
        int i2 = 8;
        DefaultConstructorMarker defaultConstructorMarker = null;
        float f15 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        return new Mat4(float4, new Float4((f7 - f9) * 2.0f, 1.0f - ((f5 + f12) * 2.0f), (f14 + f13) * 2.0f, f15, i2, defaultConstructorMarker), new Float4((f11 + f10) * 2.0f, (f13 - f14) * 2.0f, 1.0f - ((f3 + f12) * 2.0f), f15, i2, defaultConstructorMarker), (Float4) null, 8, (DefaultConstructorMarker) null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Quaternion)) {
            return false;
        }
        Quaternion quaternion = (Quaternion) obj;
        return Float.compare(this.f28669a, quaternion.f28669a) == 0 && Float.compare(this.f28670b, quaternion.f28670b) == 0 && Float.compare(this.f28671c, quaternion.f28671c) == 0 && Float.compare(this.d, quaternion.d) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.d) + pq0.b(pq0.b(Float.hashCode(this.f28669a) * 31, 31, this.f28670b), 31, this.f28671c);
    }

    public final String toString() {
        return "Quaternion(x=" + this.f28669a + ", y=" + this.f28670b + ", z=" + this.f28671c + ", w=" + this.d + ")";
    }

    public Quaternion(float f2, float f3, float f4, float f5) {
        this.f28669a = f2;
        this.f28670b = f3;
        this.f28671c = f4;
        this.d = f5;
    }

    public Quaternion() {
        this(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 15, null);
    }

    public /* synthetic */ Quaternion(Float3 float3, float f2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(float3, (i2 & 2) != 0 ? 1.0f : f2);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Quaternion(Quaternion quaternion) {
        this(quaternion.f28669a, quaternion.f28670b, quaternion.f28671c, quaternion.d);
        quaternion.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Quaternion(Float3 float3, float f2) {
        this(float3.f28639a, float3.f28640b, float3.f28641c, f2);
        float3.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Quaternion(Float4 float4) {
        this(float4.f28643a, float4.f28644b, float4.f28645c, float4.d);
        float4.getClass();
    }
}
