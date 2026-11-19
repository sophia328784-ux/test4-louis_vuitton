package com.google.firebase.messaging;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public class RemoteMessageCreator implements Parcelable.Creator<RemoteMessage> {
    @Override // android.os.Parcelable.Creator
    public final RemoteMessage createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        Bundle bundleB = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            if (((char) i2) != 2) {
                SafeParcelReader.y(i2, parcel);
            } else {
                bundleB = SafeParcelReader.b(i2, parcel);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new RemoteMessage(bundleB);
    }

    @Override // android.os.Parcelable.Creator
    public final RemoteMessage[] newArray(int i2) {
        return new RemoteMessage[i2];
    }
}
