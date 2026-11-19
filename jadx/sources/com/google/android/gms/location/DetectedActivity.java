package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class DetectedActivity extends AbstractSafeParcelable {
    public static final Parcelable.Creator<DetectedActivity> CREATOR = new zzk();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f31325b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f31326c;

    public DetectedActivity(int i2, int i3) {
        this.f31325b = i2;
        this.f31326c = i3;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof DetectedActivity) {
            DetectedActivity detectedActivity = (DetectedActivity) obj;
            if (this.f31325b == detectedActivity.f31325b && this.f31326c == detectedActivity.f31326c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f31325b), Integer.valueOf(this.f31326c)});
    }

    public final String toString() {
        String string;
        int i2 = this.f31325b;
        if (i2 > 23 || i2 < 0) {
            i2 = 4;
        }
        if (i2 == 0) {
            string = "IN_VEHICLE";
        } else if (i2 == 1) {
            string = "ON_BICYCLE";
        } else if (i2 == 2) {
            string = "ON_FOOT";
        } else if (i2 == 3) {
            string = "STILL";
        } else if (i2 == 4) {
            string = "UNKNOWN";
        } else if (i2 == 5) {
            string = "TILTING";
        } else if (i2 == 7) {
            string = "WALKING";
        } else if (i2 == 8) {
            string = "RUNNING";
        } else if (i2 != 16) {
            string = i2 != 17 ? Integer.toString(i2) : "IN_RAIL_VEHICLE";
        } else {
            string = "IN_ROAD_VEHICLE";
        }
        int length = String.valueOf(string).length();
        int i3 = this.f31326c;
        StringBuilder sb = new StringBuilder(String.valueOf(i3).length() + length + 36 + 1);
        sb.append("DetectedActivity [type=");
        sb.append(string);
        sb.append(", confidence=");
        sb.append(i3);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        Preconditions.h(parcel);
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f31325b);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f31326c);
        SafeParcelWriter.r(iQ, parcel);
    }
}
