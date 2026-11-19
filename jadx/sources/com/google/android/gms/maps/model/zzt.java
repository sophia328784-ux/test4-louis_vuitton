package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public final class zzt implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        ArrayList arrayList = new ArrayList();
        float fQ = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        ArrayList arrayListK = null;
        int iT = 0;
        int iT2 = 0;
        boolean zM = false;
        boolean zM2 = false;
        boolean zM3 = false;
        int iT3 = 0;
        float fQ2 = 0.0f;
        ArrayList arrayListK2 = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 2:
                    arrayListK2 = SafeParcelReader.k(parcel, i2, LatLng.CREATOR);
                    break;
                case 3:
                    ClassLoader classLoader = zzt.class.getClassLoader();
                    int iX = SafeParcelReader.x(i2, parcel);
                    int iDataPosition = parcel.dataPosition();
                    if (iX != 0) {
                        parcel.readList(arrayList, classLoader);
                        parcel.setDataPosition(iDataPosition + iX);
                    }
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
                    zM = SafeParcelReader.m(i2, parcel);
                    break;
                case '\t':
                    zM2 = SafeParcelReader.m(i2, parcel);
                    break;
                case '\n':
                    zM3 = SafeParcelReader.m(i2, parcel);
                    break;
                case 11:
                    iT3 = SafeParcelReader.t(i2, parcel);
                    break;
                case '\f':
                    arrayListK = SafeParcelReader.k(parcel, i2, PatternItem.CREATOR);
                    break;
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new PolygonOptions(arrayListK2, arrayList, fQ, iT, iT2, fQ2, zM, zM2, zM3, iT3, arrayListK);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new PolygonOptions[i2];
    }
}
