package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzu implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        ArrayList arrayListK = null;
        Cap cap = null;
        Cap cap2 = null;
        ArrayList arrayListK2 = null;
        ArrayList arrayListK3 = null;
        int iT = 0;
        boolean zM = false;
        boolean zM2 = false;
        boolean zM3 = false;
        int iT2 = 0;
        float fQ = 0.0f;
        float fQ2 = 0.0f;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 2:
                    arrayListK = SafeParcelReader.k(parcel, i2, LatLng.CREATOR);
                    break;
                case 3:
                    fQ = SafeParcelReader.q(i2, parcel);
                    break;
                case 4:
                    iT = SafeParcelReader.t(i2, parcel);
                    break;
                case 5:
                    fQ2 = SafeParcelReader.q(i2, parcel);
                    break;
                case 6:
                    zM = SafeParcelReader.m(i2, parcel);
                    break;
                case 7:
                    zM2 = SafeParcelReader.m(i2, parcel);
                    break;
                case '\b':
                    zM3 = SafeParcelReader.m(i2, parcel);
                    break;
                case '\t':
                    cap = (Cap) SafeParcelReader.f(parcel, i2, Cap.CREATOR);
                    break;
                case '\n':
                    cap2 = (Cap) SafeParcelReader.f(parcel, i2, Cap.CREATOR);
                    break;
                case 11:
                    iT2 = SafeParcelReader.t(i2, parcel);
                    break;
                case '\f':
                    arrayListK2 = SafeParcelReader.k(parcel, i2, PatternItem.CREATOR);
                    break;
                case '\r':
                    arrayListK3 = SafeParcelReader.k(parcel, i2, StyleSpan.CREATOR);
                    break;
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new PolylineOptions(arrayListK, fQ, iT, fQ2, zM, zM2, zM3, cap, cap2, iT2, arrayListK2, arrayListK3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new PolylineOptions[i2];
    }
}
