package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class SleepSegmentEvent extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SleepSegmentEvent> CREATOR = new zzam();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f31382b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f31383c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f31384e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f31385f;

    public SleepSegmentEvent(long j2, long j3, int i2, int i3, int i4) {
        Preconditions.b(j2 <= j3, "endTimeMillis must be greater than or equal to startTimeMillis");
        this.f31382b = j2;
        this.f31383c = j3;
        this.d = i2;
        this.f31384e = i3;
        this.f31385f = i4;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof SleepSegmentEvent) {
            SleepSegmentEvent sleepSegmentEvent = (SleepSegmentEvent) obj;
            if (this.f31382b == sleepSegmentEvent.f31382b && this.f31383c == sleepSegmentEvent.f31383c && this.d == sleepSegmentEvent.d && this.f31384e == sleepSegmentEvent.f31384e && this.f31385f == sleepSegmentEvent.f31385f) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f31382b), Long.valueOf(this.f31383c), Integer.valueOf(this.d)});
    }

    public final String toString() {
        long j2 = this.f31382b;
        int length = String.valueOf(j2).length();
        long j3 = this.f31383c;
        int length2 = String.valueOf(j3).length();
        int i2 = this.d;
        StringBuilder sb = new StringBuilder(length + 24 + length2 + 9 + String.valueOf(i2).length());
        sb.append("startMillis=");
        sb.append(j2);
        sb.append(", endMillis=");
        sb.append(j3);
        sb.append(", status=");
        sb.append(i2);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        Preconditions.h(parcel);
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 8);
        parcel.writeLong(this.f31382b);
        SafeParcelWriter.p(parcel, 2, 8);
        parcel.writeLong(this.f31383c);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeInt(this.d);
        SafeParcelWriter.p(parcel, 4, 4);
        parcel.writeInt(this.f31384e);
        SafeParcelWriter.p(parcel, 5, 4);
        parcel.writeInt(this.f31385f);
        SafeParcelWriter.r(iQ, parcel);
    }
}
