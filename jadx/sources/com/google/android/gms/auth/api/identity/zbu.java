package com.google.android.gms.auth.api.identity;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredential;

/* JADX INFO: loaded from: classes2.dex */
public final class zbu implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        String strG = null;
        String strG2 = null;
        String strG3 = null;
        String strG4 = null;
        Uri uri = null;
        String strG5 = null;
        String strG6 = null;
        String strG7 = null;
        PublicKeyCredential publicKeyCredential = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 1:
                    strG = SafeParcelReader.g(i2, parcel);
                    break;
                case 2:
                    strG2 = SafeParcelReader.g(i2, parcel);
                    break;
                case 3:
                    strG3 = SafeParcelReader.g(i2, parcel);
                    break;
                case 4:
                    strG4 = SafeParcelReader.g(i2, parcel);
                    break;
                case 5:
                    uri = (Uri) SafeParcelReader.f(parcel, i2, Uri.CREATOR);
                    break;
                case 6:
                    strG5 = SafeParcelReader.g(i2, parcel);
                    break;
                case 7:
                    strG6 = SafeParcelReader.g(i2, parcel);
                    break;
                case '\b':
                    strG7 = SafeParcelReader.g(i2, parcel);
                    break;
                case '\t':
                    publicKeyCredential = (PublicKeyCredential) SafeParcelReader.f(parcel, i2, PublicKeyCredential.CREATOR);
                    break;
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new SignInCredential(strG, strG2, strG3, strG4, uri, strG5, strG6, strG7, publicKeyCredential);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new SignInCredential[i2];
    }
}
