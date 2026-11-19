package com.google.android.gms.vision.barcode;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzh implements Parcelable.Creator<Barcode.DriverLicense> {
    @Override // android.os.Parcelable.Creator
    public final Barcode.DriverLicense createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        String strG = null;
        String strG2 = null;
        String strG3 = null;
        String strG4 = null;
        String strG5 = null;
        String strG6 = null;
        String strG7 = null;
        String strG8 = null;
        String strG9 = null;
        String strG10 = null;
        String strG11 = null;
        String strG12 = null;
        String strG13 = null;
        String strG14 = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 2:
                    strG = SafeParcelReader.g(i2, parcel);
                    break;
                case 3:
                    strG2 = SafeParcelReader.g(i2, parcel);
                    break;
                case 4:
                    strG3 = SafeParcelReader.g(i2, parcel);
                    break;
                case 5:
                    strG4 = SafeParcelReader.g(i2, parcel);
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
                    strG8 = SafeParcelReader.g(i2, parcel);
                    break;
                case '\n':
                    strG9 = SafeParcelReader.g(i2, parcel);
                    break;
                case 11:
                    strG10 = SafeParcelReader.g(i2, parcel);
                    break;
                case '\f':
                    strG11 = SafeParcelReader.g(i2, parcel);
                    break;
                case '\r':
                    strG12 = SafeParcelReader.g(i2, parcel);
                    break;
                case 14:
                    strG13 = SafeParcelReader.g(i2, parcel);
                    break;
                case 15:
                    strG14 = SafeParcelReader.g(i2, parcel);
                    break;
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new Barcode.DriverLicense(strG, strG2, strG3, strG4, strG5, strG6, strG7, strG8, strG9, strG10, strG11, strG12, strG13, strG14);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Barcode.DriverLicense[] newArray(int i2) {
        return new Barcode.DriverLicense[i2];
    }
}
