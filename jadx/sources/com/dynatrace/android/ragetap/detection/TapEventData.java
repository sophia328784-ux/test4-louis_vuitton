package com.dynatrace.android.ragetap.detection;

import defpackage.fc;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class TapEventData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f27711a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f27712b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f27713c;
    public final long d;

    public TapEventData(float f2, float f3, long j2, long j3) {
        this.f27711a = f2;
        this.f27712b = f3;
        this.f27713c = j2;
        this.d = j3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            TapEventData tapEventData = (TapEventData) obj;
            if (Float.compare(tapEventData.f27711a, this.f27711a) == 0 && Float.compare(tapEventData.f27712b, this.f27712b) == 0 && this.f27713c == tapEventData.f27713c && this.d == tapEventData.d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        float f2 = this.f27711a;
        int iFloatToIntBits = (f2 != Call.Parameters.DEFAULT_CAMERA_ZOOM ? Float.floatToIntBits(f2) : 0) * 31;
        float f3 = this.f27712b;
        int iFloatToIntBits2 = f3 != Call.Parameters.DEFAULT_CAMERA_ZOOM ? Float.floatToIntBits(f3) : 0;
        long j2 = this.f27713c;
        int i2 = (((iFloatToIntBits + iFloatToIntBits2) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        long j3 = this.d;
        return i2 + ((int) (j3 ^ (j3 >>> 32)));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TapEventData{x=");
        sb.append(this.f27711a);
        sb.append(", y=");
        sb.append(this.f27712b);
        sb.append(", timestamp=");
        sb.append(this.f27713c);
        sb.append(", eventTime=");
        return fc.k(sb, this.d, '}');
    }
}
