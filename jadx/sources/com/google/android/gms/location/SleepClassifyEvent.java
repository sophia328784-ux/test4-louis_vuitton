package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.fc;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class SleepClassifyEvent extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SleepClassifyEvent> CREATOR = new zzal();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f31375b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f31376c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f31377e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f31378f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f31379h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f31380i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f31381j;

    public SleepClassifyEvent(int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z, int i9) {
        this.f31375b = i2;
        this.f31376c = i3;
        this.d = i4;
        this.f31377e = i5;
        this.f31378f = i6;
        this.g = i7;
        this.f31379h = i8;
        this.f31380i = z;
        this.f31381j = i9;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SleepClassifyEvent)) {
            return false;
        }
        SleepClassifyEvent sleepClassifyEvent = (SleepClassifyEvent) obj;
        return this.f31375b == sleepClassifyEvent.f31375b && this.f31376c == sleepClassifyEvent.f31376c;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f31375b), Integer.valueOf(this.f31376c)});
    }

    public final String toString() {
        int i2 = this.f31375b;
        int length = String.valueOf(i2).length();
        int i3 = this.f31376c;
        int length2 = String.valueOf(i3).length();
        int i4 = this.d;
        int length3 = String.valueOf(i4).length();
        int i5 = this.f31377e;
        StringBuilder sb = new StringBuilder(length + 6 + length2 + 8 + length3 + 7 + String.valueOf(i5).length());
        fc.x(i2, i3, " Conf:", " Motion:", sb);
        sb.append(i4);
        sb.append(" Light:");
        sb.append(i5);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        Preconditions.h(parcel);
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f31375b);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f31376c);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeInt(this.d);
        SafeParcelWriter.p(parcel, 4, 4);
        parcel.writeInt(this.f31377e);
        SafeParcelWriter.p(parcel, 5, 4);
        parcel.writeInt(this.f31378f);
        SafeParcelWriter.p(parcel, 6, 4);
        parcel.writeInt(this.g);
        SafeParcelWriter.p(parcel, 7, 4);
        parcel.writeInt(this.f31379h);
        SafeParcelWriter.p(parcel, 8, 4);
        parcel.writeInt(this.f31380i ? 1 : 0);
        SafeParcelWriter.p(parcel, 9, 4);
        parcel.writeInt(this.f31381j);
        SafeParcelWriter.r(iQ, parcel);
    }
}
