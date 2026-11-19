package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzc implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        UvmEntries uvmEntries = null;
        zzf zzfVar = null;
        AuthenticationExtensionsCredPropsOutputs authenticationExtensionsCredPropsOutputs = null;
        zzh zzhVar = null;
        String strG = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 1) {
                uvmEntries = (UvmEntries) SafeParcelReader.f(parcel, i2, UvmEntries.CREATOR);
            } else if (c2 == 2) {
                zzfVar = (zzf) SafeParcelReader.f(parcel, i2, zzf.CREATOR);
            } else if (c2 == 3) {
                authenticationExtensionsCredPropsOutputs = (AuthenticationExtensionsCredPropsOutputs) SafeParcelReader.f(parcel, i2, AuthenticationExtensionsCredPropsOutputs.CREATOR);
            } else if (c2 == 4) {
                zzhVar = (zzh) SafeParcelReader.f(parcel, i2, zzh.CREATOR);
            } else if (c2 != 5) {
                SafeParcelReader.y(i2, parcel);
            } else {
                strG = SafeParcelReader.g(i2, parcel);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new AuthenticationExtensionsClientOutputs(uvmEntries, zzfVar, authenticationExtensionsCredPropsOutputs, zzhVar, strG);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new AuthenticationExtensionsClientOutputs[i2];
    }
}
