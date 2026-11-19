package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class LocationSettingsRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<LocationSettingsRequest> CREATOR = new zzag();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f31365b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f31366c;
    public final boolean d;

    /* JADX INFO: loaded from: classes3.dex */
    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ArrayList f31367a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f31368b = false;
    }

    public LocationSettingsRequest(ArrayList arrayList, boolean z, boolean z2) {
        this.f31365b = arrayList;
        this.f31366c = z;
        this.d = z2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.o(parcel, 1, Collections.unmodifiableList(this.f31365b), false);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f31366c ? 1 : 0);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeInt(this.d ? 1 : 0);
        SafeParcelWriter.r(iQ, parcel);
    }
}
