package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzl implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        RootTelemetryConfiguration rootTelemetryConfiguration = null;
        int[] iArrE = null;
        int[] iArrE2 = null;
        boolean zM = false;
        boolean zM2 = false;
        int iT = 0;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 1:
                    rootTelemetryConfiguration = (RootTelemetryConfiguration) SafeParcelReader.f(parcel, i2, RootTelemetryConfiguration.CREATOR);
                    break;
                case 2:
                    zM = SafeParcelReader.m(i2, parcel);
                    break;
                case 3:
                    zM2 = SafeParcelReader.m(i2, parcel);
                    break;
                case 4:
                    iArrE = SafeParcelReader.e(i2, parcel);
                    break;
                case 5:
                    iT = SafeParcelReader.t(i2, parcel);
                    break;
                case 6:
                    iArrE2 = SafeParcelReader.e(i2, parcel);
                    break;
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new ConnectionTelemetryConfiguration(rootTelemetryConfiguration, zM, zM2, iArrE, iT, iArrE2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new ConnectionTelemetryConfiguration[i2];
    }
}
