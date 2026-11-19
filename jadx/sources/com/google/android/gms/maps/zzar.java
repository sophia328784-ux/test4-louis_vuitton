package com.google.android.gms.maps;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.maps.internal.zza;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
import com.google.android.gms.maps.model.StreetViewSource;

/* JADX INFO: loaded from: classes2.dex */
public final class zzar implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        StreetViewPanoramaCamera streetViewPanoramaCamera = null;
        LatLng latLng = null;
        Integer numU = null;
        StreetViewSource streetViewSource = null;
        byte bN = 0;
        byte bN2 = 0;
        byte bN3 = 0;
        byte bN4 = 0;
        byte bN5 = 0;
        String strG = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 2:
                    streetViewPanoramaCamera = (StreetViewPanoramaCamera) SafeParcelReader.f(parcel, i2, StreetViewPanoramaCamera.CREATOR);
                    break;
                case 3:
                    strG = SafeParcelReader.g(i2, parcel);
                    break;
                case 4:
                    latLng = (LatLng) SafeParcelReader.f(parcel, i2, LatLng.CREATOR);
                    break;
                case 5:
                    numU = SafeParcelReader.u(i2, parcel);
                    break;
                case 6:
                    bN = SafeParcelReader.n(i2, parcel);
                    break;
                case 7:
                    bN2 = SafeParcelReader.n(i2, parcel);
                    break;
                case '\b':
                    bN3 = SafeParcelReader.n(i2, parcel);
                    break;
                case '\t':
                    bN4 = SafeParcelReader.n(i2, parcel);
                    break;
                case '\n':
                    bN5 = SafeParcelReader.n(i2, parcel);
                    break;
                case 11:
                    streetViewSource = (StreetViewSource) SafeParcelReader.f(parcel, i2, StreetViewSource.CREATOR);
                    break;
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        StreetViewPanoramaOptions streetViewPanoramaOptions = new StreetViewPanoramaOptions();
        Boolean bool = Boolean.TRUE;
        streetViewPanoramaOptions.f31419f = bool;
        streetViewPanoramaOptions.g = bool;
        streetViewPanoramaOptions.f31420h = bool;
        streetViewPanoramaOptions.f31421i = bool;
        streetViewPanoramaOptions.f31423k = StreetViewSource.f31501c;
        streetViewPanoramaOptions.f31416b = streetViewPanoramaCamera;
        streetViewPanoramaOptions.d = latLng;
        streetViewPanoramaOptions.f31418e = numU;
        streetViewPanoramaOptions.f31417c = strG;
        streetViewPanoramaOptions.f31419f = zza.b(bN);
        streetViewPanoramaOptions.g = zza.b(bN2);
        streetViewPanoramaOptions.f31420h = zza.b(bN3);
        streetViewPanoramaOptions.f31421i = zza.b(bN4);
        streetViewPanoramaOptions.f31422j = zza.b(bN5);
        streetViewPanoramaOptions.f31423k = streetViewSource;
        return streetViewPanoramaOptions;
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new StreetViewPanoramaOptions[i2];
    }
}
