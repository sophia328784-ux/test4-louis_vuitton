package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzt implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        ArrayList arrayListI = null;
        ArrayList arrayListI2 = null;
        ArrayList arrayListI3 = null;
        ArrayList arrayListI4 = null;
        ArrayList arrayListI5 = null;
        int iT = 0;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 1:
                    iT = SafeParcelReader.t(i2, parcel);
                    break;
                case 2:
                    arrayListI = SafeParcelReader.i(i2, parcel);
                    break;
                case 3:
                    arrayListI2 = SafeParcelReader.i(i2, parcel);
                    break;
                case 4:
                    arrayListI3 = SafeParcelReader.i(i2, parcel);
                    break;
                case 5:
                    arrayListI4 = SafeParcelReader.i(i2, parcel);
                    break;
                case 6:
                    arrayListI5 = SafeParcelReader.i(i2, parcel);
                    break;
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new zzs(iT, arrayListI, arrayListI2, arrayListI3, arrayListI4, arrayListI5);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new zzs[i2];
    }
}
