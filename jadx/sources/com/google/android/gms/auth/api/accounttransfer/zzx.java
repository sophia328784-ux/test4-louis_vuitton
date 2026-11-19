package com.google.android.gms.auth.api.accounttransfer;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import defpackage.pq0;
import java.util.HashSet;

/* JADX INFO: loaded from: classes2.dex */
public final class zzx implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        HashSet hashSet = new HashSet();
        int iT = 0;
        String strG = null;
        byte[] bArrC = null;
        PendingIntent pendingIntent = null;
        DeviceMetaData deviceMetaData = null;
        int iT2 = 0;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 1:
                    iT = SafeParcelReader.t(i2, parcel);
                    hashSet.add(1);
                    break;
                case 2:
                    strG = SafeParcelReader.g(i2, parcel);
                    hashSet.add(2);
                    break;
                case 3:
                    iT2 = SafeParcelReader.t(i2, parcel);
                    hashSet.add(3);
                    break;
                case 4:
                    bArrC = SafeParcelReader.c(i2, parcel);
                    hashSet.add(4);
                    break;
                case 5:
                    pendingIntent = (PendingIntent) SafeParcelReader.f(parcel, i2, PendingIntent.CREATOR);
                    hashSet.add(5);
                    break;
                case 6:
                    deviceMetaData = (DeviceMetaData) SafeParcelReader.f(parcel, i2, DeviceMetaData.CREATOR);
                    hashSet.add(6);
                    break;
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
            }
        }
        if (parcel.dataPosition() == iZ) {
            return new zzw(hashSet, iT, strG, iT2, bArrC, pendingIntent, deviceMetaData);
        }
        throw new SafeParcelReader.ParseException(pq0.k(iZ, "Overread allowed size end="), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new zzw[i2];
    }
}
