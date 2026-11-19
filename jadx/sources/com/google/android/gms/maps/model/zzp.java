package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public final class zzp implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        View view;
        int iZ = SafeParcelReader.z(parcel);
        boolean zM = false;
        boolean zM2 = false;
        boolean zM3 = false;
        int iT = 0;
        int iT2 = 0;
        float fQ = 1.0f;
        float fQ2 = 0.5f;
        LatLng latLng = null;
        String strG = null;
        String strG2 = null;
        IBinder iBinderS = null;
        float fQ3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        float fQ4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        float fQ5 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        float fQ6 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        float fQ7 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        IBinder iBinderS2 = null;
        String strG3 = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 2:
                    latLng = (LatLng) SafeParcelReader.f(parcel, i2, LatLng.CREATOR);
                    break;
                case 3:
                    strG = SafeParcelReader.g(i2, parcel);
                    break;
                case 4:
                    strG2 = SafeParcelReader.g(i2, parcel);
                    break;
                case 5:
                    iBinderS = SafeParcelReader.s(i2, parcel);
                    break;
                case 6:
                    fQ3 = SafeParcelReader.q(i2, parcel);
                    break;
                case 7:
                    fQ4 = SafeParcelReader.q(i2, parcel);
                    break;
                case '\b':
                    zM = SafeParcelReader.m(i2, parcel);
                    break;
                case '\t':
                    zM2 = SafeParcelReader.m(i2, parcel);
                    break;
                case '\n':
                    zM3 = SafeParcelReader.m(i2, parcel);
                    break;
                case 11:
                    fQ5 = SafeParcelReader.q(i2, parcel);
                    break;
                case '\f':
                    fQ2 = SafeParcelReader.q(i2, parcel);
                    break;
                case '\r':
                    fQ6 = SafeParcelReader.q(i2, parcel);
                    break;
                case 14:
                    fQ = SafeParcelReader.q(i2, parcel);
                    break;
                case 15:
                    fQ7 = SafeParcelReader.q(i2, parcel);
                    break;
                case 16:
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
                case 17:
                    iT = SafeParcelReader.t(i2, parcel);
                    break;
                case 18:
                    iBinderS2 = SafeParcelReader.s(i2, parcel);
                    break;
                case 19:
                    iT2 = SafeParcelReader.t(i2, parcel);
                    break;
                case 20:
                    strG3 = SafeParcelReader.g(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        MarkerOptions markerOptions = new MarkerOptions();
        markerOptions.f31460f = 0.5f;
        markerOptions.g = 1.0f;
        markerOptions.f31462i = true;
        markerOptions.f31463j = false;
        markerOptions.f31464k = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        markerOptions.l = 0.5f;
        markerOptions.m = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        markerOptions.n = 1.0f;
        markerOptions.p = 0;
        markerOptions.f31457b = latLng;
        markerOptions.f31458c = strG;
        markerOptions.d = strG2;
        if (iBinderS == null) {
            view = null;
            markerOptions.f31459e = null;
        } else {
            view = null;
            markerOptions.f31459e = new BitmapDescriptor(IObjectWrapper.Stub.F2(iBinderS));
        }
        markerOptions.f31460f = fQ3;
        markerOptions.g = fQ4;
        markerOptions.f31461h = zM;
        markerOptions.f31462i = zM2;
        markerOptions.f31463j = zM3;
        markerOptions.f31464k = fQ5;
        markerOptions.l = fQ2;
        markerOptions.m = fQ6;
        markerOptions.n = fQ;
        markerOptions.o = fQ7;
        markerOptions.r = iT2;
        markerOptions.p = iT;
        IObjectWrapper iObjectWrapperF2 = IObjectWrapper.Stub.F2(iBinderS2);
        markerOptions.q = iObjectWrapperF2 == null ? view : (View) ObjectWrapper.G2(iObjectWrapperF2);
        markerOptions.s = strG3;
        return markerOptions;
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new MarkerOptions[i2];
    }
}
