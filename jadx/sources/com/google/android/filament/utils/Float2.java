package com.google.android.filament.utils;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006B\u0011\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\bB\u0011\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0000¢\u0006\u0004\b\u0005\u0010\t¨\u0006\n"}, d2 = {"Lcom/google/android/filament/utils/Float2;", "", "", "x", "y", "<init>", "(FF)V", "v", "(F)V", "(Lcom/google/android/filament/utils/Float2;)V", "filament-utils-android_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class Float2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f28637a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f28638b;

    public /* synthetic */ Float2(float f2, float f3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0.0f : f2, (i2 & 2) != 0 ? 0.0f : f3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Float2)) {
            return false;
        }
        Float2 float2 = (Float2) obj;
        return Float.compare(this.f28637a, float2.f28637a) == 0 && Float.compare(this.f28638b, float2.f28638b) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.f28638b) + (Float.hashCode(this.f28637a) * 31);
    }

    public final String toString() {
        return "Float2(x=" + this.f28637a + ", y=" + this.f28638b + ")";
    }

    public Float2(float f2, float f3) {
        this.f28637a = f2;
        this.f28638b = f3;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Float2() {
        float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this(f2, f2, 3, null);
    }

    public Float2(float f2) {
        this(f2, f2);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Float2(Float2 float2) {
        this(float2.f28637a, float2.f28638b);
        float2.getClass();
    }
}
