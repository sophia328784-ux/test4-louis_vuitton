package com.google.crypto.tink.subtle;

import defpackage.md;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Base64 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Charset f34288a = Charset.forName("UTF-8");

    public static abstract class Coder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public byte[] f34289a;
    }

    public static class Decoder extends Coder {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final int[] f34290e = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final int[] f34291f = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f34292b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f34293c;
        public final int[] d;

        public Decoder(int i2, byte[] bArr) {
            this.f34289a = bArr;
            this.d = (i2 & 8) == 0 ? f34290e : f34291f;
            this.f34292b = 0;
            this.f34293c = 0;
        }
    }

    public static class Encoder extends Coder {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final byte[] f34294i = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final byte[] f34295j = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final byte[] f34296b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f34297c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f34298e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final boolean f34299f;
        public final boolean g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final byte[] f34300h;

        public Encoder(int i2, byte[] bArr) {
            this.f34289a = bArr;
            this.f34298e = (i2 & 1) == 0;
            boolean z = (i2 & 2) == 0;
            this.f34299f = z;
            this.g = (i2 & 4) != 0;
            this.f34300h = (i2 & 8) == 0 ? f34294i : f34295j;
            this.f34296b = new byte[2];
            this.f34297c = 0;
            this.d = z ? 19 : -1;
        }
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00d4  */
    public static byte[] a(String str) {
        byte[] bytes = str.getBytes(f34288a);
        int length = bytes.length;
        Decoder decoder = new Decoder(0, new byte[(length * 3) / 4]);
        int i2 = decoder.f34292b;
        if (i2 != 6) {
            byte[] bArr = decoder.f34289a;
            int i3 = decoder.f34293c;
            int i4 = 0;
            int i5 = 0;
            while (i4 < length) {
                int[] iArr = decoder.d;
                if (i2 == 0) {
                    while (true) {
                        int i6 = i4 + 4;
                        if (i6 > length) {
                            break;
                        }
                        i3 = iArr[bytes[i4 + 3] & 255] | (iArr[bytes[i4 + 1] & 255] << 12) | (iArr[bytes[i4] & 255] << 18) | (iArr[bytes[i4 + 2] & 255] << 6);
                        if (i3 < 0) {
                            break;
                        }
                        bArr[i5 + 2] = (byte) i3;
                        bArr[i5 + 1] = (byte) (i3 >> 8);
                        bArr[i5] = (byte) (i3 >> 16);
                        i5 += 3;
                        i4 = i6;
                    }
                    if (i4 >= length) {
                        break;
                    }
                }
                int i7 = i4 + 1;
                int i8 = iArr[bytes[i4] & 255];
                if (i2 != 0) {
                    if (i2 == 1) {
                        if (i8 >= 0) {
                            i3 = (i3 << 6) | i8;
                        } else if (i8 != -1) {
                            decoder.f34292b = 6;
                        }
                        i4 = i7;
                    } else if (i2 == 2) {
                        if (i8 >= 0) {
                            i3 = (i3 << 6) | i8;
                        } else if (i8 == -2) {
                            bArr[i5] = (byte) (i3 >> 4);
                            i5++;
                            i2 = 4;
                        } else if (i8 != -1) {
                            decoder.f34292b = 6;
                        }
                        i4 = i7;
                    } else if (i2 == 3) {
                        if (i8 >= 0) {
                            int i9 = (i3 << 6) | i8;
                            bArr[i5 + 2] = (byte) i9;
                            bArr[i5 + 1] = (byte) (i9 >> 8);
                            bArr[i5] = (byte) (i9 >> 16);
                            i5 += 3;
                            i3 = i9;
                            i2 = 0;
                        } else if (i8 == -2) {
                            bArr[i5 + 1] = (byte) (i3 >> 2);
                            bArr[i5] = (byte) (i3 >> 10);
                            i5 += 2;
                            i2 = 5;
                        } else if (i8 != -1) {
                            decoder.f34292b = 6;
                        }
                        i4 = i7;
                    } else if (i2 == 4) {
                        if (i8 != -2) {
                            if (i8 != -1) {
                                decoder.f34292b = 6;
                            }
                        }
                        i4 = i7;
                    } else if (i2 == 5 && i8 != -1) {
                        decoder.f34292b = 6;
                    } else {
                        i4 = i7;
                    }
                    i2++;
                    i4 = i7;
                } else {
                    if (i8 >= 0) {
                        i2++;
                        i3 = i8;
                    } else if (i8 != -1) {
                        decoder.f34292b = 6;
                    }
                    i4 = i7;
                }
            }
            if (i2 != 1) {
                if (i2 == 2) {
                    bArr[i5] = (byte) (i3 >> 4);
                    i5++;
                } else if (i2 == 3) {
                    int i10 = i5 + 1;
                    bArr[i5] = (byte) (i3 >> 10);
                    i5 += 2;
                    bArr[i10] = (byte) (i3 >> 2);
                } else if (i2 == 4) {
                    decoder.f34292b = 6;
                }
                decoder.f34292b = i2;
                byte[] bArr2 = decoder.f34289a;
                if (i5 == bArr2.length) {
                    return bArr2;
                }
                byte[] bArr3 = new byte[i5];
                System.arraycopy(bArr2, 0, bArr3, 0, i5);
                return bArr3;
            }
            decoder.f34292b = 6;
        }
        md.n("bad base-64");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0080  */
    /* JADX WARN: Code duplicated, block: B:43:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:46:0x010c  */
    /* JADX WARN: Code duplicated, block: B:47:0x0111 A[EDGE_INSN: B:47:0x0111->B:38:0x00bd BREAK  A[LOOP:0: B:41:0x00c4->B:48:0x0119]] */
    /* JADX WARN: Code duplicated, block: B:48:0x0119 A[LOOP:0: B:41:0x00c4->B:48:0x0119, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:88:0x010a A[SYNTHETIC] */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static byte[] b(byte[] r23) {
        /*
            Method dump skipped, instruction units count: 467
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.subtle.Base64.b(byte[]):byte[]");
    }
}
