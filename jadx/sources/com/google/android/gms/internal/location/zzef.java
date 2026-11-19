package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.WorkSource;
import com.google.android.gms.common.internal.ClientIdentity;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.util.WorkSourceUtil;
import com.google.android.gms.location.LocationRequest;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class zzef extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzef> CREATOR = new zzeg();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LocationRequest f30242b;

    public zzef(LocationRequest locationRequest, ArrayList arrayList, boolean z, boolean z2, boolean z3, boolean z4, long j2) {
        WorkSource workSource;
        LocationRequest.Builder builder = new LocationRequest.Builder(locationRequest);
        if (arrayList != null) {
            if (arrayList.isEmpty()) {
                workSource = null;
            } else {
                workSource = new WorkSource();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ClientIdentity clientIdentity = (ClientIdentity) it.next();
                    WorkSourceUtil.a(workSource, clientIdentity.f29162b, clientIdentity.f29163c);
                }
            }
            builder.m = workSource;
        }
        boolean z5 = true;
        if (z) {
            builder.f31360j = 1;
        }
        if (z2) {
            builder.f31361k = 2;
        }
        if (z3) {
            builder.l = true;
        }
        if (z4) {
            builder.f31358h = true;
        }
        if (j2 != Long.MAX_VALUE) {
            if (j2 != -1 && j2 < 0) {
                z5 = false;
            }
            Preconditions.b(z5, "maxUpdateAgeMillis must be greater than or equal to 0, or IMPLICIT_MAX_UPDATE_AGE");
            builder.f31359i = j2;
        }
        this.f30242b = builder.a();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzef) {
            return Objects.a(this.f30242b, ((zzef) obj).f30242b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f30242b.hashCode();
    }

    public final String toString() {
        return this.f30242b.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.j(parcel, 1, this.f30242b, i2, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
