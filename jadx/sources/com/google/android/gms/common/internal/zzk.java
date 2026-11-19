package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzk implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        Bundle bundleB = null;
        ConnectionTelemetryConfiguration connectionTelemetryConfiguration = null;
        int iT = 0;
        Feature[] featureArr = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 1) {
                bundleB = SafeParcelReader.b(i2, parcel);
            } else if (c2 == 2) {
                featureArr = (Feature[]) SafeParcelReader.j(parcel, i2, Feature.CREATOR);
            } else if (c2 == 3) {
                iT = SafeParcelReader.t(i2, parcel);
            } else if (c2 != 4) {
                SafeParcelReader.y(i2, parcel);
            } else {
                connectionTelemetryConfiguration = (ConnectionTelemetryConfiguration) SafeParcelReader.f(parcel, i2, ConnectionTelemetryConfiguration.CREATOR);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        zzj zzjVar = new zzj();
        zzjVar.f29262b = bundleB;
        zzjVar.f29263c = featureArr;
        zzjVar.d = iT;
        zzjVar.f29264e = connectionTelemetryConfiguration;
        return zzjVar;
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new zzj[i2];
    }
}
