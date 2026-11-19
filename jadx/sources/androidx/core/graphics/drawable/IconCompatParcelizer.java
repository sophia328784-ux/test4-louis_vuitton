package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Parcelable;
import androidx.versionedparcelable.VersionedParcel;
import defpackage.md;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
public class IconCompatParcelizer {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static IconCompat read(VersionedParcel versionedParcel) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.f12065a = versionedParcel.k(iconCompat.f12065a, 1);
        byte[] bArrG = iconCompat.f12067c;
        if (versionedParcel.i(2)) {
            bArrG = versionedParcel.g();
        }
        iconCompat.f12067c = bArrG;
        Parcelable parcelableL = iconCompat.d;
        if (versionedParcel.i(3)) {
            parcelableL = versionedParcel.l();
        }
        iconCompat.d = parcelableL;
        iconCompat.f12068e = versionedParcel.k(iconCompat.f12068e, 4);
        iconCompat.f12069f = versionedParcel.k(iconCompat.f12069f, 5);
        Parcelable parcelableL2 = iconCompat.g;
        if (versionedParcel.i(6)) {
            parcelableL2 = versionedParcel.l();
        }
        iconCompat.g = (ColorStateList) parcelableL2;
        String strM = iconCompat.f12071i;
        if (versionedParcel.i(7)) {
            strM = versionedParcel.m();
        }
        iconCompat.f12071i = strM;
        String strM2 = iconCompat.f12072j;
        if (versionedParcel.i(8)) {
            strM2 = versionedParcel.m();
        }
        iconCompat.f12072j = strM2;
        iconCompat.f12070h = PorterDuff.Mode.valueOf(iconCompat.f12071i);
        switch (iconCompat.f12065a) {
            case -1:
                Parcelable parcelable = iconCompat.d;
                if (parcelable != null) {
                    iconCompat.f12066b = parcelable;
                    return iconCompat;
                }
                md.n("Invalid icon");
                return null;
            case 0:
            default:
                return iconCompat;
            case 1:
            case 5:
                Parcelable parcelable2 = iconCompat.d;
                if (parcelable2 != null) {
                    iconCompat.f12066b = parcelable2;
                    return iconCompat;
                }
                byte[] bArr = iconCompat.f12067c;
                iconCompat.f12066b = bArr;
                iconCompat.f12065a = 3;
                iconCompat.f12068e = 0;
                iconCompat.f12069f = bArr.length;
                return iconCompat;
            case 2:
            case 4:
            case 6:
                String str = new String(iconCompat.f12067c, Charset.forName("UTF-16"));
                iconCompat.f12066b = str;
                if (iconCompat.f12065a == 2 && iconCompat.f12072j == null) {
                    iconCompat.f12072j = str.split(":", -1)[0];
                }
                return iconCompat;
            case 3:
                iconCompat.f12066b = iconCompat.f12067c;
                return iconCompat;
        }
    }

    public static void write(IconCompat iconCompat, VersionedParcel versionedParcel) {
        versionedParcel.getClass();
        iconCompat.f12071i = iconCompat.f12070h.name();
        switch (iconCompat.f12065a) {
            case -1:
                iconCompat.d = (Parcelable) iconCompat.f12066b;
                break;
            case 1:
            case 5:
                iconCompat.d = (Parcelable) iconCompat.f12066b;
                break;
            case 2:
                iconCompat.f12067c = ((String) iconCompat.f12066b).getBytes(Charset.forName("UTF-16"));
                break;
            case 3:
                iconCompat.f12067c = (byte[]) iconCompat.f12066b;
                break;
            case 4:
            case 6:
                iconCompat.f12067c = iconCompat.f12066b.toString().getBytes(Charset.forName("UTF-16"));
                break;
        }
        int i2 = iconCompat.f12065a;
        if (-1 != i2) {
            versionedParcel.t(i2, 1);
        }
        byte[] bArr = iconCompat.f12067c;
        if (bArr != null) {
            versionedParcel.o(2);
            versionedParcel.q(bArr);
        }
        Parcelable parcelable = iconCompat.d;
        if (parcelable != null) {
            versionedParcel.o(3);
            versionedParcel.u(parcelable);
        }
        int i3 = iconCompat.f12068e;
        if (i3 != 0) {
            versionedParcel.t(i3, 4);
        }
        int i4 = iconCompat.f12069f;
        if (i4 != 0) {
            versionedParcel.t(i4, 5);
        }
        ColorStateList colorStateList = iconCompat.g;
        if (colorStateList != null) {
            versionedParcel.o(6);
            versionedParcel.u(colorStateList);
        }
        String str = iconCompat.f12071i;
        if (str != null) {
            versionedParcel.o(7);
            versionedParcel.v(str);
        }
        String str2 = iconCompat.f12072j;
        if (str2 != null) {
            versionedParcel.o(8);
            versionedParcel.v(str2);
        }
    }
}
