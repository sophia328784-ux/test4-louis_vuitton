package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.tr;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class zzap extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzap> CREATOR = new zzaq();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f31392b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f31393c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f31394e;

    public zzap(int i2, int i3, int i4, int i5) {
        Preconditions.j("Start hour must be in range [0, 23].", i2 >= 0 && i2 <= 23);
        Preconditions.j("Start minute must be in range [0, 59].", i3 >= 0 && i3 <= 59);
        Preconditions.j("End hour must be in range [0, 23].", i4 >= 0 && i4 <= 23);
        Preconditions.j("End minute must be in range [0, 59].", i5 >= 0 && i5 <= 59);
        Preconditions.j("Parameters can't be all 0.", ((i2 + i3) + i4) + i5 > 0);
        this.f31392b = i2;
        this.f31393c = i3;
        this.d = i4;
        this.f31394e = i5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzap)) {
            return false;
        }
        zzap zzapVar = (zzap) obj;
        return this.f31392b == zzapVar.f31392b && this.f31393c == zzapVar.f31393c && this.d == zzapVar.d && this.f31394e == zzapVar.f31394e;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f31392b), Integer.valueOf(this.f31393c), Integer.valueOf(this.d), Integer.valueOf(this.f31394e)});
    }

    public final String toString() {
        int i2 = this.f31392b;
        int length = String.valueOf(i2).length();
        int i3 = this.f31393c;
        int length2 = String.valueOf(i3).length();
        int i4 = this.d;
        int length3 = String.valueOf(i4).length();
        int i5 = this.f31394e;
        StringBuilder sb = new StringBuilder(length + 50 + length2 + 10 + length3 + 12 + String.valueOf(i5).length() + 1);
        tr.w(i2, i3, "UserPreferredSleepWindow [startHour=", ", startMinute=", sb);
        tr.w(i4, i5, ", endHour=", ", endMinute=", sb);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        Preconditions.h(parcel);
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f31392b);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f31393c);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeInt(this.d);
        SafeParcelWriter.p(parcel, 4, 4);
        parcel.writeInt(this.f31394e);
        SafeParcelWriter.r(iQ, parcel);
    }
}
