package com.google.android.gms.fido.u2f.api.common;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzh implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        Integer numU = null;
        Double dP = null;
        Uri uri = null;
        ArrayList arrayListK = null;
        ArrayList arrayListK2 = null;
        ChannelIdValue channelIdValue = null;
        String strG = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 2:
                    numU = SafeParcelReader.u(i2, parcel);
                    break;
                case 3:
                    dP = SafeParcelReader.p(i2, parcel);
                    break;
                case 4:
                    uri = (Uri) SafeParcelReader.f(parcel, i2, Uri.CREATOR);
                    break;
                case 5:
                    arrayListK = SafeParcelReader.k(parcel, i2, RegisterRequest.CREATOR);
                    break;
                case 6:
                    arrayListK2 = SafeParcelReader.k(parcel, i2, RegisteredKey.CREATOR);
                    break;
                case 7:
                    channelIdValue = (ChannelIdValue) SafeParcelReader.f(parcel, i2, ChannelIdValue.CREATOR);
                    break;
                case '\b':
                    strG = SafeParcelReader.g(i2, parcel);
                    break;
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new RegisterRequestParams(numU, dP, uri, arrayListK, arrayListK2, channelIdValue, strG);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new RegisterRequestParams[i2];
    }
}
