package com.google.android.filament.utils;

import defpackage.d21;
import defpackage.md;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007B\u0011\b\u0016\u0012\u0006\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\tB\u001b\b\u0016\u0012\u0006\u0010\b\u001a\u00020\n\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u000bB\u0011\b\u0016\u0012\u0006\u0010\b\u001a\u00020\u0000¢\u0006\u0004\b\u0006\u0010\f¨\u0006\r"}, d2 = {"Lcom/google/android/filament/utils/Float3;", "", "", "x", "y", "z", "<init>", "(FFF)V", "v", "(F)V", "Lcom/google/android/filament/utils/Float2;", "(Lcom/google/android/filament/utils/Float2;F)V", "(Lcom/google/android/filament/utils/Float3;)V", "filament-utils-android_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class Float3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f28639a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f28640b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f28641c;

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f28642a;

        static {
            int[] iArr = new int[VectorComponent.values().length];
            try {
                iArr[VectorComponent.X.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[VectorComponent.R.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[VectorComponent.S.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[VectorComponent.Y.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[VectorComponent.G.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[VectorComponent.T.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[VectorComponent.Z.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[VectorComponent.B.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[VectorComponent.P.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            f28642a = iArr;
        }
    }

    public /* synthetic */ Float3(float f2, float f3, float f4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0.0f : f2, (i2 & 2) != 0 ? 0.0f : f3, (i2 & 4) != 0 ? 0.0f : f4);
    }

    public final float a(VectorComponent vectorComponent) {
        vectorComponent.getClass();
        switch (WhenMappings.f28642a[vectorComponent.ordinal()]) {
            case 1:
            case 2:
            case 3:
                return this.f28639a;
            case 4:
            case 5:
            case 6:
                return this.f28640b;
            case 7:
            case 8:
            case 9:
                return this.f28641c;
            default:
                md.n("index must be X, Y, Z, R, G, B, S, T or P");
                return Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Float3)) {
            return false;
        }
        Float3 float3 = (Float3) obj;
        return Float.compare(this.f28639a, float3.f28639a) == 0 && Float.compare(this.f28640b, float3.f28640b) == 0 && Float.compare(this.f28641c, float3.f28641c) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.f28641c) + pq0.b(Float.hashCode(this.f28639a) * 31, 31, this.f28640b);
    }

    public final String toString() {
        float f2 = this.f28639a;
        float f3 = this.f28640b;
        float f4 = this.f28641c;
        StringBuilder sb = new StringBuilder("Float3(x=");
        sb.append(f2);
        sb.append(", y=");
        sb.append(f3);
        sb.append(", z=");
        return d21.e(f4, ")", sb);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Float3(Float2 float2, float f2) {
        this(float2.f28637a, float2.f28638b, f2);
        float2.getClass();
    }

    public Float3(float f2, float f3, float f4) {
        this.f28639a = f2;
        this.f28640b = f3;
        this.f28641c = f4;
    }

    public Float3() {
        this(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 7, null);
    }

    public Float3(float f2) {
        this(f2, f2, f2);
    }

    public /* synthetic */ Float3(Float2 float2, float f2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(float2, (i2 & 2) != 0 ? Call.Parameters.DEFAULT_CAMERA_ZOOM : f2);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Float3(Float3 float3) {
        this(float3.f28639a, float3.f28640b, float3.f28641c);
        float3.getClass();
    }
}
