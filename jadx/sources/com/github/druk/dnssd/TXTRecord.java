package com.github.druk.dnssd;

import defpackage.ct0;
import defpackage.d21;
import defpackage.tr;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes2.dex */
public class TXTRecord {
    protected static final byte kAttrSep = 61;
    protected byte[] fBytes;

    public TXTRecord(byte[] bArr) {
        this.fBytes = (byte[]) bArr.clone();
    }

    public boolean contains(String str) {
        int i2 = 0;
        while (true) {
            String key = getKey(i2);
            if (key == null) {
                return false;
            }
            if (str.compareToIgnoreCase(key) == 0) {
                return true;
            }
            i2++;
        }
    }

    public String getKey(int i2) {
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i2; i5++) {
            byte[] bArr = this.fBytes;
            if (i4 >= bArr.length) {
                break;
            }
            i4 += bArr[i4] + 1;
        }
        byte[] bArr2 = this.fBytes;
        if (i4 >= bArr2.length) {
            return null;
        }
        byte b2 = bArr2[i4];
        while (i3 < b2 && this.fBytes[i4 + i3 + 1] != 61) {
            i3++;
        }
        return new String(this.fBytes, i4 + 1, i3);
    }

    public byte[] getRawBytes() {
        return (byte[]) this.fBytes.clone();
    }

    public byte[] getValue(int i2) {
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            byte[] bArr = this.fBytes;
            if (i3 >= bArr.length) {
                break;
            }
            i3 += bArr[i3] + 1;
        }
        byte[] bArr2 = this.fBytes;
        if (i3 >= bArr2.length) {
            return null;
        }
        int i5 = bArr2[i3];
        for (int i6 = 0; i6 < i5; i6++) {
            byte[] bArr3 = this.fBytes;
            int i7 = i3 + i6;
            if (bArr3[i7 + 1] == 61) {
                int i8 = (i5 - i6) - 1;
                byte[] bArr4 = new byte[i8];
                System.arraycopy(bArr3, i7 + 2, bArr4, 0, i8);
                return bArr4;
            }
        }
        return null;
    }

    public String getValueAsString(int i2) {
        byte[] value = getValue(i2);
        if (value != null) {
            return new String(value);
        }
        return null;
    }

    public void insert(byte[] bArr, byte[] bArr2, int i2) {
        byte[] bArr3 = this.fBytes;
        int length = bArr2 != null ? bArr2.length : 0;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            byte[] bArr4 = this.fBytes;
            if (i3 >= bArr4.length) {
                break;
            }
            i3 += (bArr4[i3] + 1) & 255;
        }
        int length2 = bArr.length + length + (bArr2 != null ? 1 : 0);
        int length3 = bArr3.length + length2 + 1;
        byte[] bArr5 = new byte[length3];
        this.fBytes = bArr5;
        System.arraycopy(bArr3, 0, bArr5, 0, i3);
        int length4 = bArr3.length - i3;
        System.arraycopy(bArr3, i3, this.fBytes, length3 - length4, length4);
        byte[] bArr6 = this.fBytes;
        bArr6[i3] = (byte) length2;
        int i5 = i3 + 1;
        System.arraycopy(bArr, 0, bArr6, i5, bArr.length);
        if (bArr2 != null) {
            byte[] bArr7 = this.fBytes;
            bArr7[i5 + bArr.length] = kAttrSep;
            System.arraycopy(bArr2, 0, bArr7, i3 + bArr.length + 2, length);
        }
    }

    public int remove(String str) {
        int i2 = 0;
        int i3 = 0;
        while (true) {
            byte[] bArr = this.fBytes;
            if (i2 >= bArr.length) {
                return -1;
            }
            int i4 = bArr[i2];
            if (str.length() <= i4 && ((str.length() == i4 || this.fBytes[str.length() + i2 + 1] == 61) && str.compareToIgnoreCase(new String(this.fBytes, i2 + 1, str.length())) == 0)) {
                byte[] bArr2 = this.fBytes;
                byte[] bArr3 = new byte[(bArr2.length - i4) - 1];
                this.fBytes = bArr3;
                System.arraycopy(bArr2, 0, bArr3, 0, i2);
                System.arraycopy(bArr2, i2 + i4 + 1, this.fBytes, i2, ((bArr2.length - i2) - i4) - 1);
                return i3;
            }
            i2 += (i4 + 1) & 255;
            i3++;
        }
    }

    public void set(String str, byte[] bArr) {
        int length = bArr != null ? bArr.length : 0;
        try {
            byte[] bytes = str.getBytes("US-ASCII");
            for (byte b2 : bytes) {
                if (b2 == 61) {
                    ct0.c();
                    return;
                }
            }
            if (bytes.length + length >= 255) {
                throw new ArrayIndexOutOfBoundsException();
            }
            int iRemove = remove(str);
            if (iRemove == -1) {
                iRemove = size();
            }
            insert(bytes, bArr, iRemove);
        } catch (UnsupportedEncodingException unused) {
            ct0.c();
        }
    }

    public int size() {
        int i2 = 0;
        int i3 = 0;
        while (true) {
            byte[] bArr = this.fBytes;
            if (i2 >= bArr.length) {
                return i3;
            }
            i2 += (bArr[i2] + 1) & 255;
            i3++;
        }
    }

    public String toString() {
        String strH = null;
        int i2 = 0;
        while (true) {
            String key = getKey(i2);
            if (key == null) {
                break;
            }
            String str = String.valueOf(i2) + "={" + key;
            String valueAsString = getValueAsString(i2);
            String strK = valueAsString != null ? d21.k(str, "=", valueAsString, "}") : str.concat("}");
            strH = strH == null ? strK : tr.h(strH, ", ", strK);
            i2++;
        }
        return strH != null ? strH : "";
    }

    public TXTRecord() {
        this.fBytes = new byte[0];
    }

    public String getValueAsString(String str) {
        byte[] value = getValue(str);
        if (value != null) {
            return new String(value);
        }
        return null;
    }

    public byte[] getValue(String str) {
        int i2 = 0;
        while (true) {
            String key = getKey(i2);
            if (key == null) {
                return null;
            }
            if (str.compareToIgnoreCase(key) == 0) {
                return getValue(i2);
            }
            i2++;
        }
    }

    public void set(String str, String str2) {
        set(str, str2 != null ? str2.getBytes() : null);
    }
}
