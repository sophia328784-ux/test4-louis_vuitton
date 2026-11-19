package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.dynamic.IObjectWrapper;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public final class zzk implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        IBinder iBinderS = null;
        LatLng latLng = null;
        LatLngBounds latLngBounds = null;
        float fQ = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        float fQ2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        float fQ3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        float fQ4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        boolean zM = false;
        float fQ5 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        float fQ6 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        float fQ7 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        boolean zM2 = false;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 2:
                    iBinderS = SafeParcelReader.s(i2, parcel);
                    break;
                case 3:
                    latLng = (LatLng) SafeParcelReader.f(parcel, i2, LatLng.CREATOR);
                    break;
                case 4:
                    fQ = SafeParcelReader.q(i2, parcel);
                    break;
                case 5:
                    fQ2 = SafeParcelReader.q(i2, parcel);
                    break;
                case 6:
                    latLngBounds = (LatLngBounds) SafeParcelReader.f(parcel, i2, LatLngBounds.CREATOR);
                    break;
                case 7:
                    fQ3 = SafeParcelReader.q(i2, parcel);
                    break;
                case '\b':
                    fQ4 = SafeParcelReader.q(i2, parcel);
                    break;
                case '\t':
                    zM = SafeParcelReader.m(i2, parcel);
                    break;
                case '\n':
                    fQ5 = SafeParcelReader.q(i2, parcel);
                    break;
                case 11:
                    fQ6 = SafeParcelReader.q(i2, parcel);
                    break;
                case '\f':
                    fQ7 = SafeParcelReader.q(i2, parcel);
                    break;
                case '\r':
                    zM2 = SafeParcelReader.m(i2, parcel);
                    break;
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        GroundOverlayOptions groundOverlayOptions = new GroundOverlayOptions();
        groundOverlayOptions.f31449i = true;
        groundOverlayOptions.f31450j = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        groundOverlayOptions.f31451k = 0.5f;
        groundOverlayOptions.l = 0.5f;
        groundOverlayOptions.m = false;
        groundOverlayOptions.f31444b = new BitmapDescriptor(IObjectWrapper.Stub.F2(iBinderS));
        groundOverlayOptions.f31445c = latLng;
        groundOverlayOptions.d = fQ;
        groundOverlayOptions.f31446e = fQ2;
        groundOverlayOptions.f31447f = latLngBounds;
        groundOverlayOptions.g = fQ3;
        groundOverlayOptions.f31448h = fQ4;
        groundOverlayOptions.f31449i = zM;
        groundOverlayOptions.f31450j = fQ5;
        groundOverlayOptions.f31451k = fQ6;
        groundOverlayOptions.l = fQ7;
        groundOverlayOptions.m = zM2;
        return groundOverlayOptions;
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new GroundOverlayOptions[i2];
    }
}
