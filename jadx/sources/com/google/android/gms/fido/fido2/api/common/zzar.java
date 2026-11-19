package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzar implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        byte[] bArrC = null;
        Double dP = null;
        String strG = null;
        ArrayList arrayListK = null;
        Integer numU = null;
        TokenBinding tokenBinding = null;
        String strG2 = null;
        AuthenticationExtensions authenticationExtensions = null;
        Long lW = null;
        String strG3 = null;
        ResultReceiver resultReceiver = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 2:
                    bArrC = SafeParcelReader.c(i2, parcel);
                    break;
                case 3:
                    dP = SafeParcelReader.p(i2, parcel);
                    break;
                case 4:
                    strG = SafeParcelReader.g(i2, parcel);
                    break;
                case 5:
                    arrayListK = SafeParcelReader.k(parcel, i2, PublicKeyCredentialDescriptor.CREATOR);
                    break;
                case 6:
                    numU = SafeParcelReader.u(i2, parcel);
                    break;
                case 7:
                    tokenBinding = (TokenBinding) SafeParcelReader.f(parcel, i2, TokenBinding.CREATOR);
                    break;
                case '\b':
                    strG2 = SafeParcelReader.g(i2, parcel);
                    break;
                case '\t':
                    authenticationExtensions = (AuthenticationExtensions) SafeParcelReader.f(parcel, i2, AuthenticationExtensions.CREATOR);
                    break;
                case '\n':
                    lW = SafeParcelReader.w(i2, parcel);
                    break;
                case 11:
                    strG3 = SafeParcelReader.g(i2, parcel);
                    break;
                case '\f':
                    resultReceiver = (ResultReceiver) SafeParcelReader.f(parcel, i2, ResultReceiver.CREATOR);
                    break;
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new PublicKeyCredentialRequestOptions(bArrC, dP, strG, arrayListK, numU, tokenBinding, strG2, authenticationExtensions, lW, strG3, resultReceiver);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new PublicKeyCredentialRequestOptions[i2];
    }
}
