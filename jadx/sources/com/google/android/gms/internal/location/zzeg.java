package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ClientIdentity;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.location.LocationRequest;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzeg implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        long jV = Long.MAX_VALUE;
        LocationRequest locationRequest = null;
        ArrayList arrayListK = null;
        boolean zM = false;
        boolean zM2 = false;
        boolean zM3 = false;
        boolean zM4 = false;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 1) {
                locationRequest = (LocationRequest) SafeParcelReader.f(parcel, i2, LocationRequest.CREATOR);
            } else if (c2 == 5) {
                arrayListK = SafeParcelReader.k(parcel, i2, ClientIdentity.CREATOR);
            } else if (c2 == '\b') {
                zM = SafeParcelReader.m(i2, parcel);
            } else if (c2 != '\t') {
                switch (c2) {
                    case 11:
                        zM3 = SafeParcelReader.m(i2, parcel);
                        break;
                    case '\f':
                        zM4 = SafeParcelReader.m(i2, parcel);
                        break;
                    case '\r':
                        SafeParcelReader.g(i2, parcel);
                        break;
                    case 14:
                        jV = SafeParcelReader.v(i2, parcel);
                        break;
                    default:
                        SafeParcelReader.y(i2, parcel);
                        break;
                }
            } else {
                zM2 = SafeParcelReader.m(i2, parcel);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new zzef(locationRequest, arrayListK, zM, zM2, zM3, zM4, jV);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new zzef[i2];
    }
}
