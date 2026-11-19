package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.location.Geofence;
import defpackage.d21;
import defpackage.md;
import java.util.Locale;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public final class zzej extends AbstractSafeParcelable implements Geofence {
    public static final Parcelable.Creator<zzej> CREATOR = new zzek();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f30248b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f30249c;
    public final short d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final double f30250e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final double f30251f;
    public final float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f30252h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f30253i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f30254j;

    public zzej(String str, int i2, short s, double d, double d2, float f2, long j2, int i3, int i4) {
        if (str == null) {
            md.n("requestId is null");
            throw null;
        }
        if (f2 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            StringBuilder sb = new StringBuilder(String.valueOf(f2).length() + 16);
            sb.append("invalid radius: ");
            sb.append(f2);
            throw new IllegalArgumentException(sb.toString());
        }
        if (d > 90.0d || d < -90.0d) {
            StringBuilder sb2 = new StringBuilder(String.valueOf(d).length() + 18);
            sb2.append("invalid latitude: ");
            sb2.append(d);
            throw new IllegalArgumentException(sb2.toString());
        }
        if (d2 > 180.0d || d2 < -180.0d) {
            StringBuilder sb3 = new StringBuilder(String.valueOf(d2).length() + 19);
            sb3.append("invalid longitude: ");
            sb3.append(d2);
            throw new IllegalArgumentException(sb3.toString());
        }
        int i5 = i2 & 15;
        if (i5 == 0) {
            md.n(d21.f(i2, "No supported transition specified: ", new StringBuilder(String.valueOf(i2).length() + 35)));
            throw null;
        }
        this.d = s;
        this.f30248b = str;
        this.f30250e = d;
        this.f30251f = d2;
        this.g = f2;
        this.f30249c = j2;
        this.f30252h = i5;
        this.f30253i = i3;
        this.f30254j = i4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzej) {
            zzej zzejVar = (zzej) obj;
            if (this.g == zzejVar.g && this.f30250e == zzejVar.f30250e && this.f30251f == zzejVar.f30251f && this.d == zzejVar.d && this.f30252h == zzejVar.f30252h) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long jDoubleToLongBits = Double.doubleToLongBits(this.f30250e);
        long jDoubleToLongBits2 = Double.doubleToLongBits(this.f30251f);
        return ((((Float.floatToIntBits(this.g) + ((((((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32))) + 31) * 31) + ((int) (jDoubleToLongBits2 ^ (jDoubleToLongBits2 >>> 32)))) * 31)) * 31) + this.d) * 31) + this.f30252h;
    }

    public final String toString() {
        String str;
        Locale locale = Locale.US;
        short s = this.d;
        if (s != -1) {
            str = s != 1 ? "UNKNOWN" : "CIRCLE";
        } else {
            str = "INVALID";
        }
        return String.format(locale, "Geofence[%s id:%s transitions:%d %.6f, %.6f %.0fm, resp=%ds, dwell=%dms, @%d]", str, this.f30248b.replaceAll("\\p{C}", "?"), Integer.valueOf(this.f30252h), Double.valueOf(this.f30250e), Double.valueOf(this.f30251f), Float.valueOf(this.g), Integer.valueOf(this.f30253i / 1000), Integer.valueOf(this.f30254j), Long.valueOf(this.f30249c));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.k(parcel, 1, this.f30248b, false);
        SafeParcelWriter.p(parcel, 2, 8);
        parcel.writeLong(this.f30249c);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeInt(this.d);
        SafeParcelWriter.p(parcel, 4, 8);
        parcel.writeDouble(this.f30250e);
        SafeParcelWriter.p(parcel, 5, 8);
        parcel.writeDouble(this.f30251f);
        SafeParcelWriter.p(parcel, 6, 4);
        parcel.writeFloat(this.g);
        SafeParcelWriter.p(parcel, 7, 4);
        parcel.writeInt(this.f30252h);
        SafeParcelWriter.p(parcel, 8, 4);
        parcel.writeInt(this.f30253i);
        SafeParcelWriter.p(parcel, 9, 4);
        parcel.writeInt(this.f30254j);
        SafeParcelWriter.r(iQ, parcel);
    }
}
