package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.batch.android.q0.b;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes2.dex */
public final class zzj implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        int iT = 0;
        int iT2 = 0;
        String strG = null;
        IBinder iBinderS = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 2) {
                strG = SafeParcelReader.g(i2, parcel);
            } else if (c2 == 3) {
                iBinderS = SafeParcelReader.s(i2, parcel);
            } else if (c2 == 4) {
                iT = SafeParcelReader.t(i2, parcel);
            } else if (c2 != 5) {
                SafeParcelReader.y(i2, parcel);
            } else {
                iT2 = SafeParcelReader.t(i2, parcel);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        PinConfig.Glyph glyph = new PinConfig.Glyph();
        glyph.d = -5041134;
        glyph.f31471e = b.v;
        glyph.f31469b = strG;
        glyph.f31470c = iBinderS != null ? new BitmapDescriptor(IObjectWrapper.Stub.F2(iBinderS)) : null;
        glyph.d = iT;
        glyph.f31471e = iT2;
        return glyph;
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new PinConfig.Glyph[i2];
    }
}
