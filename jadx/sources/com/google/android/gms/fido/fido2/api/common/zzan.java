package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzan implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        PublicKeyCredentialRpEntity publicKeyCredentialRpEntity = null;
        PublicKeyCredentialUserEntity publicKeyCredentialUserEntity = null;
        byte[] bArrC = null;
        ArrayList arrayListK = null;
        Double dP = null;
        ArrayList arrayListK2 = null;
        AuthenticatorSelectionCriteria authenticatorSelectionCriteria = null;
        Integer numU = null;
        TokenBinding tokenBinding = null;
        String strG = null;
        AuthenticationExtensions authenticationExtensions = null;
        String strG2 = null;
        ResultReceiver resultReceiver = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 2:
                    publicKeyCredentialRpEntity = (PublicKeyCredentialRpEntity) SafeParcelReader.f(parcel, i2, PublicKeyCredentialRpEntity.CREATOR);
                    break;
                case 3:
                    publicKeyCredentialUserEntity = (PublicKeyCredentialUserEntity) SafeParcelReader.f(parcel, i2, PublicKeyCredentialUserEntity.CREATOR);
                    break;
                case 4:
                    bArrC = SafeParcelReader.c(i2, parcel);
                    break;
                case 5:
                    arrayListK = SafeParcelReader.k(parcel, i2, PublicKeyCredentialParameters.CREATOR);
                    break;
                case 6:
                    dP = SafeParcelReader.p(i2, parcel);
                    break;
                case 7:
                    arrayListK2 = SafeParcelReader.k(parcel, i2, PublicKeyCredentialDescriptor.CREATOR);
                    break;
                case '\b':
                    authenticatorSelectionCriteria = (AuthenticatorSelectionCriteria) SafeParcelReader.f(parcel, i2, AuthenticatorSelectionCriteria.CREATOR);
                    break;
                case '\t':
                    numU = SafeParcelReader.u(i2, parcel);
                    break;
                case '\n':
                    tokenBinding = (TokenBinding) SafeParcelReader.f(parcel, i2, TokenBinding.CREATOR);
                    break;
                case 11:
                    strG = SafeParcelReader.g(i2, parcel);
                    break;
                case '\f':
                    authenticationExtensions = (AuthenticationExtensions) SafeParcelReader.f(parcel, i2, AuthenticationExtensions.CREATOR);
                    break;
                case '\r':
                    strG2 = SafeParcelReader.g(i2, parcel);
                    break;
                case 14:
                    resultReceiver = (ResultReceiver) SafeParcelReader.f(parcel, i2, ResultReceiver.CREATOR);
                    break;
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new PublicKeyCredentialCreationOptions(publicKeyCredentialRpEntity, publicKeyCredentialUserEntity, bArrC, arrayListK, dP, arrayListK2, authenticatorSelectionCriteria, numU, tokenBinding, strG, authenticationExtensions, strG2, resultReceiver);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new PublicKeyCredentialCreationOptions[i2];
    }
}
