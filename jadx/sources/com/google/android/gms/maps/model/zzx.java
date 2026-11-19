package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public final class zzx implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        float fQ = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        float fQ2 = 0.0f;
        float fQ3 = 0.0f;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 2) {
                fQ = SafeParcelReader.q(i2, parcel);
            } else if (c2 == 3) {
                fQ2 = SafeParcelReader.q(i2, parcel);
            } else if (c2 != 4) {
                SafeParcelReader.y(i2, parcel);
            } else {
                fQ3 = SafeParcelReader.q(i2, parcel);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new StreetViewPanoramaCamera(fQ, fQ2, fQ3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new StreetViewPanoramaCamera[i2];
    }
}
