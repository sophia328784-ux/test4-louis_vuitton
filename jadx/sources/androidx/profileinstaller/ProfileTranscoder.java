package androidx.profileinstaller;

import defpackage.md;
import defpackage.n00;
import defpackage.no0;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
abstract class ProfileTranscoder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f19116a = {112, 114, 111, 0};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f19117b = {112, 114, 109, 0};

    public static byte[] a(DexProfileData[] dexProfileDataArr, byte[] bArr) throws IOException {
        int i2 = 0;
        int length = 0;
        for (DexProfileData dexProfileData : dexProfileDataArr) {
            length += ((((dexProfileData.g * 2) + 7) & (-8)) / 8) + (dexProfileData.f19109e * 2) + b(dexProfileData.f19106a, dexProfileData.f19107b, bArr).getBytes(StandardCharsets.UTF_8).length + 16 + dexProfileData.f19110f;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(length);
        if (Arrays.equals(bArr, ProfileVersion.f19126c)) {
            int length2 = dexProfileDataArr.length;
            while (i2 < length2) {
                DexProfileData dexProfileData2 = dexProfileDataArr[i2];
                k(byteArrayOutputStream, dexProfileData2, b(dexProfileData2.f19106a, dexProfileData2.f19107b, bArr));
                j(byteArrayOutputStream, dexProfileData2);
                i2++;
            }
        } else {
            for (DexProfileData dexProfileData3 : dexProfileDataArr) {
                k(byteArrayOutputStream, dexProfileData3, b(dexProfileData3.f19106a, dexProfileData3.f19107b, bArr));
            }
            int length3 = dexProfileDataArr.length;
            while (i2 < length3) {
                j(byteArrayOutputStream, dexProfileDataArr[i2]);
                i2++;
            }
        }
        if (byteArrayOutputStream.size() == length) {
            return byteArrayOutputStream.toByteArray();
        }
        no0.k(" expected=", byteArrayOutputStream.size(), length, "The bytes saved do not match expectation. actual=");
        return null;
    }

    public static String b(String str, String str2, byte[] bArr) {
        byte[] bArr2 = ProfileVersion.f19127e;
        boolean zEquals = Arrays.equals(bArr, bArr2);
        byte[] bArr3 = ProfileVersion.d;
        Object obj = (zEquals || Arrays.equals(bArr, bArr3)) ? ":" : "!";
        if (str.length() <= 0) {
            if ("!".equals(obj)) {
                return str2.replace(":", "!");
            }
            if (":".equals(obj)) {
                return str2.replace("!", ":");
            }
        } else {
            if (str2.equals("classes.dex")) {
                return str;
            }
            if (str2.contains("!") || str2.contains(":")) {
                if ("!".equals(obj)) {
                    return str2.replace(":", "!");
                }
                if (":".equals(obj)) {
                    return str2.replace("!", ":");
                }
            } else if (!str2.endsWith(".apk")) {
                return n00.r((Arrays.equals(bArr, bArr2) || Arrays.equals(bArr, bArr3)) ? ":" : "!", str2, n00.t(str));
            }
        }
        return str2;
    }

    public static int[] c(ByteArrayInputStream byteArrayInputStream, int i2) {
        int[] iArr = new int[i2];
        int iD = 0;
        for (int i3 = 0; i3 < i2; i3++) {
            iD += (int) Encoding.d(byteArrayInputStream, 2);
            iArr[i3] = iD;
        }
        return iArr;
    }

    public static DexProfileData[] d(FileInputStream fileInputStream, byte[] bArr, byte[] bArr2, DexProfileData[] dexProfileDataArr) throws IOException {
        byte[] bArr3 = ProfileVersion.f19128f;
        if (!Arrays.equals(bArr, bArr3)) {
            if (!Arrays.equals(bArr, ProfileVersion.g)) {
                md.k("Unsupported meta version");
                return null;
            }
            int iD = (int) Encoding.d(fileInputStream, 2);
            byte[] bArrC = Encoding.c(fileInputStream, (int) Encoding.d(fileInputStream, 4), (int) Encoding.d(fileInputStream, 4));
            if (fileInputStream.read() > 0) {
                md.k("Content found after the end of file");
                return null;
            }
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArrC);
            try {
                DexProfileData[] dexProfileDataArrF = f(byteArrayInputStream, bArr2, iD, dexProfileDataArr);
                byteArrayInputStream.close();
                return dexProfileDataArrF;
            } catch (Throwable th) {
                try {
                    byteArrayInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (Arrays.equals(ProfileVersion.f19124a, bArr2)) {
            md.k("Requires new Baseline Profile Metadata. Please rebuild the APK with Android Gradle Plugin 7.2 Canary 7 or higher");
            return null;
        }
        if (!Arrays.equals(bArr, bArr3)) {
            md.k("Unsupported meta version");
            return null;
        }
        int iD2 = (int) Encoding.d(fileInputStream, 1);
        byte[] bArrC2 = Encoding.c(fileInputStream, (int) Encoding.d(fileInputStream, 4), (int) Encoding.d(fileInputStream, 4));
        if (fileInputStream.read() > 0) {
            md.k("Content found after the end of file");
            return null;
        }
        ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(bArrC2);
        try {
            DexProfileData[] dexProfileDataArrE = e(byteArrayInputStream2, iD2, dexProfileDataArr);
            byteArrayInputStream2.close();
            return dexProfileDataArrE;
        } catch (Throwable th3) {
            try {
                byteArrayInputStream2.close();
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
            }
            throw th3;
        }
    }

    public static DexProfileData[] e(ByteArrayInputStream byteArrayInputStream, int i2, DexProfileData[] dexProfileDataArr) {
        if (byteArrayInputStream.available() == 0) {
            return new DexProfileData[0];
        }
        if (i2 != dexProfileDataArr.length) {
            md.k("Mismatched number of dex files found in metadata");
            return null;
        }
        String[] strArr = new String[i2];
        int[] iArr = new int[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            int iD = (int) Encoding.d(byteArrayInputStream, 2);
            iArr[i3] = (int) Encoding.d(byteArrayInputStream, 2);
            strArr[i3] = new String(Encoding.b(byteArrayInputStream, iD), StandardCharsets.UTF_8);
        }
        for (int i4 = 0; i4 < i2; i4++) {
            DexProfileData dexProfileData = dexProfileDataArr[i4];
            if (!dexProfileData.f19107b.equals(strArr[i4])) {
                md.k("Order of dexfiles in metadata did not match baseline");
                return null;
            }
            int i5 = iArr[i4];
            dexProfileData.f19109e = i5;
            dexProfileData.f19111h = c(byteArrayInputStream, i5);
        }
        return dexProfileDataArr;
    }

    public static DexProfileData[] f(ByteArrayInputStream byteArrayInputStream, byte[] bArr, int i2, DexProfileData[] dexProfileDataArr) throws IOException {
        DexProfileData dexProfileData;
        if (byteArrayInputStream.available() == 0) {
            return new DexProfileData[0];
        }
        if (i2 != dexProfileDataArr.length) {
            md.k("Mismatched number of dex files found in metadata");
            return null;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            Encoding.d(byteArrayInputStream, 2);
            String str = new String(Encoding.b(byteArrayInputStream, (int) Encoding.d(byteArrayInputStream, 2)), StandardCharsets.UTF_8);
            long jD = Encoding.d(byteArrayInputStream, 4);
            int iD = (int) Encoding.d(byteArrayInputStream, 2);
            if (dexProfileDataArr.length <= 0) {
                dexProfileData = null;
                break;
            }
            int iIndexOf = str.indexOf("!");
            if (iIndexOf < 0) {
                iIndexOf = str.indexOf(":");
            }
            String strSubstring = iIndexOf > 0 ? str.substring(iIndexOf + 1) : str;
            int i4 = 0;
            while (true) {
                if (i4 >= dexProfileDataArr.length) {
                    dexProfileData = null;
                    break;
                }
                if (dexProfileDataArr[i4].f19107b.equals(strSubstring)) {
                    dexProfileData = dexProfileDataArr[i4];
                    break;
                }
                i4++;
            }
            if (dexProfileData == null) {
                md.k("Missing profile key: ".concat(str));
                return null;
            }
            dexProfileData.d = jD;
            int[] iArrC = c(byteArrayInputStream, iD);
            if (Arrays.equals(bArr, ProfileVersion.f19127e)) {
                dexProfileData.f19109e = iD;
                dexProfileData.f19111h = iArrC;
            }
        }
        return dexProfileDataArr;
    }

    public static DexProfileData[] g(FileInputStream fileInputStream, byte[] bArr, String str) throws IOException {
        if (!Arrays.equals(bArr, ProfileVersion.f19125b)) {
            md.k("Unsupported version");
            return null;
        }
        int iD = (int) Encoding.d(fileInputStream, 1);
        byte[] bArrC = Encoding.c(fileInputStream, (int) Encoding.d(fileInputStream, 4), (int) Encoding.d(fileInputStream, 4));
        if (fileInputStream.read() > 0) {
            md.k("Content found after the end of file");
            return null;
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArrC);
        try {
            DexProfileData[] dexProfileDataArrH = h(byteArrayInputStream, str, iD);
            byteArrayInputStream.close();
            return dexProfileDataArrH;
        } catch (Throwable th) {
            try {
                byteArrayInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static DexProfileData[] h(ByteArrayInputStream byteArrayInputStream, String str, int i2) throws IOException {
        int i3 = 0;
        if (byteArrayInputStream.available() == 0) {
            return new DexProfileData[0];
        }
        DexProfileData[] dexProfileDataArr = new DexProfileData[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            int iD = (int) Encoding.d(byteArrayInputStream, 2);
            int iD2 = (int) Encoding.d(byteArrayInputStream, 2);
            dexProfileDataArr[i4] = new DexProfileData(str, new String(Encoding.b(byteArrayInputStream, iD), StandardCharsets.UTF_8), Encoding.d(byteArrayInputStream, 4), iD2, (int) Encoding.d(byteArrayInputStream, 4), (int) Encoding.d(byteArrayInputStream, 4), new int[iD2], new TreeMap());
        }
        int i5 = 0;
        while (i5 < i2) {
            DexProfileData dexProfileData = dexProfileDataArr[i5];
            int iAvailable = byteArrayInputStream.available();
            int i6 = dexProfileData.f19110f;
            int i7 = dexProfileData.g;
            TreeMap treeMap = dexProfileData.f19112i;
            int i8 = iAvailable - i6;
            int iD3 = i3;
            while (byteArrayInputStream.available() > i8) {
                iD3 += (int) Encoding.d(byteArrayInputStream, 2);
                treeMap.put(Integer.valueOf(iD3), 1);
                int iD4 = (int) Encoding.d(byteArrayInputStream, 2);
                while (iD4 > 0) {
                    Encoding.d(byteArrayInputStream, 2);
                    int iD5 = (int) Encoding.d(byteArrayInputStream, 1);
                    if (iD5 != 6 && iD5 != 7) {
                        while (iD5 > 0) {
                            Encoding.d(byteArrayInputStream, 1);
                            int i9 = i3;
                            int i10 = i5;
                            for (int iD6 = (int) Encoding.d(byteArrayInputStream, 1); iD6 > 0; iD6--) {
                                Encoding.d(byteArrayInputStream, 2);
                            }
                            iD5--;
                            i3 = i9;
                            i5 = i10;
                        }
                    }
                    iD4--;
                    i3 = i3;
                    i5 = i5;
                }
            }
            int i11 = i3;
            int i12 = i5;
            if (byteArrayInputStream.available() != i8) {
                md.k("Read too much data during profile line parse");
                return null;
            }
            dexProfileData.f19111h = c(byteArrayInputStream, dexProfileData.f19109e);
            BitSet bitSetValueOf = BitSet.valueOf(Encoding.b(byteArrayInputStream, (((i7 * 2) + 7) & (-8)) / 8));
            for (int i13 = i11; i13 < i7; i13++) {
                int i14 = bitSetValueOf.get(i13) ? 2 : i11;
                if (bitSetValueOf.get(i13 + i7)) {
                    i14 |= 4;
                }
                if (i14 != 0) {
                    Integer numValueOf = (Integer) treeMap.get(Integer.valueOf(i13));
                    if (numValueOf == null) {
                        numValueOf = Integer.valueOf(i11);
                    }
                    treeMap.put(Integer.valueOf(i13), Integer.valueOf(i14 | numValueOf.intValue()));
                }
            }
            i5 = i12 + 1;
            i3 = i11;
        }
        return dexProfileDataArr;
    }

    public static boolean i(ByteArrayOutputStream byteArrayOutputStream, byte[] bArr, DexProfileData[] dexProfileDataArr) throws IOException {
        ArrayList arrayList;
        int length;
        byte[] bArr2 = ProfileVersion.f19124a;
        int i2 = 0;
        if (!Arrays.equals(bArr, bArr2)) {
            byte[] bArr3 = ProfileVersion.f19125b;
            if (Arrays.equals(bArr, bArr3)) {
                byte[] bArrA = a(dexProfileDataArr, bArr3);
                Encoding.e(byteArrayOutputStream, dexProfileDataArr.length, 1);
                Encoding.e(byteArrayOutputStream, bArrA.length, 4);
                byte[] bArrA2 = Encoding.a(bArrA);
                Encoding.e(byteArrayOutputStream, bArrA2.length, 4);
                byteArrayOutputStream.write(bArrA2);
                return true;
            }
            byte[] bArr4 = ProfileVersion.d;
            if (Arrays.equals(bArr, bArr4)) {
                Encoding.e(byteArrayOutputStream, dexProfileDataArr.length, 1);
                for (DexProfileData dexProfileData : dexProfileDataArr) {
                    int size = dexProfileData.f19112i.size() * 4;
                    String strB = b(dexProfileData.f19106a, dexProfileData.f19107b, bArr4);
                    Charset charset = StandardCharsets.UTF_8;
                    Encoding.f(byteArrayOutputStream, strB.getBytes(charset).length);
                    Encoding.f(byteArrayOutputStream, dexProfileData.f19111h.length);
                    Encoding.e(byteArrayOutputStream, size, 4);
                    Encoding.e(byteArrayOutputStream, dexProfileData.f19108c, 4);
                    byteArrayOutputStream.write(strB.getBytes(charset));
                    Iterator it = dexProfileData.f19112i.keySet().iterator();
                    while (it.hasNext()) {
                        Encoding.f(byteArrayOutputStream, ((Integer) it.next()).intValue());
                        Encoding.f(byteArrayOutputStream, 0);
                    }
                    for (int i3 : dexProfileData.f19111h) {
                        Encoding.f(byteArrayOutputStream, i3);
                    }
                }
                return true;
            }
            byte[] bArr5 = ProfileVersion.f19126c;
            if (Arrays.equals(bArr, bArr5)) {
                byte[] bArrA3 = a(dexProfileDataArr, bArr5);
                Encoding.e(byteArrayOutputStream, dexProfileDataArr.length, 1);
                Encoding.e(byteArrayOutputStream, bArrA3.length, 4);
                byte[] bArrA4 = Encoding.a(bArrA3);
                Encoding.e(byteArrayOutputStream, bArrA4.length, 4);
                byteArrayOutputStream.write(bArrA4);
                return true;
            }
            byte[] bArr6 = ProfileVersion.f19127e;
            if (!Arrays.equals(bArr, bArr6)) {
                return false;
            }
            Encoding.f(byteArrayOutputStream, dexProfileDataArr.length);
            for (DexProfileData dexProfileData2 : dexProfileDataArr) {
                String str = dexProfileData2.f19106a;
                TreeMap treeMap = dexProfileData2.f19112i;
                String strB2 = b(str, dexProfileData2.f19107b, bArr6);
                Charset charset2 = StandardCharsets.UTF_8;
                Encoding.f(byteArrayOutputStream, strB2.getBytes(charset2).length);
                Encoding.f(byteArrayOutputStream, treeMap.size());
                Encoding.f(byteArrayOutputStream, dexProfileData2.f19111h.length);
                Encoding.e(byteArrayOutputStream, dexProfileData2.f19108c, 4);
                byteArrayOutputStream.write(strB2.getBytes(charset2));
                Iterator it2 = treeMap.keySet().iterator();
                while (it2.hasNext()) {
                    Encoding.f(byteArrayOutputStream, ((Integer) it2.next()).intValue());
                }
                for (int i4 : dexProfileData2.f19111h) {
                    Encoding.f(byteArrayOutputStream, i4);
                }
            }
            return true;
        }
        ArrayList arrayList2 = new ArrayList(3);
        ArrayList arrayList3 = new ArrayList(3);
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        try {
            Encoding.f(byteArrayOutputStream2, dexProfileDataArr.length);
            int i5 = 2;
            int i6 = 2;
            for (DexProfileData dexProfileData3 : dexProfileDataArr) {
                Encoding.e(byteArrayOutputStream2, dexProfileData3.f19108c, 4);
                Encoding.e(byteArrayOutputStream2, dexProfileData3.d, 4);
                Encoding.e(byteArrayOutputStream2, dexProfileData3.g, 4);
                String strB3 = b(dexProfileData3.f19106a, dexProfileData3.f19107b, bArr2);
                Charset charset3 = StandardCharsets.UTF_8;
                int length2 = strB3.getBytes(charset3).length;
                Encoding.f(byteArrayOutputStream2, length2);
                i6 = i6 + 14 + length2;
                byteArrayOutputStream2.write(strB3.getBytes(charset3));
            }
            byte[] byteArray = byteArrayOutputStream2.toByteArray();
            if (i6 != byteArray.length) {
                throw new IllegalStateException("Expected size " + i6 + ", does not match actual size " + byteArray.length);
            }
            WritableFileSection writableFileSection = new WritableFileSection(FileSectionType.DEX_FILES, byteArray, false);
            byteArrayOutputStream2.close();
            arrayList2.add(writableFileSection);
            ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
            int i7 = 0;
            for (int i8 = 0; i8 < dexProfileDataArr.length; i8++) {
                try {
                    DexProfileData dexProfileData4 = dexProfileDataArr[i8];
                    Encoding.f(byteArrayOutputStream3, i8);
                    Encoding.f(byteArrayOutputStream3, dexProfileData4.f19109e);
                    i7 = i7 + 4 + (dexProfileData4.f19109e * i5);
                    int[] iArr = dexProfileData4.f19111h;
                    int length3 = iArr.length;
                    int i9 = 0;
                    int i10 = 0;
                    while (i9 < length3) {
                        int i11 = iArr[i9];
                        Encoding.f(byteArrayOutputStream3, i11 - i10);
                        i9++;
                        i5 = i5;
                        i10 = i11;
                    }
                } catch (Throwable th) {
                    try {
                        byteArrayOutputStream3.close();
                        throw th;
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                        throw th;
                    }
                }
            }
            byte[] byteArray2 = byteArrayOutputStream3.toByteArray();
            if (i7 != byteArray2.length) {
                throw new IllegalStateException("Expected size " + i7 + ", does not match actual size " + byteArray2.length);
            }
            WritableFileSection writableFileSection2 = new WritableFileSection(FileSectionType.CLASSES, byteArray2, true);
            byteArrayOutputStream3.close();
            arrayList2.add(writableFileSection2);
            ByteArrayOutputStream byteArrayOutputStream4 = new ByteArrayOutputStream();
            int i12 = 0;
            int i13 = 0;
            while (i12 < dexProfileDataArr.length) {
                try {
                    DexProfileData dexProfileData5 = dexProfileDataArr[i12];
                    Iterator it3 = dexProfileData5.f19112i.entrySet().iterator();
                    int iIntValue = i2;
                    while (it3.hasNext()) {
                        iIntValue |= ((Integer) ((Map.Entry) it3.next()).getValue()).intValue();
                    }
                    ByteArrayOutputStream byteArrayOutputStream5 = new ByteArrayOutputStream();
                    try {
                        l(byteArrayOutputStream5, iIntValue, dexProfileData5);
                        byte[] byteArray3 = byteArrayOutputStream5.toByteArray();
                        byteArrayOutputStream5.close();
                        ByteArrayOutputStream byteArrayOutputStream6 = new ByteArrayOutputStream();
                        try {
                            m(byteArrayOutputStream6, dexProfileData5);
                            byte[] byteArray4 = byteArrayOutputStream6.toByteArray();
                            byteArrayOutputStream6.close();
                            Encoding.f(byteArrayOutputStream4, i12);
                            int length4 = byteArray3.length + 2 + byteArray4.length;
                            int i14 = i13 + 6;
                            ArrayList arrayList4 = arrayList3;
                            Encoding.e(byteArrayOutputStream4, length4, 4);
                            Encoding.f(byteArrayOutputStream4, iIntValue);
                            byteArrayOutputStream4.write(byteArray3);
                            byteArrayOutputStream4.write(byteArray4);
                            i13 = i14 + length4;
                            i12++;
                            arrayList3 = arrayList4;
                            i2 = 0;
                        } catch (Throwable th3) {
                            try {
                                byteArrayOutputStream6.close();
                                throw th3;
                            } catch (Throwable th4) {
                                th3.addSuppressed(th4);
                                throw th3;
                            }
                        }
                    } catch (Throwable th5) {
                        try {
                            byteArrayOutputStream5.close();
                            throw th5;
                        } catch (Throwable th6) {
                            th5.addSuppressed(th6);
                            throw th5;
                        }
                    }
                } catch (Throwable th7) {
                    try {
                        byteArrayOutputStream4.close();
                        throw th7;
                    } catch (Throwable th8) {
                        th7.addSuppressed(th8);
                        throw th7;
                    }
                }
            }
            ArrayList arrayList5 = arrayList3;
            byte[] byteArray5 = byteArrayOutputStream4.toByteArray();
            if (i13 != byteArray5.length) {
                throw new IllegalStateException("Expected size " + i13 + ", does not match actual size " + byteArray5.length);
            }
            WritableFileSection writableFileSection3 = new WritableFileSection(FileSectionType.METHODS, byteArray5, true);
            byteArrayOutputStream4.close();
            arrayList2.add(writableFileSection3);
            long size2 = 12 + ((long) (arrayList2.size() * 16));
            Encoding.e(byteArrayOutputStream, arrayList2.size(), 4);
            int i15 = 0;
            while (i15 < arrayList2.size()) {
                WritableFileSection writableFileSection4 = (WritableFileSection) arrayList2.get(i15);
                FileSectionType fileSectionType = writableFileSection4.f19129a;
                byte[] bArr7 = writableFileSection4.f19130b;
                Encoding.e(byteArrayOutputStream, fileSectionType.a(), 4);
                Encoding.e(byteArrayOutputStream, size2, 4);
                if (writableFileSection4.f19131c) {
                    long length5 = bArr7.length;
                    byte[] bArrA5 = Encoding.a(bArr7);
                    arrayList = arrayList5;
                    arrayList.add(bArrA5);
                    Encoding.e(byteArrayOutputStream, bArrA5.length, 4);
                    Encoding.e(byteArrayOutputStream, length5, 4);
                    length = bArrA5.length;
                } else {
                    arrayList = arrayList5;
                    arrayList.add(bArr7);
                    Encoding.e(byteArrayOutputStream, bArr7.length, 4);
                    Encoding.e(byteArrayOutputStream, 0L, 4);
                    length = bArr7.length;
                }
                size2 += (long) length;
                i15++;
                arrayList5 = arrayList;
            }
            ArrayList arrayList6 = arrayList5;
            for (int i16 = 0; i16 < arrayList6.size(); i16++) {
                byteArrayOutputStream.write((byte[]) arrayList6.get(i16));
            }
            return true;
        } catch (Throwable th9) {
            try {
                byteArrayOutputStream2.close();
                throw th9;
            } catch (Throwable th10) {
                th9.addSuppressed(th10);
                throw th9;
            }
        }
    }

    public static void j(ByteArrayOutputStream byteArrayOutputStream, DexProfileData dexProfileData) throws IOException {
        m(byteArrayOutputStream, dexProfileData);
        int i2 = dexProfileData.g;
        int[] iArr = dexProfileData.f19111h;
        int length = iArr.length;
        int i3 = 0;
        int i4 = 0;
        while (i3 < length) {
            int i5 = iArr[i3];
            Encoding.f(byteArrayOutputStream, i5 - i4);
            i3++;
            i4 = i5;
        }
        byte[] bArr = new byte[(((i2 * 2) + 7) & (-8)) / 8];
        for (Map.Entry entry : dexProfileData.f19112i.entrySet()) {
            int iIntValue = ((Integer) entry.getKey()).intValue();
            int iIntValue2 = ((Integer) entry.getValue()).intValue();
            if ((iIntValue2 & 2) != 0) {
                int i6 = iIntValue / 8;
                bArr[i6] = (byte) (bArr[i6] | (1 << (iIntValue % 8)));
            }
            if ((iIntValue2 & 4) != 0) {
                int i7 = iIntValue + i2;
                int i8 = i7 / 8;
                bArr[i8] = (byte) ((1 << (i7 % 8)) | bArr[i8]);
            }
        }
        byteArrayOutputStream.write(bArr);
    }

    public static void k(ByteArrayOutputStream byteArrayOutputStream, DexProfileData dexProfileData, String str) throws IOException {
        Charset charset = StandardCharsets.UTF_8;
        Encoding.f(byteArrayOutputStream, str.getBytes(charset).length);
        Encoding.f(byteArrayOutputStream, dexProfileData.f19109e);
        Encoding.e(byteArrayOutputStream, dexProfileData.f19110f, 4);
        Encoding.e(byteArrayOutputStream, dexProfileData.f19108c, 4);
        Encoding.e(byteArrayOutputStream, dexProfileData.g, 4);
        byteArrayOutputStream.write(str.getBytes(charset));
    }

    public static void l(ByteArrayOutputStream byteArrayOutputStream, int i2, DexProfileData dexProfileData) throws IOException {
        int i3 = dexProfileData.g;
        byte[] bArr = new byte[(((Integer.bitCount(i2 & (-2)) * i3) + 7) & (-8)) / 8];
        for (Map.Entry entry : dexProfileData.f19112i.entrySet()) {
            int iIntValue = ((Integer) entry.getKey()).intValue();
            int iIntValue2 = ((Integer) entry.getValue()).intValue();
            int i4 = 0;
            for (int i5 = 1; i5 <= 4; i5 <<= 1) {
                if (i5 != 1 && (i5 & i2) != 0) {
                    if ((i5 & iIntValue2) == i5) {
                        int i6 = (i4 * i3) + iIntValue;
                        int i7 = i6 / 8;
                        bArr[i7] = (byte) ((1 << (i6 % 8)) | bArr[i7]);
                    }
                    i4++;
                }
            }
        }
        byteArrayOutputStream.write(bArr);
    }

    public static void m(ByteArrayOutputStream byteArrayOutputStream, DexProfileData dexProfileData) throws IOException {
        int i2 = 0;
        for (Map.Entry entry : dexProfileData.f19112i.entrySet()) {
            int iIntValue = ((Integer) entry.getKey()).intValue();
            if ((((Integer) entry.getValue()).intValue() & 1) != 0) {
                Encoding.f(byteArrayOutputStream, iIntValue - i2);
                Encoding.f(byteArrayOutputStream, 0);
                i2 = iIntValue;
            }
        }
    }
}
