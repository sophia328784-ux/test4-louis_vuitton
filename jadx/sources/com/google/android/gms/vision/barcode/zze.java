package com.google.android.gms.vision.barcode;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zze implements Parcelable.Creator<Barcode.ContactInfo> {
    @Override // android.os.Parcelable.Creator
    public final Barcode.ContactInfo createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        Barcode.PersonName personName = null;
        String strG = null;
        String strG2 = null;
        Barcode.Phone[] phoneArr = null;
        Barcode.Email[] emailArr = null;
        String[] strArrH = null;
        Barcode.Address[] addressArr = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 2:
                    personName = (Barcode.PersonName) SafeParcelReader.f(parcel, i2, Barcode.PersonName.CREATOR);
                    break;
                case 3:
                    strG = SafeParcelReader.g(i2, parcel);
                    break;
                case 4:
                    strG2 = SafeParcelReader.g(i2, parcel);
                    break;
                case 5:
                    phoneArr = (Barcode.Phone[]) SafeParcelReader.j(parcel, i2, Barcode.Phone.CREATOR);
                    break;
                case 6:
                    emailArr = (Barcode.Email[]) SafeParcelReader.j(parcel, i2, Barcode.Email.CREATOR);
                    break;
                case 7:
                    strArrH = SafeParcelReader.h(i2, parcel);
                    break;
                case '\b':
                    addressArr = (Barcode.Address[]) SafeParcelReader.j(parcel, i2, Barcode.Address.CREATOR);
                    break;
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new Barcode.ContactInfo(personName, strG, strG2, phoneArr, emailArr, strArrH, addressArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Barcode.ContactInfo[] newArray(int i2) {
        return new Barcode.ContactInfo[i2];
    }
}
