package com.google.android.gms.common.internal.safeparcel;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class SafeParcelWriter {
    public static void a(Parcel parcel, int i2, Bundle bundle) {
        if (bundle == null) {
            return;
        }
        int iQ = q(i2, parcel);
        parcel.writeBundle(bundle);
        r(iQ, parcel);
    }

    public static void b(Parcel parcel, int i2, byte[] bArr, boolean z) {
        if (bArr == null) {
            if (z) {
                p(parcel, i2, 0);
            }
        } else {
            int iQ = q(i2, parcel);
            parcel.writeByteArray(bArr);
            r(iQ, parcel);
        }
    }

    public static void c(Parcel parcel, int i2, byte[][] bArr) {
        if (bArr == null) {
            return;
        }
        int iQ = q(i2, parcel);
        parcel.writeInt(bArr.length);
        for (byte[] bArr2 : bArr) {
            parcel.writeByteArray(bArr2);
        }
        r(iQ, parcel);
    }

    public static void d(Parcel parcel, int i2, Double d) {
        if (d == null) {
            return;
        }
        p(parcel, i2, 8);
        parcel.writeDouble(d.doubleValue());
    }

    public static void e(Parcel parcel, int i2, Float f2) {
        if (f2 == null) {
            return;
        }
        p(parcel, i2, 4);
        parcel.writeFloat(f2.floatValue());
    }

    public static void f(Parcel parcel, int i2, IBinder iBinder) {
        if (iBinder == null) {
            return;
        }
        int iQ = q(i2, parcel);
        parcel.writeStrongBinder(iBinder);
        r(iQ, parcel);
    }

    public static void g(Parcel parcel, int i2, int[] iArr) {
        if (iArr == null) {
            return;
        }
        int iQ = q(i2, parcel);
        parcel.writeIntArray(iArr);
        r(iQ, parcel);
    }

    public static void h(Parcel parcel, int i2, Integer num) {
        if (num == null) {
            return;
        }
        p(parcel, i2, 4);
        parcel.writeInt(num.intValue());
    }

    public static void i(Parcel parcel, int i2, Long l) {
        if (l == null) {
            return;
        }
        p(parcel, i2, 8);
        parcel.writeLong(l.longValue());
    }

    public static void j(Parcel parcel, int i2, Parcelable parcelable, int i3, boolean z) {
        if (parcelable == null) {
            if (z) {
                p(parcel, i2, 0);
            }
        } else {
            int iQ = q(i2, parcel);
            parcelable.writeToParcel(parcel, i3);
            r(iQ, parcel);
        }
    }

    public static void k(Parcel parcel, int i2, String str, boolean z) {
        if (str == null) {
            if (z) {
                p(parcel, i2, 0);
            }
        } else {
            int iQ = q(i2, parcel);
            parcel.writeString(str);
            r(iQ, parcel);
        }
    }

    public static void l(Parcel parcel, int i2, String[] strArr) {
        if (strArr == null) {
            return;
        }
        int iQ = q(i2, parcel);
        parcel.writeStringArray(strArr);
        r(iQ, parcel);
    }

    public static void m(Parcel parcel, int i2, List list) {
        if (list == null) {
            return;
        }
        int iQ = q(i2, parcel);
        parcel.writeStringList(list);
        r(iQ, parcel);
    }

    public static void n(Parcel parcel, int i2, Parcelable[] parcelableArr, int i3) {
        if (parcelableArr == null) {
            return;
        }
        int iQ = q(i2, parcel);
        parcel.writeInt(parcelableArr.length);
        for (Parcelable parcelable : parcelableArr) {
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                int iDataPosition = parcel.dataPosition();
                parcel.writeInt(1);
                int iDataPosition2 = parcel.dataPosition();
                parcelable.writeToParcel(parcel, i3);
                int iDataPosition3 = parcel.dataPosition();
                parcel.setDataPosition(iDataPosition);
                parcel.writeInt(iDataPosition3 - iDataPosition2);
                parcel.setDataPosition(iDataPosition3);
            }
        }
        r(iQ, parcel);
    }

    public static void o(Parcel parcel, int i2, List list, boolean z) {
        if (list == null) {
            if (z) {
                p(parcel, i2, 0);
                return;
            }
            return;
        }
        int iQ = q(i2, parcel);
        int size = list.size();
        parcel.writeInt(size);
        for (int i3 = 0; i3 < size; i3++) {
            Parcelable parcelable = (Parcelable) list.get(i3);
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                int iDataPosition = parcel.dataPosition();
                parcel.writeInt(1);
                int iDataPosition2 = parcel.dataPosition();
                parcelable.writeToParcel(parcel, 0);
                int iDataPosition3 = parcel.dataPosition();
                parcel.setDataPosition(iDataPosition);
                parcel.writeInt(iDataPosition3 - iDataPosition2);
                parcel.setDataPosition(iDataPosition3);
            }
        }
        r(iQ, parcel);
    }

    public static void p(Parcel parcel, int i2, int i3) {
        parcel.writeInt(i2 | (i3 << 16));
    }

    public static int q(int i2, Parcel parcel) {
        parcel.writeInt(i2 | (-65536));
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    public static void r(int i2, Parcel parcel) {
        int iDataPosition = parcel.dataPosition();
        parcel.setDataPosition(i2 - 4);
        parcel.writeInt(iDataPosition - i2);
        parcel.setDataPosition(iDataPosition);
    }
}
