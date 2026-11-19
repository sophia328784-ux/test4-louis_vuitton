package com.google.android.gms.maps;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.maps.internal.zza;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLngBounds;

/* JADX INFO: loaded from: classes2.dex */
public final class zzac implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        int iT = 0;
        int iT2 = 0;
        byte bN = -1;
        byte bN2 = -1;
        CameraPosition cameraPosition = null;
        byte bN3 = -1;
        byte bN4 = -1;
        byte bN5 = -1;
        byte bN6 = -1;
        byte bN7 = -1;
        byte bN8 = -1;
        byte bN9 = -1;
        byte bN10 = -1;
        byte bN11 = -1;
        Float fR = null;
        Float fR2 = null;
        LatLngBounds latLngBounds = null;
        byte bN12 = -1;
        Integer numU = null;
        String strG = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 2:
                    bN = SafeParcelReader.n(i2, parcel);
                    break;
                case 3:
                    bN2 = SafeParcelReader.n(i2, parcel);
                    break;
                case 4:
                    iT = SafeParcelReader.t(i2, parcel);
                    break;
                case 5:
                    cameraPosition = (CameraPosition) SafeParcelReader.f(parcel, i2, CameraPosition.CREATOR);
                    break;
                case 6:
                    bN3 = SafeParcelReader.n(i2, parcel);
                    break;
                case 7:
                    bN4 = SafeParcelReader.n(i2, parcel);
                    break;
                case '\b':
                    bN5 = SafeParcelReader.n(i2, parcel);
                    break;
                case '\t':
                    bN6 = SafeParcelReader.n(i2, parcel);
                    break;
                case '\n':
                    bN7 = SafeParcelReader.n(i2, parcel);
                    break;
                case 11:
                    bN8 = SafeParcelReader.n(i2, parcel);
                    break;
                case '\f':
                    bN9 = SafeParcelReader.n(i2, parcel);
                    break;
                case '\r':
                case 22:
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
                case 14:
                    bN10 = SafeParcelReader.n(i2, parcel);
                    break;
                case 15:
                    bN11 = SafeParcelReader.n(i2, parcel);
                    break;
                case 16:
                    fR = SafeParcelReader.r(i2, parcel);
                    break;
                case 17:
                    fR2 = SafeParcelReader.r(i2, parcel);
                    break;
                case 18:
                    latLngBounds = (LatLngBounds) SafeParcelReader.f(parcel, i2, LatLngBounds.CREATOR);
                    break;
                case 19:
                    bN12 = SafeParcelReader.n(i2, parcel);
                    break;
                case 20:
                    numU = SafeParcelReader.u(i2, parcel);
                    break;
                case 21:
                    strG = SafeParcelReader.g(i2, parcel);
                    break;
                case 23:
                    iT2 = SafeParcelReader.t(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        GoogleMapOptions googleMapOptions = new GoogleMapOptions();
        googleMapOptions.d = -1;
        googleMapOptions.o = null;
        googleMapOptions.p = null;
        googleMapOptions.q = null;
        googleMapOptions.s = null;
        googleMapOptions.t = null;
        googleMapOptions.f31408b = zza.b(bN);
        googleMapOptions.f31409c = zza.b(bN2);
        googleMapOptions.d = iT;
        googleMapOptions.f31410e = cameraPosition;
        googleMapOptions.f31411f = zza.b(bN3);
        googleMapOptions.g = zza.b(bN4);
        googleMapOptions.f31412h = zza.b(bN5);
        googleMapOptions.f31413i = zza.b(bN6);
        googleMapOptions.f31414j = zza.b(bN7);
        googleMapOptions.f31415k = zza.b(bN8);
        googleMapOptions.l = zza.b(bN9);
        googleMapOptions.m = zza.b(bN10);
        googleMapOptions.n = zza.b(bN11);
        googleMapOptions.o = fR;
        googleMapOptions.p = fR2;
        googleMapOptions.q = latLngBounds;
        googleMapOptions.r = zza.b(bN12);
        googleMapOptions.s = numU;
        googleMapOptions.t = strG;
        googleMapOptions.u = iT2;
        return googleMapOptions;
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new GoogleMapOptions[i2];
    }
}
