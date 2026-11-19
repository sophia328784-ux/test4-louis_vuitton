package com.google.android.gms.identitycredentials;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class PendingGetCredentialHandleCreator implements Parcelable.Creator<PendingGetCredentialHandle> {
    @Override // android.os.Parcelable.Creator
    public final PendingGetCredentialHandle createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        PendingIntent pendingIntent = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            if (((char) i2) != 1) {
                SafeParcelReader.y(i2, parcel);
            } else {
                pendingIntent = (PendingIntent) SafeParcelReader.f(parcel, i2, PendingIntent.CREATOR);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new PendingGetCredentialHandle(pendingIntent);
    }

    @Override // android.os.Parcelable.Creator
    public final PendingGetCredentialHandle[] newArray(int i2) {
        return new PendingGetCredentialHandle[i2];
    }
}
