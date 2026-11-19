package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.internal.maps.zzbm;

/* JADX INFO: loaded from: classes2.dex */
public final class FeatureLayerOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<FeatureLayerOptions> CREATOR = new zzg();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f31439b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f31440c;

    static {
        int i2 = zzbm.d;
        Object[] objArr = new Object[7];
        objArr[0] = "ADMINISTRATIVE_AREA_LEVEL_1";
        objArr[1] = "ADMINISTRATIVE_AREA_LEVEL_2";
        objArr[2] = "COUNTRY";
        objArr[3] = "LOCALITY";
        objArr[4] = "POSTAL_CODE";
        objArr[5] = "SCHOOL_DISTRICT";
        System.arraycopy(new String[]{"DATASET"}, 0, objArr, 6, 1);
        zzbm.l(7, objArr);
    }

    public FeatureLayerOptions(String str, String str2) {
        this.f31439b = str;
        this.f31440c = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.k(parcel, 1, this.f31439b, false);
        SafeParcelWriter.k(parcel, 2, this.f31440c, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
