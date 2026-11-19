package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class GeofencingRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GeofencingRequest> CREATOR = new zzo();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f31336b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f31337c;
    public final String d;

    public @interface InitialTrigger {
    }

    public GeofencingRequest(int i2, String str, ArrayList arrayList) {
        this.f31336b = arrayList;
        this.f31337c = i2;
        this.d = str;
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.f31336b);
        int length = strValueOf.length();
        int i2 = this.f31337c;
        StringBuilder sb = new StringBuilder(length + 45 + String.valueOf(i2).length() + 1);
        sb.append("GeofencingRequest[geofences=");
        sb.append(strValueOf);
        sb.append(", initialTrigger=");
        sb.append(i2);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.o(parcel, 1, this.f31336b, false);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f31337c);
        SafeParcelWriter.k(parcel, 4, this.d, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
