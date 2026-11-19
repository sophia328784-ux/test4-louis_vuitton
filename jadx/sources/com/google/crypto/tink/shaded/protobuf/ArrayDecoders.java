package com.google.crypto.tink.shaded.protobuf;

import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes2.dex */
@CheckReturnValue
abstract class ArrayDecoders {

    public static final class Registers {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f34138a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f34139b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Object f34140c;
        public final ExtensionRegistryLite d;

        public Registers(ExtensionRegistryLite extensionRegistryLite) {
            extensionRegistryLite.getClass();
            this.d = extensionRegistryLite;
        }
    }

    public static int a(byte[] bArr, int i2, Registers registers) throws InvalidProtocolBufferException {
        int i3 = i(bArr, i2, registers);
        int i4 = registers.f34138a;
        if (i4 < 0) {
            throw InvalidProtocolBufferException.e();
        }
        if (i4 > bArr.length - i3) {
            throw InvalidProtocolBufferException.g();
        }
        if (i4 == 0) {
            registers.f34140c = ByteString.f34141c;
            return i3;
        }
        registers.f34140c = ByteString.h(i3, i4, bArr);
        return i3 + i4;
    }

    public static int b(int i2, byte[] bArr) {
        return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
    }

    public static long c(int i2, byte[] bArr) {
        return ((((long) bArr[i2 + 7]) & 255) << 56) | (((long) bArr[i2]) & 255) | ((((long) bArr[i2 + 1]) & 255) << 8) | ((((long) bArr[i2 + 2]) & 255) << 16) | ((((long) bArr[i2 + 3]) & 255) << 24) | ((((long) bArr[i2 + 4]) & 255) << 32) | ((((long) bArr[i2 + 5]) & 255) << 40) | ((((long) bArr[i2 + 6]) & 255) << 48);
    }

    public static int d(Schema schema, int i2, byte[] bArr, int i3, int i4, Internal.ProtobufList protobufList, Registers registers) throws InvalidProtocolBufferException {
        Object objB = schema.b();
        Schema schema2 = schema;
        byte[] bArr2 = bArr;
        int i5 = i4;
        Registers registers2 = registers;
        int iL = l(objB, schema2, bArr2, i3, i5, registers2);
        schema2.c(objB);
        registers2.f34140c = objB;
        protobufList.add(objB);
        while (iL < i5) {
            Registers registers3 = registers2;
            int i6 = i5;
            int i7 = i(bArr2, iL, registers3);
            if (i2 != registers3.f34138a) {
                break;
            }
            byte[] bArr3 = bArr2;
            Schema schema3 = schema2;
            Object objB2 = schema3.b();
            iL = l(objB2, schema3, bArr3, i7, i6, registers3);
            schema2 = schema3;
            bArr2 = bArr3;
            i5 = i6;
            registers2 = registers3;
            schema2.c(objB2);
            registers2.f34140c = objB2;
            protobufList.add(objB2);
        }
        return iL;
    }

    public static int e(byte[] bArr, int i2, Registers registers) throws InvalidProtocolBufferException {
        int i3 = i(bArr, i2, registers);
        int i4 = registers.f34138a;
        if (i4 < 0) {
            throw InvalidProtocolBufferException.e();
        }
        if (i4 == 0) {
            registers.f34140c = "";
            return i3;
        }
        registers.f34140c = new String(bArr, i3, i4, Internal.f34190a);
        return i3 + i4;
    }

    public static int f(byte[] bArr, int i2, Registers registers) throws InvalidProtocolBufferException {
        int i3 = i(bArr, i2, registers);
        int i4 = registers.f34138a;
        if (i4 < 0) {
            throw InvalidProtocolBufferException.e();
        }
        if (i4 == 0) {
            registers.f34140c = "";
            return i3;
        }
        registers.f34140c = Utf8.f34271a.a(i3, i4, bArr);
        return i3 + i4;
    }

    public static int g(int i2, byte[] bArr, int i3, int i4, UnknownFieldSetLite unknownFieldSetLite, Registers registers) throws InvalidProtocolBufferException {
        if ((i2 >>> 3) == 0) {
            throw InvalidProtocolBufferException.a();
        }
        int i5 = i2 & 7;
        if (i5 == 0) {
            int iK = k(bArr, i3, registers);
            unknownFieldSetLite.d(i2, Long.valueOf(registers.f34139b));
            return iK;
        }
        if (i5 == 1) {
            unknownFieldSetLite.d(i2, Long.valueOf(c(i3, bArr)));
            return i3 + 8;
        }
        if (i5 == 2) {
            int i6 = i(bArr, i3, registers);
            int i7 = registers.f34138a;
            if (i7 < 0) {
                throw InvalidProtocolBufferException.e();
            }
            if (i7 > bArr.length - i6) {
                throw InvalidProtocolBufferException.g();
            }
            if (i7 == 0) {
                unknownFieldSetLite.d(i2, ByteString.f34141c);
            } else {
                unknownFieldSetLite.d(i2, ByteString.h(i6, i7, bArr));
            }
            return i6 + i7;
        }
        if (i5 != 3) {
            if (i5 != 5) {
                throw InvalidProtocolBufferException.a();
            }
            unknownFieldSetLite.d(i2, Integer.valueOf(b(i3, bArr)));
            return i3 + 4;
        }
        UnknownFieldSetLite unknownFieldSetLiteC = UnknownFieldSetLite.c();
        int i8 = (i2 & (-8)) | 4;
        int i9 = 0;
        while (i3 < i4) {
            int i10 = i(bArr, i3, registers);
            i9 = registers.f34138a;
            if (i9 == i8) {
                i3 = i10;
                break;
            }
            i3 = g(i9, bArr, i10, i4, unknownFieldSetLiteC, registers);
        }
        if (i3 > i4 || i9 != i8) {
            throw InvalidProtocolBufferException.f();
        }
        unknownFieldSetLite.d(i2, unknownFieldSetLiteC);
        return i3;
    }

    public static int h(int i2, byte[] bArr, int i3, Registers registers) {
        int i4 = i2 & CertificateBody.profileType;
        int i5 = i3 + 1;
        byte b2 = bArr[i3];
        if (b2 >= 0) {
            registers.f34138a = i4 | (b2 << 7);
            return i5;
        }
        int i6 = i4 | ((b2 & 127) << 7);
        int i7 = i3 + 2;
        byte b3 = bArr[i5];
        if (b3 >= 0) {
            registers.f34138a = i6 | (b3 << 14);
            return i7;
        }
        int i8 = i6 | ((b3 & 127) << 14);
        int i9 = i3 + 3;
        byte b4 = bArr[i7];
        if (b4 >= 0) {
            registers.f34138a = i8 | (b4 << 21);
            return i9;
        }
        int i10 = i8 | ((b4 & 127) << 21);
        int i11 = i3 + 4;
        byte b5 = bArr[i9];
        if (b5 >= 0) {
            registers.f34138a = i10 | (b5 << 28);
            return i11;
        }
        int i12 = i10 | ((b5 & 127) << 28);
        while (true) {
            int i13 = i11 + 1;
            if (bArr[i11] >= 0) {
                registers.f34138a = i12;
                return i13;
            }
            i11 = i13;
        }
    }

    public static int i(byte[] bArr, int i2, Registers registers) {
        int i3 = i2 + 1;
        byte b2 = bArr[i2];
        if (b2 < 0) {
            return h(b2, bArr, i3, registers);
        }
        registers.f34138a = b2;
        return i3;
    }

    public static int j(int i2, byte[] bArr, int i3, int i4, Internal.ProtobufList protobufList, Registers registers) {
        IntArrayList intArrayList = (IntArrayList) protobufList;
        int i5 = i(bArr, i3, registers);
        intArrayList.h(registers.f34138a);
        while (i5 < i4) {
            int i6 = i(bArr, i5, registers);
            if (i2 != registers.f34138a) {
                break;
            }
            i5 = i(bArr, i6, registers);
            intArrayList.h(registers.f34138a);
        }
        return i5;
    }

    public static int k(byte[] bArr, int i2, Registers registers) {
        int i3 = i2 + 1;
        long j2 = bArr[i2];
        if (j2 >= 0) {
            registers.f34139b = j2;
            return i3;
        }
        int i4 = i2 + 2;
        byte b2 = bArr[i3];
        long j3 = (j2 & 127) | (((long) (b2 & 127)) << 7);
        int i5 = 7;
        while (b2 < 0) {
            int i6 = i4 + 1;
            byte b3 = bArr[i4];
            i5 += 7;
            j3 |= ((long) (b3 & 127)) << i5;
            b2 = b3;
            i4 = i6;
        }
        registers.f34139b = j3;
        return i4;
    }

    public static int l(Object obj, Schema schema, byte[] bArr, int i2, int i3, Registers registers) throws InvalidProtocolBufferException {
        int iH = i2 + 1;
        int i4 = bArr[i2];
        if (i4 < 0) {
            iH = h(i4, bArr, iH, registers);
            i4 = registers.f34138a;
        }
        int i5 = iH;
        if (i4 < 0 || i4 > i3 - i5) {
            throw InvalidProtocolBufferException.g();
        }
        int i6 = i5 + i4;
        schema.e(obj, bArr, i5, i6, registers);
        registers.f34140c = obj;
        return i6;
    }

    public static int m(int i2, byte[] bArr, int i3, int i4, Registers registers) throws InvalidProtocolBufferException {
        if ((i2 >>> 3) == 0) {
            throw InvalidProtocolBufferException.a();
        }
        int i5 = i2 & 7;
        if (i5 == 0) {
            return k(bArr, i3, registers);
        }
        if (i5 == 1) {
            return i3 + 8;
        }
        if (i5 == 2) {
            return i(bArr, i3, registers) + registers.f34138a;
        }
        if (i5 != 3) {
            if (i5 == 5) {
                return i3 + 4;
            }
            throw InvalidProtocolBufferException.a();
        }
        int i6 = (i2 & (-8)) | 4;
        int i7 = 0;
        while (i3 < i4) {
            i3 = i(bArr, i3, registers);
            i7 = registers.f34138a;
            if (i7 == i6) {
                break;
            }
            i3 = m(i7, bArr, i3, i4, registers);
        }
        if (i3 > i4 || i7 != i6) {
            throw InvalidProtocolBufferException.f();
        }
        return i3;
    }
}
