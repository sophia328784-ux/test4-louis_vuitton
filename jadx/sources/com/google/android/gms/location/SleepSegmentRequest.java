package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class SleepSegmentRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SleepSegmentRequest> CREATOR = new zzan();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f31386b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f31387c;

    public SleepSegmentRequest(List list, int i2) {
        this.f31386b = list;
        this.f31387c = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SleepSegmentRequest)) {
            return false;
        }
        SleepSegmentRequest sleepSegmentRequest = (SleepSegmentRequest) obj;
        return Objects.a(this.f31386b, sleepSegmentRequest.f31386b) && this.f31387c == sleepSegmentRequest.f31387c;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31386b, Integer.valueOf(this.f31387c)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        Preconditions.h(parcel);
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.o(parcel, 1, this.f31386b, false);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f31387c);
        SafeParcelWriter.r(iQ, parcel);
    }

    public SleepSegmentRequest(int i2) {
        this(null, i2);
    }
}
