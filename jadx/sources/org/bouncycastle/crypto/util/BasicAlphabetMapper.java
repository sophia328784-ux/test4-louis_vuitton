package org.bouncycastle.crypto.util;

import defpackage.md;
import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.crypto.AlphabetMapper;

/* JADX INFO: loaded from: classes5.dex */
public class BasicAlphabetMapper implements AlphabetMapper {
    private Map<Integer, Character> charMap;
    private Map<Character, Integer> indexMap;

    public BasicAlphabetMapper(char[] cArr) {
        this.indexMap = new HashMap();
        this.charMap = new HashMap();
        for (int i2 = 0; i2 != cArr.length; i2++) {
            if (this.indexMap.containsKey(Character.valueOf(cArr[i2]))) {
                throw new IllegalArgumentException("duplicate key detected in alphabet: " + cArr[i2]);
            }
            this.indexMap.put(Character.valueOf(cArr[i2]), Integer.valueOf(i2));
            this.charMap.put(Integer.valueOf(i2), Character.valueOf(cArr[i2]));
        }
    }

    @Override // org.bouncycastle.crypto.AlphabetMapper
    public char[] convertToChars(byte[] bArr) {
        int i2 = 0;
        if (this.charMap.size() <= 256) {
            char[] cArr = new char[bArr.length];
            while (i2 != bArr.length) {
                cArr[i2] = this.charMap.get(Integer.valueOf(bArr[i2] & 255)).charValue();
                i2++;
            }
            return cArr;
        }
        if ((bArr.length & 1) != 0) {
            md.n("two byte radix and input string odd length");
            return null;
        }
        char[] cArr2 = new char[bArr.length / 2];
        while (i2 != bArr.length) {
            cArr2[i2 / 2] = this.charMap.get(Integer.valueOf(((bArr[i2] << 8) & 65280) | (bArr[i2 + 1] & 255))).charValue();
            i2 += 2;
        }
        return cArr2;
    }

    @Override // org.bouncycastle.crypto.AlphabetMapper
    public byte[] convertToIndexes(char[] cArr) {
        int i2 = 0;
        if (this.indexMap.size() <= 256) {
            byte[] bArr = new byte[cArr.length];
            while (i2 != cArr.length) {
                bArr[i2] = this.indexMap.get(Character.valueOf(cArr[i2])).byteValue();
                i2++;
            }
            return bArr;
        }
        byte[] bArr2 = new byte[cArr.length * 2];
        while (i2 != cArr.length) {
            int iIntValue = this.indexMap.get(Character.valueOf(cArr[i2])).intValue();
            int i3 = i2 * 2;
            bArr2[i3] = (byte) ((iIntValue >> 8) & 255);
            bArr2[i3 + 1] = (byte) (iIntValue & 255);
            i2++;
        }
        return bArr2;
    }

    @Override // org.bouncycastle.crypto.AlphabetMapper
    public int getRadix() {
        return this.indexMap.size();
    }

    public BasicAlphabetMapper(String str) {
        this(str.toCharArray());
    }
}
