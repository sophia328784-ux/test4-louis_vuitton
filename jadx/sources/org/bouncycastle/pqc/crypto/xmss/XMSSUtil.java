package org.bouncycastle.pqc.crypto.xmss;

import defpackage.az;
import defpackage.md;
import defpackage.r81;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InvalidClassException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamClass;
import java.util.HashSet;
import java.util.Set;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.encoders.Hex;

/* JADX INFO: loaded from: classes5.dex */
public class XMSSUtil {

    public static class CheckingStream extends ObjectInputStream {
        private static final Set components;
        private boolean found;
        private final Class mainClass;

        static {
            HashSet hashSet = new HashSet();
            components = hashSet;
            hashSet.add("java.util.TreeMap");
            hashSet.add("java.lang.Integer");
            hashSet.add("java.lang.Number");
            hashSet.add("org.bouncycastle.pqc.crypto.xmss.BDS");
            hashSet.add("java.util.ArrayList");
            hashSet.add("org.bouncycastle.pqc.crypto.xmss.XMSSNode");
            hashSet.add("[B");
            hashSet.add("java.util.LinkedList");
            hashSet.add("java.util.Stack");
            hashSet.add("java.util.Vector");
            hashSet.add("[Ljava.lang.Object;");
            hashSet.add("org.bouncycastle.pqc.crypto.xmss.BDSTreeHash");
        }

        public CheckingStream(Class cls, InputStream inputStream) throws IOException {
            super(inputStream);
            this.found = false;
            this.mainClass = cls;
        }

        @Override // java.io.ObjectInputStream
        public Class<?> resolveClass(ObjectStreamClass objectStreamClass) throws IOException, ClassNotFoundException {
            if (this.found) {
                if (!components.contains(objectStreamClass.getName())) {
                    throw new InvalidClassException("unexpected class: ", objectStreamClass.getName());
                }
            } else {
                if (!objectStreamClass.getName().equals(this.mainClass.getName())) {
                    throw new InvalidClassException("unexpected class: ", objectStreamClass.getName());
                }
                this.found = true;
            }
            return super.resolveClass(objectStreamClass);
        }
    }

    public static boolean areEqual(byte[][] bArr, byte[][] bArr2) {
        if (hasNullPointer(bArr) || hasNullPointer(bArr2)) {
            r81.d("a or b == null");
            return false;
        }
        for (int i2 = 0; i2 < bArr.length; i2++) {
            if (!Arrays.areEqual(bArr[i2], bArr2[i2])) {
                return false;
            }
        }
        return true;
    }

    public static long bytesToXBigEndian(byte[] bArr, int i2, int i3) {
        long j2 = 0;
        if (bArr == null) {
            r81.d("in == null");
            return 0L;
        }
        for (int i4 = i2; i4 < i2 + i3; i4++) {
            j2 = (j2 << 8) | ((long) (bArr[i4] & 255));
        }
        return j2;
    }

    public static int calculateTau(int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            if (((i2 >> i4) & 1) == 0) {
                return i4;
            }
        }
        return 0;
    }

    public static byte[][] cloneArray(byte[][] bArr) {
        if (hasNullPointer(bArr)) {
            r81.d("in has null pointers");
            return null;
        }
        byte[][] bArr2 = new byte[bArr.length][];
        for (int i2 = 0; i2 < bArr.length; i2++) {
            byte[] bArr3 = new byte[bArr[i2].length];
            bArr2[i2] = bArr3;
            byte[] bArr4 = bArr[i2];
            System.arraycopy(bArr4, 0, bArr3, 0, bArr4.length);
        }
        return bArr2;
    }

    public static void copyBytesAtOffset(byte[] bArr, byte[] bArr2, int i2) {
        if (bArr == null) {
            r81.d("dst == null");
            return;
        }
        if (bArr2 == null) {
            r81.d("src == null");
            return;
        }
        if (i2 < 0) {
            md.n("offset hast to be >= 0");
            return;
        }
        if (bArr2.length + i2 > bArr.length) {
            md.n("src length + offset must not be greater than size of destination");
            return;
        }
        for (int i3 = 0; i3 < bArr2.length; i3++) {
            bArr[i2 + i3] = bArr2[i3];
        }
    }

    public static Object deserialize(byte[] bArr, Class cls) throws ClassNotFoundException, IOException {
        String str;
        CheckingStream checkingStream = new CheckingStream(cls, new ByteArrayInputStream(bArr));
        Object object = checkingStream.readObject();
        if (checkingStream.available() != 0) {
            str = "unexpected data found at end of ObjectInputStream";
        } else {
            if (cls.isInstance(object)) {
                return object;
            }
            str = "unexpected class found in ObjectInputStream";
        }
        az.o(str);
        return null;
    }

    public static void dumpByteArray(byte[][] bArr) {
        if (hasNullPointer(bArr)) {
            r81.d("x has null pointers");
            return;
        }
        for (byte[] bArr2 : bArr) {
            System.out.println(Hex.toHexString(bArr2));
        }
    }

    public static byte[] extractBytesAtOffset(byte[] bArr, int i2, int i3) {
        if (bArr == null) {
            r81.d("src == null");
            return null;
        }
        if (i2 < 0) {
            md.n("offset hast to be >= 0");
            return null;
        }
        if (i3 < 0) {
            md.n("length hast to be >= 0");
            return null;
        }
        if (i2 + i3 > bArr.length) {
            md.n("offset + length must not be greater then size of source array");
            return null;
        }
        byte[] bArr2 = new byte[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            bArr2[i4] = bArr[i2 + i4];
        }
        return bArr2;
    }

    public static int getDigestSize(Digest digest) {
        if (digest == null) {
            r81.d("digest == null");
            return 0;
        }
        String algorithmName = digest.getAlgorithmName();
        if (algorithmName.equals("SHAKE128")) {
            return 32;
        }
        if (algorithmName.equals("SHAKE256")) {
            return 64;
        }
        return digest.getDigestSize();
    }

    public static int getLeafIndex(long j2, int i2) {
        return (int) (j2 & ((1 << i2) - 1));
    }

    public static long getTreeIndex(long j2, int i2) {
        return j2 >> i2;
    }

    public static boolean hasNullPointer(byte[][] bArr) {
        if (bArr == null) {
            return true;
        }
        for (byte[] bArr2 : bArr) {
            if (bArr2 == null) {
                return true;
            }
        }
        return false;
    }

    public static boolean isIndexValid(int i2, long j2) {
        if (j2 >= 0) {
            return j2 < (1 << i2);
        }
        md.k("index must not be negative");
        return false;
    }

    public static boolean isNewAuthenticationPathNeeded(long j2, int i2, int i3) {
        return j2 != 0 && (j2 + 1) % ((long) Math.pow((double) (1 << i2), (double) i3)) == 0;
    }

    public static boolean isNewBDSInitNeeded(long j2, int i2, int i3) {
        return j2 != 0 && j2 % ((long) Math.pow((double) (1 << i2), (double) (i3 + 1))) == 0;
    }

    public static int log2(int i2) {
        int i3 = 0;
        while (true) {
            i2 >>= 1;
            if (i2 == 0) {
                return i3;
            }
            i3++;
        }
    }

    public static void longToBigEndian(long j2, byte[] bArr, int i2) {
        if (bArr == null) {
            r81.d("in == null");
            return;
        }
        if (bArr.length - i2 < 8) {
            md.n("not enough space in array");
            return;
        }
        bArr[i2] = (byte) ((j2 >> 56) & 255);
        bArr[i2 + 1] = (byte) ((j2 >> 48) & 255);
        bArr[i2 + 2] = (byte) ((j2 >> 40) & 255);
        bArr[i2 + 3] = (byte) ((j2 >> 32) & 255);
        bArr[i2 + 4] = (byte) ((j2 >> 24) & 255);
        bArr[i2 + 5] = (byte) ((j2 >> 16) & 255);
        bArr[i2 + 6] = (byte) ((j2 >> 8) & 255);
        bArr[i2 + 7] = (byte) (j2 & 255);
    }

    public static byte[] serialize(Object obj) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
        objectOutputStream.writeObject(obj);
        objectOutputStream.flush();
        return byteArrayOutputStream.toByteArray();
    }

    public static byte[] toBytesBigEndian(long j2, int i2) {
        byte[] bArr = new byte[i2];
        for (int i3 = i2 - 1; i3 >= 0; i3--) {
            bArr[i3] = (byte) j2;
            j2 >>>= 8;
        }
        return bArr;
    }

    public static byte[] cloneArray(byte[] bArr) {
        if (bArr == null) {
            r81.d("in == null");
            return null;
        }
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }
}
