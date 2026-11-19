package com.google.android.gms.identitycredentials;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class CredentialOptionCreator implements Parcelable.Creator<CredentialOption> {
    @Override // android.os.Parcelable.Creator
    public final CredentialOption createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        String strG = "";
        String strG2 = strG;
        String strG3 = strG2;
        Bundle bundleB = null;
        Bundle bundleB2 = null;
        String strG4 = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 1:
                    strG = SafeParcelReader.g(i2, parcel);
                    break;
                case 2:
                    bundleB = SafeParcelReader.b(i2, parcel);
                    break;
                case 3:
                    bundleB2 = SafeParcelReader.b(i2, parcel);
                    break;
                case 4:
                    strG4 = SafeParcelReader.g(i2, parcel);
                    break;
                case 5:
                    strG2 = SafeParcelReader.g(i2, parcel);
                    break;
                case 6:
                    strG3 = SafeParcelReader.g(i2, parcel);
                    break;
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new CredentialOption(strG, bundleB, bundleB2, strG4, strG2, strG3);
    }

    @Override // android.os.Parcelable.Creator
    public final CredentialOption[] newArray(int i2) {
        return new CredentialOption[i2];
    }
}
