package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.maps.zzax;
import com.google.android.gms.internal.maps.zzay;
import com.google.android.gms.internal.maps.zzaz;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public final class zzaj implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        boolean zM = false;
        zzaz zzaxVar = null;
        float fQ = 0.0f;
        float fQ2 = 0.0f;
        boolean zM2 = true;
        IBinder iBinderS = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 2) {
                iBinderS = SafeParcelReader.s(i2, parcel);
            } else if (c2 == 3) {
                zM = SafeParcelReader.m(i2, parcel);
            } else if (c2 == 4) {
                fQ = SafeParcelReader.q(i2, parcel);
            } else if (c2 == 5) {
                zM2 = SafeParcelReader.m(i2, parcel);
            } else if (c2 != 6) {
                SafeParcelReader.y(i2, parcel);
            } else {
                fQ2 = SafeParcelReader.q(i2, parcel);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        TileOverlayOptions tileOverlayOptions = new TileOverlayOptions();
        tileOverlayOptions.f31516c = true;
        tileOverlayOptions.f31517e = true;
        tileOverlayOptions.f31518f = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        int i3 = zzay.f30274a;
        if (iBinderS != null) {
            IInterface iInterfaceQueryLocalInterface = iBinderS.queryLocalInterface("com.google.android.gms.maps.model.internal.ITileProviderDelegate");
            zzaxVar = iInterfaceQueryLocalInterface instanceof zzaz ? (zzaz) iInterfaceQueryLocalInterface : new zzax(iBinderS);
        }
        tileOverlayOptions.f31515b = zzaxVar;
        tileOverlayOptions.f31516c = zM;
        tileOverlayOptions.d = fQ;
        tileOverlayOptions.f31517e = zM2;
        tileOverlayOptions.f31518f = fQ2;
        return tileOverlayOptions;
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new TileOverlayOptions[i2];
    }
}
