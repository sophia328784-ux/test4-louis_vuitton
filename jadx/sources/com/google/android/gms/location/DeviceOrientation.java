package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.ct0;
import defpackage.fc;
import defpackage.md;
import java.util.Arrays;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class DeviceOrientation extends AbstractSafeParcelable {
    public static final Parcelable.Creator<DeviceOrientation> CREATOR = new zzl();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float[] f31327b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f31328c;
    public final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f31329e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final byte f31330f;
    public final float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f31331h;

    public DeviceOrientation(float[] fArr, float f2, float f3, long j2, byte b2, float f4, float f5) {
        if (!(fArr != null && fArr.length == 4)) {
            md.n("Input attitude array should be of length 4.");
            throw null;
        }
        if (!((Float.isNaN(fArr[0]) || Float.isNaN(fArr[1]) || Float.isNaN(fArr[2]) || Float.isNaN(fArr[3])) ? false : true)) {
            md.n("Input attitude cannot contain NaNs.");
            throw null;
        }
        if (j2 < 0) {
            ct0.c();
            throw null;
        }
        this.f31327b = fArr;
        float f6 = f2 % 360.0f;
        this.f31328c = f6 < Call.Parameters.DEFAULT_CAMERA_ZOOM ? f6 + 360.0f : f6;
        this.d = Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, Math.min(f3, 180.0f));
        this.g = f4;
        this.f31331h = Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, Math.min(f5, 180.0f));
        this.f31329e = j2;
        this.f31330f = (byte) (((byte) (((byte) (b2 | 16)) | 4)) | 8);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof DeviceOrientation) {
                DeviceOrientation deviceOrientation = (DeviceOrientation) obj;
                byte b2 = deviceOrientation.f31330f;
                byte b3 = this.f31330f;
                boolean z = ((b3 & 32) != 0) == ((b2 & 32) != 0) && ((b3 & 32) == 0 || Float.compare(this.g, deviceOrientation.g) == 0);
                boolean z2 = ((b3 & 64) != 0) == ((b2 & 64) != 0) && ((b3 & 64) == 0 || Float.compare(this.f31331h, deviceOrientation.f31331h) == 0);
                if (Float.compare(this.f31328c, deviceOrientation.f31328c) != 0 || Float.compare(this.d, deviceOrientation.d) != 0 || !z || !z2 || this.f31329e != deviceOrientation.f31329e || !Arrays.equals(this.f31327b, deviceOrientation.f31327b)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f31328c), Float.valueOf(this.d), Float.valueOf(this.f31331h), Long.valueOf(this.f31329e), this.f31327b, Byte.valueOf(this.f31330f)});
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("DeviceOrientation[attitude=");
        sb.append(Arrays.toString(this.f31327b));
        sb.append(", headingDegrees=");
        sb.append(this.f31328c);
        sb.append(", headingErrorDegrees=");
        sb.append(this.d);
        if ((this.f31330f & 64) != 0) {
            sb.append(", conservativeHeadingErrorDegrees=");
            sb.append(this.f31331h);
        }
        sb.append(", elapsedRealtimeNs=");
        return fc.k(sb, this.f31329e, ']');
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        float[] fArr = (float[]) this.f31327b.clone();
        int iQ2 = SafeParcelWriter.q(1, parcel);
        parcel.writeFloatArray(fArr);
        SafeParcelWriter.r(iQ2, parcel);
        SafeParcelWriter.p(parcel, 4, 4);
        parcel.writeFloat(this.f31328c);
        SafeParcelWriter.p(parcel, 5, 4);
        parcel.writeFloat(this.d);
        SafeParcelWriter.p(parcel, 6, 8);
        parcel.writeLong(this.f31329e);
        SafeParcelWriter.p(parcel, 7, 4);
        parcel.writeInt(this.f31330f);
        SafeParcelWriter.p(parcel, 8, 4);
        parcel.writeFloat(this.g);
        SafeParcelWriter.p(parcel, 9, 4);
        parcel.writeFloat(this.f31331h);
        SafeParcelWriter.r(iQ, parcel);
    }
}
