package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzc implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        LatLng latLng = null;
        boolean zM = false;
        float fQ = 0.0f;
        float fQ2 = 0.0f;
        double dO = 0.0d;
        ArrayList arrayListK = null;
        int iT = 0;
        int iT2 = 0;
        boolean zM2 = false;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 2:
                    latLng = (LatLng) SafeParcelReader.f(parcel, i2, LatLng.CREATOR);
                    break;
                case 3:
                    dO = SafeParcelReader.o(i2, parcel);
                    break;
                case 4:
                    fQ = SafeParcelReader.q(i2, parcel);
                    break;
                case 5:
                    iT = SafeParcelReader.t(i2, parcel);
                    break;
                case 6:
                    iT2 = SafeParcelReader.t(i2, parcel);
                    break;
                case 7:
                    fQ2 = SafeParcelReader.q(i2, parcel);
                    break;
                case '\b':
                    zM2 = SafeParcelReader.m(i2, parcel);
                    break;
                case '\t':
                    zM = SafeParcelReader.m(i2, parcel);
                    break;
                case '\n':
                    arrayListK = SafeParcelReader.k(parcel, i2, PatternItem.CREATOR);
                    break;
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        CircleOptions circleOptions = new CircleOptions();
        circleOptions.f31430b = latLng;
        circleOptions.f31431c = dO;
        circleOptions.d = fQ;
        circleOptions.f31432e = iT;
        circleOptions.f31433f = iT2;
        circleOptions.g = fQ2;
        circleOptions.f31434h = zM2;
        circleOptions.f31435i = zM;
        circleOptions.f31436j = arrayListK;
        return circleOptions;
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new CircleOptions[i2];
    }
}
