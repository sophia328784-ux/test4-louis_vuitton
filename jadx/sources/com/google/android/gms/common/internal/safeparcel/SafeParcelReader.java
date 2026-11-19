package com.google.android.gms.common.internal.safeparcel;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import defpackage.d21;
import defpackage.tr;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public abstract class SafeParcelReader {

    public static class ParseException extends RuntimeException {
        public ParseException(String str, Parcel parcel) {
            int iDataPosition = parcel.dataPosition();
            int iDataSize = parcel.dataSize();
            int length = String.valueOf(str).length();
            StringBuilder sb = new StringBuilder(length + 13 + String.valueOf(iDataPosition).length() + 6 + String.valueOf(iDataSize).length());
            sb.append(str);
            sb.append(" Parcel: pos=");
            sb.append(iDataPosition);
            sb.append(" size=");
            sb.append(iDataSize);
            super(sb.toString());
        }
    }

    public static void A(Parcel parcel, int i2, int i3) {
        int iX = x(i2, parcel);
        if (iX == i3) {
            return;
        }
        String hexString = Integer.toHexString(iX);
        int length = String.valueOf(i3).length();
        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + length + 19 + String.valueOf(iX).length() + 4 + 1);
        tr.w(i3, iX, "Expected size ", " got ", sb);
        throw new ParseException(d21.p(sb, " (0x", hexString, ")"), parcel);
    }

    public static void B(Parcel parcel, int i2, int i3) {
        if (i2 == i3) {
            return;
        }
        String hexString = Integer.toHexString(i2);
        int length = String.valueOf(i3).length();
        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + length + 19 + String.valueOf(i2).length() + 4 + 1);
        tr.w(i3, i2, "Expected size ", " got ", sb);
        throw new ParseException(d21.p(sb, " (0x", hexString, ")"), parcel);
    }

    public static BigDecimal a(int i2, Parcel parcel) {
        int iX = x(i2, parcel);
        int iDataPosition = parcel.dataPosition();
        if (iX == 0) {
            return null;
        }
        byte[] bArrCreateByteArray = parcel.createByteArray();
        int i3 = parcel.readInt();
        parcel.setDataPosition(iDataPosition + iX);
        return new BigDecimal(new BigInteger(bArrCreateByteArray), i3);
    }

    public static Bundle b(int i2, Parcel parcel) {
        int iX = x(i2, parcel);
        int iDataPosition = parcel.dataPosition();
        if (iX == 0) {
            return null;
        }
        Bundle bundle = parcel.readBundle();
        parcel.setDataPosition(iDataPosition + iX);
        return bundle;
    }

    public static byte[] c(int i2, Parcel parcel) {
        int iX = x(i2, parcel);
        int iDataPosition = parcel.dataPosition();
        if (iX == 0) {
            return null;
        }
        byte[] bArrCreateByteArray = parcel.createByteArray();
        parcel.setDataPosition(iDataPosition + iX);
        return bArrCreateByteArray;
    }

    public static byte[][] d(int i2, Parcel parcel) {
        int iX = x(i2, parcel);
        int iDataPosition = parcel.dataPosition();
        if (iX == 0) {
            return null;
        }
        int i3 = parcel.readInt();
        byte[][] bArr = new byte[i3][];
        for (int i4 = 0; i4 < i3; i4++) {
            bArr[i4] = parcel.createByteArray();
        }
        parcel.setDataPosition(iDataPosition + iX);
        return bArr;
    }

    public static int[] e(int i2, Parcel parcel) {
        int iX = x(i2, parcel);
        int iDataPosition = parcel.dataPosition();
        if (iX == 0) {
            return null;
        }
        int[] iArrCreateIntArray = parcel.createIntArray();
        parcel.setDataPosition(iDataPosition + iX);
        return iArrCreateIntArray;
    }

    public static Parcelable f(Parcel parcel, int i2, Parcelable.Creator creator) {
        int iX = x(i2, parcel);
        int iDataPosition = parcel.dataPosition();
        if (iX == 0) {
            return null;
        }
        Parcelable parcelable = (Parcelable) creator.createFromParcel(parcel);
        parcel.setDataPosition(iDataPosition + iX);
        return parcelable;
    }

    public static String g(int i2, Parcel parcel) {
        int iX = x(i2, parcel);
        int iDataPosition = parcel.dataPosition();
        if (iX == 0) {
            return null;
        }
        String string = parcel.readString();
        parcel.setDataPosition(iDataPosition + iX);
        return string;
    }

    public static String[] h(int i2, Parcel parcel) {
        int iX = x(i2, parcel);
        int iDataPosition = parcel.dataPosition();
        if (iX == 0) {
            return null;
        }
        String[] strArrCreateStringArray = parcel.createStringArray();
        parcel.setDataPosition(iDataPosition + iX);
        return strArrCreateStringArray;
    }

    public static ArrayList i(int i2, Parcel parcel) {
        int iX = x(i2, parcel);
        int iDataPosition = parcel.dataPosition();
        if (iX == 0) {
            return null;
        }
        ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
        parcel.setDataPosition(iDataPosition + iX);
        return arrayListCreateStringArrayList;
    }

    public static Object[] j(Parcel parcel, int i2, Parcelable.Creator creator) {
        int iX = x(i2, parcel);
        int iDataPosition = parcel.dataPosition();
        if (iX == 0) {
            return null;
        }
        Object[] objArrCreateTypedArray = parcel.createTypedArray(creator);
        parcel.setDataPosition(iDataPosition + iX);
        return objArrCreateTypedArray;
    }

    public static ArrayList k(Parcel parcel, int i2, Parcelable.Creator creator) {
        int iX = x(i2, parcel);
        int iDataPosition = parcel.dataPosition();
        if (iX == 0) {
            return null;
        }
        ArrayList arrayListCreateTypedArrayList = parcel.createTypedArrayList(creator);
        parcel.setDataPosition(iDataPosition + iX);
        return arrayListCreateTypedArrayList;
    }

    public static void l(int i2, Parcel parcel) {
        if (parcel.dataPosition() != i2) {
            throw new ParseException(d21.f(i2, "Overread allowed size end=", new StringBuilder(String.valueOf(i2).length() + 26)), parcel);
        }
    }

    public static boolean m(int i2, Parcel parcel) {
        A(parcel, i2, 4);
        return parcel.readInt() != 0;
    }

    public static byte n(int i2, Parcel parcel) {
        A(parcel, i2, 4);
        return (byte) parcel.readInt();
    }

    public static double o(int i2, Parcel parcel) {
        A(parcel, i2, 8);
        return parcel.readDouble();
    }

    public static Double p(int i2, Parcel parcel) {
        int iX = x(i2, parcel);
        if (iX == 0) {
            return null;
        }
        B(parcel, iX, 8);
        return Double.valueOf(parcel.readDouble());
    }

    public static float q(int i2, Parcel parcel) {
        A(parcel, i2, 4);
        return parcel.readFloat();
    }

    public static Float r(int i2, Parcel parcel) {
        int iX = x(i2, parcel);
        if (iX == 0) {
            return null;
        }
        B(parcel, iX, 4);
        return Float.valueOf(parcel.readFloat());
    }

    public static IBinder s(int i2, Parcel parcel) {
        int iX = x(i2, parcel);
        int iDataPosition = parcel.dataPosition();
        if (iX == 0) {
            return null;
        }
        IBinder strongBinder = parcel.readStrongBinder();
        parcel.setDataPosition(iDataPosition + iX);
        return strongBinder;
    }

    public static int t(int i2, Parcel parcel) {
        A(parcel, i2, 4);
        return parcel.readInt();
    }

    public static Integer u(int i2, Parcel parcel) {
        int iX = x(i2, parcel);
        if (iX == 0) {
            return null;
        }
        B(parcel, iX, 4);
        return Integer.valueOf(parcel.readInt());
    }

    public static long v(int i2, Parcel parcel) {
        A(parcel, i2, 8);
        return parcel.readLong();
    }

    public static Long w(int i2, Parcel parcel) {
        int iX = x(i2, parcel);
        if (iX == 0) {
            return null;
        }
        B(parcel, iX, 8);
        return Long.valueOf(parcel.readLong());
    }

    public static int x(int i2, Parcel parcel) {
        return (i2 & (-65536)) != -65536 ? (char) (i2 >> 16) : parcel.readInt();
    }

    public static void y(int i2, Parcel parcel) {
        parcel.setDataPosition(parcel.dataPosition() + x(i2, parcel));
    }

    public static int z(Parcel parcel) {
        int i2 = parcel.readInt();
        int iX = x(i2, parcel);
        char c2 = (char) i2;
        int iDataPosition = parcel.dataPosition();
        if (c2 != 20293) {
            throw new ParseException("Expected object header. Got 0x".concat(String.valueOf(Integer.toHexString(i2))), parcel);
        }
        int i3 = iX + iDataPosition;
        if (i3 >= iDataPosition && i3 <= parcel.dataSize()) {
            return i3;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(iDataPosition).length() + 32 + String.valueOf(i3).length());
        sb.append("Size read is invalid start=");
        sb.append(iDataPosition);
        sb.append(" end=");
        sb.append(i3);
        throw new ParseException(sb.toString(), parcel);
    }
}
