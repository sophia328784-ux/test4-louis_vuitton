package com.google.crypto.tink.shaded.protobuf;

import defpackage.cj;
import defpackage.ct0;
import defpackage.lc0;
import defpackage.md;
import defpackage.o60;
import defpackage.pq0;
import defpackage.r81;
import defpackage.tr;
import java.lang.reflect.Field;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.asn1.eac.EACTags;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes2.dex */
@CheckReturnValue
final class MessageSchema<T> implements Schema<T> {
    public static final int[] q = new int[0];
    public static final Unsafe r = UnsafeUtil.j();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f34213a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object[] f34214b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f34215c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MessageLite f34216e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f34217f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f34218h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int[] f34219i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f34220j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f34221k;
    public final NewInstanceSchema l;
    public final ListFieldSchema m;
    public final UnknownFieldSchema n;
    public final ExtensionSchema o;
    public final MapFieldSchema p;

    public MessageSchema(int[] iArr, Object[] objArr, int i2, int i3, MessageLite messageLite, boolean z, int[] iArr2, int i4, int i5, NewInstanceSchema newInstanceSchema, ListFieldSchema listFieldSchema, UnknownFieldSchema unknownFieldSchema, ExtensionSchema extensionSchema, MapFieldSchema mapFieldSchema) {
        this.f34213a = iArr;
        this.f34214b = objArr;
        this.f34215c = i2;
        this.d = i3;
        this.g = messageLite instanceof GeneratedMessageLite;
        this.f34218h = z;
        this.f34217f = extensionSchema != null && (messageLite instanceof GeneratedMessageLite.ExtendableMessage);
        this.f34219i = iArr2;
        this.f34220j = i4;
        this.f34221k = i5;
        this.l = newInstanceSchema;
        this.m = listFieldSchema;
        this.n = unknownFieldSchema;
        this.o = extensionSchema;
        this.f34216e = messageLite;
        this.p = mapFieldSchema;
    }

    public static MessageSchema C(MessageInfo messageInfo, NewInstanceSchema newInstanceSchema, ListFieldSchema listFieldSchema, UnknownFieldSchema unknownFieldSchema, ExtensionSchema extensionSchema, MapFieldSchema mapFieldSchema) {
        if (messageInfo instanceof RawMessageInfo) {
            return D((RawMessageInfo) messageInfo, newInstanceSchema, listFieldSchema, unknownFieldSchema, extensionSchema, mapFieldSchema);
        }
        r81.h();
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:123:0x026a  */
    /* JADX WARN: Code duplicated, block: B:125:0x026e  */
    /* JADX WARN: Code duplicated, block: B:128:0x0288  */
    /* JADX WARN: Code duplicated, block: B:129:0x028b  */
    /* JADX WARN: Code duplicated, block: B:177:0x0375  */
    public static MessageSchema D(RawMessageInfo rawMessageInfo, NewInstanceSchema newInstanceSchema, ListFieldSchema listFieldSchema, UnknownFieldSchema unknownFieldSchema, ExtensionSchema extensionSchema, MapFieldSchema mapFieldSchema) {
        int i2;
        int iCharAt;
        int iCharAt2;
        int iCharAt3;
        int iCharAt4;
        int i3;
        int i4;
        int[] iArr;
        int i5;
        char cCharAt;
        int i6;
        char cCharAt2;
        int i7;
        char cCharAt3;
        int i8;
        char cCharAt4;
        int i9;
        char cCharAt5;
        int i10;
        char cCharAt6;
        int i11;
        char cCharAt7;
        int i12;
        char cCharAt8;
        int[] iArr2;
        int i13;
        int i14;
        int iObjectFieldOffset;
        int iObjectFieldOffset2;
        int i15;
        int i16;
        Field fieldN;
        char cCharAt9;
        int i17;
        int i18;
        Object obj;
        Field fieldN2;
        int i19;
        Object obj2;
        Field fieldN3;
        int i20;
        char cCharAt10;
        int i21;
        char cCharAt11;
        int i22;
        int i23;
        char cCharAt12;
        int i24;
        char cCharAt13;
        int i25 = 0;
        boolean z = rawMessageInfo.c() == ProtoSyntax.PROTO3;
        String str = rawMessageInfo.f34233b;
        int length = str.length();
        if (str.charAt(0) >= 55296) {
            int i26 = 1;
            while (true) {
                i2 = i26 + 1;
                if (str.charAt(i26) < 55296) {
                    break;
                }
                i26 = i2;
            }
        } else {
            i2 = 1;
        }
        int i27 = i2 + 1;
        int iCharAt5 = str.charAt(i2);
        if (iCharAt5 >= 55296) {
            int i28 = iCharAt5 & 8191;
            int i29 = 13;
            while (true) {
                i24 = i27 + 1;
                cCharAt13 = str.charAt(i27);
                if (cCharAt13 < 55296) {
                    break;
                }
                i28 |= (cCharAt13 & 8191) << i29;
                i29 += 13;
                i27 = i24;
            }
            iCharAt5 = i28 | (cCharAt13 << i29);
            i27 = i24;
        }
        if (iCharAt5 == 0) {
            iCharAt = 0;
            iCharAt2 = 0;
            iCharAt3 = 0;
            i3 = 0;
            iCharAt4 = 0;
            iArr = q;
            i4 = 0;
        } else {
            int i30 = i27 + 1;
            int iCharAt6 = str.charAt(i27);
            if (iCharAt6 >= 55296) {
                int i31 = iCharAt6 & 8191;
                int i32 = 13;
                while (true) {
                    i12 = i30 + 1;
                    cCharAt8 = str.charAt(i30);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i31 |= (cCharAt8 & 8191) << i32;
                    i32 += 13;
                    i30 = i12;
                }
                iCharAt6 = i31 | (cCharAt8 << i32);
                i30 = i12;
            }
            int i33 = i30 + 1;
            int iCharAt7 = str.charAt(i30);
            if (iCharAt7 >= 55296) {
                int i34 = iCharAt7 & 8191;
                int i35 = 13;
                while (true) {
                    i11 = i33 + 1;
                    cCharAt7 = str.charAt(i33);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i34 |= (cCharAt7 & 8191) << i35;
                    i35 += 13;
                    i33 = i11;
                }
                iCharAt7 = i34 | (cCharAt7 << i35);
                i33 = i11;
            }
            int i36 = i33 + 1;
            iCharAt = str.charAt(i33);
            if (iCharAt >= 55296) {
                int i37 = iCharAt & 8191;
                int i38 = 13;
                while (true) {
                    i10 = i36 + 1;
                    cCharAt6 = str.charAt(i36);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i37 |= (cCharAt6 & 8191) << i38;
                    i38 += 13;
                    i36 = i10;
                }
                iCharAt = i37 | (cCharAt6 << i38);
                i36 = i10;
            }
            int i39 = i36 + 1;
            iCharAt2 = str.charAt(i36);
            if (iCharAt2 >= 55296) {
                int i40 = iCharAt2 & 8191;
                int i41 = 13;
                while (true) {
                    i9 = i39 + 1;
                    cCharAt5 = str.charAt(i39);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i40 |= (cCharAt5 & 8191) << i41;
                    i41 += 13;
                    i39 = i9;
                }
                iCharAt2 = i40 | (cCharAt5 << i41);
                i39 = i9;
            }
            int i42 = i39 + 1;
            int iCharAt8 = str.charAt(i39);
            if (iCharAt8 >= 55296) {
                int i43 = iCharAt8 & 8191;
                int i44 = 13;
                while (true) {
                    i8 = i42 + 1;
                    cCharAt4 = str.charAt(i42);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i43 |= (cCharAt4 & 8191) << i44;
                    i44 += 13;
                    i42 = i8;
                }
                iCharAt8 = i43 | (cCharAt4 << i44);
                i42 = i8;
            }
            int i45 = i42 + 1;
            iCharAt3 = str.charAt(i42);
            if (iCharAt3 >= 55296) {
                int i46 = iCharAt3 & 8191;
                int i47 = 13;
                while (true) {
                    i7 = i45 + 1;
                    cCharAt3 = str.charAt(i45);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i46 |= (cCharAt3 & 8191) << i47;
                    i47 += 13;
                    i45 = i7;
                }
                iCharAt3 = i46 | (cCharAt3 << i47);
                i45 = i7;
            }
            int i48 = i45 + 1;
            int iCharAt9 = str.charAt(i45);
            if (iCharAt9 >= 55296) {
                int i49 = iCharAt9 & 8191;
                int i50 = 13;
                while (true) {
                    i6 = i48 + 1;
                    cCharAt2 = str.charAt(i48);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i49 |= (cCharAt2 & 8191) << i50;
                    i50 += 13;
                    i48 = i6;
                }
                iCharAt9 = i49 | (cCharAt2 << i50);
                i48 = i6;
            }
            int i51 = i48 + 1;
            iCharAt4 = str.charAt(i48);
            if (iCharAt4 >= 55296) {
                int i52 = iCharAt4 & 8191;
                int i53 = i51;
                int i54 = 13;
                while (true) {
                    i5 = i53 + 1;
                    cCharAt = str.charAt(i53);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i52 |= (cCharAt & 8191) << i54;
                    i54 += 13;
                    i53 = i5;
                }
                iCharAt4 = i52 | (cCharAt << i54);
                i51 = i5;
            }
            int[] iArr3 = new int[iCharAt4 + iCharAt3 + iCharAt9];
            i3 = (iCharAt6 * 2) + iCharAt7;
            i4 = iCharAt8;
            iArr = iArr3;
            i25 = iCharAt6;
            i27 = i51;
        }
        Unsafe unsafe = r;
        Object[] objArr = rawMessageInfo.f34234c;
        Class<?> cls = rawMessageInfo.f34232a.getClass();
        int i55 = i25;
        int[] iArr4 = new int[i4 * 3];
        Object[] objArr2 = new Object[i4 * 2];
        int i56 = iCharAt3 + iCharAt4;
        int i57 = i56;
        int i58 = iCharAt4;
        int i59 = 0;
        int i60 = 0;
        while (i27 < length) {
            int i61 = i27 + 1;
            int iCharAt10 = str.charAt(i27);
            int i62 = length;
            if (iCharAt10 >= 55296) {
                int i63 = iCharAt10 & 8191;
                int i64 = i61;
                int i65 = 13;
                while (true) {
                    i23 = i64 + 1;
                    cCharAt12 = str.charAt(i64);
                    iArr2 = iArr4;
                    if (cCharAt12 < 55296) {
                        break;
                    }
                    i63 |= (cCharAt12 & 8191) << i65;
                    i65 += 13;
                    i64 = i23;
                    iArr4 = iArr2;
                }
                iCharAt10 = i63 | (cCharAt12 << i65);
                i13 = i23;
            } else {
                iArr2 = iArr4;
                i13 = i61;
            }
            int i66 = i13 + 1;
            int iCharAt11 = str.charAt(i13);
            if (iCharAt11 >= 55296) {
                int i67 = iCharAt11 & 8191;
                int i68 = i66;
                int i69 = 13;
                while (true) {
                    i21 = i68 + 1;
                    cCharAt11 = str.charAt(i68);
                    i22 = i67;
                    if (cCharAt11 < 55296) {
                        break;
                    }
                    i67 = i22 | ((cCharAt11 & 8191) << i69);
                    i69 += 13;
                    i68 = i21;
                }
                iCharAt11 = i22 | (cCharAt11 << i69);
                i14 = i21;
            } else {
                i14 = i66;
            }
            int i70 = iCharAt10;
            int i71 = iCharAt11 & 255;
            Object[] objArr3 = objArr2;
            if ((iCharAt11 & 1024) != 0) {
                iArr[i59] = i60;
                i59++;
            }
            Object[] objArr4 = objArr;
            if (i71 >= 51) {
                int i72 = i14 + 1;
                int iCharAt12 = str.charAt(i14);
                char c2 = 55296;
                if (iCharAt12 >= 55296) {
                    int i73 = iCharAt12 & 8191;
                    int i74 = 13;
                    while (true) {
                        i20 = i72 + 1;
                        cCharAt10 = str.charAt(i72);
                        if (cCharAt10 < c2) {
                            break;
                        }
                        i73 |= (cCharAt10 & 8191) << i74;
                        i74 += 13;
                        i72 = i20;
                        c2 = 55296;
                    }
                    iCharAt12 = i73 | (cCharAt10 << i74);
                    i72 = i20;
                }
                int i75 = i71 - 51;
                int i76 = iCharAt12;
                if (i75 == 9 || i75 == 17) {
                    i17 = i3 + 1;
                    objArr3[((i60 / 3) * 2) + 1] = objArr4[i3];
                } else {
                    if (i75 == 12 && !z) {
                        i17 = i3 + 1;
                        objArr3[((i60 / 3) * 2) + 1] = objArr4[i3];
                    }
                    i18 = i76 * 2;
                    obj = objArr4[i18];
                    if (obj instanceof Field) {
                        fieldN2 = (Field) obj;
                    } else {
                        fieldN2 = N(cls, (String) obj);
                        objArr4[i18] = fieldN2;
                    }
                    int i77 = i72;
                    int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldN2);
                    i19 = i18 + 1;
                    obj2 = objArr4[i19];
                    if (obj2 instanceof Field) {
                        fieldN3 = (Field) obj2;
                    } else {
                        fieldN3 = N(cls, (String) obj2);
                        objArr4[i19] = fieldN3;
                    }
                    i15 = i77;
                    iObjectFieldOffset = iObjectFieldOffset3;
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldN3);
                    i16 = 0;
                }
                i3 = i17;
                i18 = i76 * 2;
                obj = objArr4[i18];
                if (obj instanceof Field) {
                    fieldN2 = (Field) obj;
                } else {
                    fieldN2 = N(cls, (String) obj);
                    objArr4[i18] = fieldN2;
                }
                int i78 = i72;
                int iObjectFieldOffset4 = (int) unsafe.objectFieldOffset(fieldN2);
                i19 = i18 + 1;
                obj2 = objArr4[i19];
                if (obj2 instanceof Field) {
                    fieldN3 = (Field) obj2;
                } else {
                    fieldN3 = N(cls, (String) obj2);
                    objArr4[i19] = fieldN3;
                }
                i15 = i78;
                iObjectFieldOffset = iObjectFieldOffset4;
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldN3);
                i16 = 0;
            } else {
                int i79 = i3 + 1;
                Field fieldN4 = N(cls, (String) objArr4[i3]);
                if (i71 == 9 || i71 == 17) {
                    objArr3[((i60 / 3) * 2) + 1] = fieldN4.getType();
                } else {
                    if (i71 == 27 || i71 == 49) {
                        i3 += 2;
                        objArr3[((i60 / 3) * 2) + 1] = objArr4[i79];
                    } else if (i71 == 12 || i71 == 30 || i71 == 44) {
                        if (!z) {
                            i3 += 2;
                            objArr3[((i60 / 3) * 2) + 1] = objArr4[i79];
                        }
                    } else if (i71 == 50) {
                        int i80 = i58 + 1;
                        iArr[i58] = i60;
                        int i81 = (i60 / 3) * 2;
                        int i82 = i3 + 2;
                        objArr3[i81] = objArr4[i79];
                        if ((iCharAt11 & 2048) != 0) {
                            objArr3[i81 + 1] = objArr4[i82];
                            i3 += 3;
                        } else {
                            i3 = i82;
                        }
                        i58 = i80;
                    }
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldN4);
                    if ((iCharAt11 & 4096) == 4096 || i71 > 17) {
                        iObjectFieldOffset2 = 1048575;
                        i15 = i14;
                        i16 = 0;
                    } else {
                        int i83 = i14 + 1;
                        int iCharAt13 = str.charAt(i14);
                        if (iCharAt13 >= 55296) {
                            int i84 = iCharAt13 & 8191;
                            int i85 = 13;
                            while (true) {
                                i15 = i83 + 1;
                                cCharAt9 = str.charAt(i83);
                                if (cCharAt9 < 55296) {
                                    break;
                                }
                                i84 |= (cCharAt9 & 8191) << i85;
                                i85 += 13;
                                i83 = i15;
                            }
                            iCharAt13 = i84 | (cCharAt9 << i85);
                        } else {
                            i15 = i83;
                        }
                        int i86 = (iCharAt13 / 32) + (i55 * 2);
                        Object obj3 = objArr4[i86];
                        if (obj3 instanceof Field) {
                            fieldN = (Field) obj3;
                        } else {
                            fieldN = N(cls, (String) obj3);
                            objArr4[i86] = fieldN;
                        }
                        iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldN);
                        i16 = iCharAt13 % 32;
                    }
                    if (i71 >= 18 && i71 <= 49) {
                        iArr[i57] = iObjectFieldOffset;
                        i57++;
                    }
                }
                i3 = i79;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldN4);
                if ((iCharAt11 & 4096) == 4096) {
                    iObjectFieldOffset2 = 1048575;
                    i15 = i14;
                    i16 = 0;
                } else {
                    iObjectFieldOffset2 = 1048575;
                    i15 = i14;
                    i16 = 0;
                }
                if (i71 >= 18) {
                    iArr[i57] = iObjectFieldOffset;
                    i57++;
                }
            }
            int i87 = i60 + 1;
            iArr2[i60] = i70;
            int i88 = i60 + 2;
            String str2 = str;
            iArr2[i87] = ((iCharAt11 & 512) != 0 ? PKIFailureInfo.duplicateCertReq : 0) | ((iCharAt11 & 256) != 0 ? 268435456 : 0) | (i71 << 20) | iObjectFieldOffset;
            i60 += 3;
            iArr2[i88] = (i16 << 20) | iObjectFieldOffset2;
            str = str2;
            length = i62;
            objArr2 = objArr3;
            iArr4 = iArr2;
            i27 = i15;
            objArr = objArr4;
        }
        return new MessageSchema(iArr4, objArr2, iCharAt, iCharAt2, rawMessageInfo.f34232a, z, iArr, iCharAt4, i56, newInstanceSchema, listFieldSchema, unknownFieldSchema, extensionSchema, mapFieldSchema);
    }

    public static long E(int i2) {
        return i2 & 1048575;
    }

    public static int F(long j2, Object obj) {
        return ((Integer) UnsafeUtil.f34267c.i(j2, obj)).intValue();
    }

    public static long G(long j2, Object obj) {
        return ((Long) UnsafeUtil.f34267c.i(j2, obj)).longValue();
    }

    public static Field N(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            StringBuilder sbR = pq0.r("Field ", str, " for ");
            o60.z(cls, sbR, " not found. Known fields are ");
            sbR.append(Arrays.toString(declaredFields));
            throw new RuntimeException(sbR.toString());
        }
    }

    public static int T(int i2) {
        return (i2 & 267386880) >>> 20;
    }

    public static void X(int i2, Object obj, Writer writer) {
        if (obj instanceof String) {
            writer.e(i2, (String) obj);
        } else {
            writer.L(i2, (ByteString) obj);
        }
    }

    public static void l(Object obj) {
        if (u(obj)) {
            return;
        }
        md.n(cj.i(obj, "Mutating immutable message: "));
    }

    public static UnknownFieldSetLite q(Object obj) {
        GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) obj;
        UnknownFieldSetLite unknownFieldSetLite = generatedMessageLite.unknownFields;
        if (unknownFieldSetLite != UnknownFieldSetLite.f34257f) {
            return unknownFieldSetLite;
        }
        UnknownFieldSetLite unknownFieldSetLiteC = UnknownFieldSetLite.c();
        generatedMessageLite.unknownFields = unknownFieldSetLiteC;
        return unknownFieldSetLiteC;
    }

    public static boolean u(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof GeneratedMessageLite) {
            return ((GeneratedMessageLite) obj).v();
        }
        return true;
    }

    public static List w(AbstractMessageLite abstractMessageLite, long j2) {
        return (List) UnsafeUtil.f34267c.i(j2, abstractMessageLite);
    }

    public final Object A(int i2, Object obj) {
        Schema schemaP = p(i2);
        long jU = U(i2) & 1048575;
        if (!t(i2, obj)) {
            return schemaP.b();
        }
        Object object = r.getObject(obj, jU);
        if (u(object)) {
            return object;
        }
        Object objB = schemaP.b();
        if (object != null) {
            schemaP.a(objB, object);
        }
        return objB;
    }

    public final Object B(int i2, int i3, Object obj) {
        Schema schemaP = p(i3);
        if (!v(i2, i3, obj)) {
            return schemaP.b();
        }
        Object object = r.getObject(obj, U(i3) & 1048575);
        if (u(object)) {
            return object;
        }
        Object objB = schemaP.b();
        if (object != null) {
            schemaP.a(objB, object);
        }
        return objB;
    }

    public final int H(Object obj, byte[] bArr, int i2, int i3, int i4, long j2, ArrayDecoders.Registers registers) {
        Unsafe unsafe = r;
        Object objO = o(i4);
        Object object = unsafe.getObject(obj, j2);
        MapFieldSchema mapFieldSchema = this.p;
        if (mapFieldSchema.g(object)) {
            MapFieldLite mapFieldLiteF = mapFieldSchema.f();
            mapFieldSchema.a(mapFieldLiteF, object);
            unsafe.putObject(obj, j2, mapFieldLiteF);
        }
        mapFieldSchema.b(objO);
        throw null;
    }

    public final int I(Object obj, byte[] bArr, int i2, int i3, int i4, int i5, int i6, int i7, int i8, long j2, int i9, ArrayDecoders.Registers registers) throws InvalidProtocolBufferException {
        int i10;
        Unsafe unsafe = r;
        long j3 = this.f34213a[i9 + 2] & 1048575;
        switch (i8) {
            case EACTags.TRANSACTION_DATE /* 51 */:
                if (i6 != 1) {
                    return i2;
                }
                unsafe.putObject(obj, j2, Double.valueOf(Double.longBitsToDouble(ArrayDecoders.c(i2, bArr))));
                int i11 = i2 + 8;
                unsafe.putInt(obj, j3, i5);
                return i11;
            case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                if (i6 != 5) {
                    return i2;
                }
                unsafe.putObject(obj, j2, Float.valueOf(Float.intBitsToFloat(ArrayDecoders.b(i2, bArr))));
                int i12 = i2 + 4;
                unsafe.putInt(obj, j3, i5);
                return i12;
            case EACTags.SEX /* 53 */:
            case EACTags.CURRENCY_EXPONENT /* 54 */:
                if (i6 != 0) {
                    return i2;
                }
                int iK = ArrayDecoders.k(bArr, i2, registers);
                unsafe.putObject(obj, j2, Long.valueOf(registers.f34139b));
                unsafe.putInt(obj, j3, i5);
                return iK;
            case 55:
            case 62:
                if (i6 != 0) {
                    return i2;
                }
                int i13 = ArrayDecoders.i(bArr, i2, registers);
                unsafe.putObject(obj, j2, Integer.valueOf(registers.f34138a));
                unsafe.putInt(obj, j3, i5);
                return i13;
            case 56:
            case EACTags.ELEMENT_LIST /* 65 */:
                if (i6 != 1) {
                    return i2;
                }
                unsafe.putObject(obj, j2, Long.valueOf(ArrayDecoders.c(i2, bArr)));
                int i14 = i2 + 8;
                unsafe.putInt(obj, j3, i5);
                return i14;
            case 57:
            case 64:
                if (i6 != 5) {
                    return i2;
                }
                unsafe.putObject(obj, j2, Integer.valueOf(ArrayDecoders.b(i2, bArr)));
                int i15 = i2 + 4;
                unsafe.putInt(obj, j3, i5);
                return i15;
            case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
                if (i6 != 0) {
                    return i2;
                }
                int iK2 = ArrayDecoders.k(bArr, i2, registers);
                unsafe.putObject(obj, j2, Boolean.valueOf(registers.f34139b != 0));
                unsafe.putInt(obj, j3, i5);
                return iK2;
            case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                if (i6 != 2) {
                    return i2;
                }
                int i16 = ArrayDecoders.i(bArr, i2, registers);
                int i17 = registers.f34138a;
                if (i17 == 0) {
                    unsafe.putObject(obj, j2, "");
                } else {
                    if ((i7 & PKIFailureInfo.duplicateCertReq) != 0) {
                        if (!Utf8.f34271a.c(i16, i16 + i17, bArr)) {
                            throw InvalidProtocolBufferException.b();
                        }
                    }
                    unsafe.putObject(obj, j2, new String(bArr, i16, i17, Internal.f34190a));
                    i16 += i17;
                }
                unsafe.putInt(obj, j3, i5);
                return i16;
            case 60:
                i10 = i2;
                if (i6 == 2) {
                    Object objB = B(i5, i9, obj);
                    int iL = ArrayDecoders.l(objB, p(i9), bArr, i10, i3, registers);
                    S(obj, i5, objB, i9);
                    return iL;
                }
                return i10;
            case 61:
                i10 = i2;
                if (i6 == 2) {
                    int iA = ArrayDecoders.a(bArr, i10, registers);
                    unsafe.putObject(obj, j2, registers.f34140c);
                    unsafe.putInt(obj, j3, i5);
                    return iA;
                }
                return i10;
            case 63:
                i10 = i2;
                if (i6 == 0) {
                    int i18 = ArrayDecoders.i(bArr, i10, registers);
                    int i19 = registers.f34138a;
                    Internal.EnumVerifier enumVerifierN = n(i9);
                    if (enumVerifierN != null && !enumVerifierN.a()) {
                        q(obj).d(i4, Long.valueOf(i19));
                        return i18;
                    }
                    unsafe.putObject(obj, j2, Integer.valueOf(i19));
                    unsafe.putInt(obj, j3, i5);
                    return i18;
                }
                return i10;
            case EACTags.ADDRESS /* 66 */:
                i10 = i2;
                if (i6 == 0) {
                    int i20 = ArrayDecoders.i(bArr, i10, registers);
                    unsafe.putObject(obj, j2, Integer.valueOf(CodedInputStream.b(registers.f34138a)));
                    unsafe.putInt(obj, j3, i5);
                    return i20;
                }
                return i10;
            case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                i10 = i2;
                if (i6 == 0) {
                    int iK3 = ArrayDecoders.k(bArr, i10, registers);
                    unsafe.putObject(obj, j2, Long.valueOf(CodedInputStream.c(registers.f34139b)));
                    unsafe.putInt(obj, j3, i5);
                    return iK3;
                }
                return i10;
            case EACTags.APPLICATION_IMAGE /* 68 */:
                if (i6 == 3) {
                    Object objB2 = B(i5, i9, obj);
                    int iJ = ((MessageSchema) p(i9)).J(objB2, bArr, i2, i3, (i4 & (-8)) | 4, registers);
                    registers.f34140c = objB2;
                    S(obj, i5, objB2, i9);
                    return iJ;
                }
            default:
                return i2;
        }
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 14521. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    public final int J(java.lang.Object r31, byte[] r32, int r33, int r34, int r35, com.google.crypto.tink.shaded.protobuf.ArrayDecoders.Registers r36) throws com.google.crypto.tink.shaded.protobuf.InvalidProtocolBufferException {
        /*
            Method dump skipped, instruction units count: 1452
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.MessageSchema.J(java.lang.Object, byte[], int, int, int, com.google.crypto.tink.shaded.protobuf.ArrayDecoders$Registers):int");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:34:0x009b. Please report as an issue. */
    public final void K(Object obj, byte[] bArr, int i2, int i3, ArrayDecoders.Registers registers) throws InvalidProtocolBufferException {
        int i4;
        int iQ;
        Unsafe unsafe;
        int i5;
        int i6;
        Object obj2;
        int i7;
        int i8;
        Unsafe unsafe2;
        Object obj3;
        Unsafe unsafe3;
        byte[] bArr2;
        int i9;
        byte[] bArr3;
        int i10;
        Object obj4;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        this = this;
        Object obj5 = obj;
        bArr = bArr;
        i3 = i3;
        registers = registers;
        l(obj5);
        Unsafe unsafe4 = r;
        int iA = i2;
        int i16 = -1;
        int i17 = 0;
        int i18 = 1048575;
        int i19 = 0;
        while (iA < i3) {
            int iH = iA + 1;
            int i20 = bArr[iA];
            if (i20 < 0) {
                iH = ArrayDecoders.h(i20, bArr, iH, registers);
                i20 = registers.f34138a;
            }
            i16 = i20 >>> 3;
            int i21 = i20 & 7;
            int i22 = this.d;
            int i23 = this.f34215c;
            if (i16 > i16) {
                iQ = (i16 < i23 || i16 > i22) ? -1 : this.Q(i16, i17 / 3);
                i4 = 0;
            } else if (i16 < i23 || i16 > i22) {
                i4 = 0;
                iQ = -1;
            } else {
                i4 = 0;
                iQ = this.Q(i16, 0);
            }
            i17 = iQ;
            if (i17 == -1) {
                unsafe = unsafe4;
                i5 = i20;
                i6 = i4;
                obj2 = obj5;
                i7 = iH;
                i8 = i16;
            } else {
                int[] iArr = this.f34213a;
                int i24 = iArr[i17 + 1];
                int iT = T(i24);
                int i25 = i20;
                long j2 = i24 & 1048575;
                if (iT <= 17) {
                    int i26 = iArr[i17 + 2];
                    int i27 = 1 << (i26 >>> 20);
                    int i28 = i26 & 1048575;
                    if (i28 != i18) {
                        int i29 = 1048575;
                        if (i18 != 1048575) {
                            unsafe4.putInt(obj5, i18, i19);
                            i29 = 1048575;
                        }
                        if (i28 != i29) {
                            i19 = unsafe4.getInt(obj5, i28);
                        }
                        i18 = i28;
                    }
                    switch (iT) {
                        case 0:
                            unsafe3 = unsafe4;
                            bArr2 = bArr;
                            i9 = iH;
                            if (i21 != 1) {
                                obj3 = obj5;
                                i5 = i25 == true ? 1 : 0;
                                obj2 = obj3;
                                i7 = i9;
                                unsafe = unsafe3;
                                i6 = i17;
                                i8 = i16;
                            } else {
                                UnsafeUtil.f34267c.m(obj5, j2, Double.longBitsToDouble(ArrayDecoders.c(i9, bArr2)));
                                iA = i9 + 8;
                                i19 |= i27;
                                unsafe4 = unsafe3;
                                bArr = bArr2;
                                i3 = i3;
                                registers = registers;
                            }
                            break;
                        case 1:
                            unsafe3 = unsafe4;
                            bArr2 = bArr;
                            i9 = iH;
                            if (i21 != 5) {
                                obj3 = obj5;
                                i5 = i25 == true ? 1 : 0;
                                obj2 = obj3;
                                i7 = i9;
                                unsafe = unsafe3;
                                i6 = i17;
                                i8 = i16;
                            } else {
                                UnsafeUtil.f34267c.n(obj5, j2, Float.intBitsToFloat(ArrayDecoders.b(i9, bArr2)));
                                iA = i9 + 4;
                                i19 |= i27;
                                unsafe4 = unsafe3;
                                bArr = bArr2;
                                i3 = i3;
                                registers = registers;
                            }
                            break;
                        case 2:
                        case 3:
                            registers = registers;
                            bArr2 = bArr;
                            i9 = iH;
                            if (i21 != 0) {
                                unsafe3 = unsafe4;
                                obj3 = obj5;
                                i5 = i25 == true ? 1 : 0;
                                obj2 = obj3;
                                i7 = i9;
                                unsafe = unsafe3;
                                i6 = i17;
                                i8 = i16;
                            } else {
                                int iK = ArrayDecoders.k(bArr2, i9, registers);
                                unsafe4.putLong(obj5, j2, registers.f34139b);
                                i19 |= i27;
                                iA = iK;
                                bArr = bArr2;
                                i3 = i3;
                                registers = registers;
                            }
                            break;
                        case 4:
                        case 11:
                            registers = registers;
                            bArr3 = bArr;
                            i9 = iH;
                            if (i21 != 0) {
                                unsafe3 = unsafe4;
                                obj3 = obj5;
                                i5 = i25 == true ? 1 : 0;
                                obj2 = obj3;
                                i7 = i9;
                                unsafe = unsafe3;
                                i6 = i17;
                                i8 = i16;
                            } else {
                                int i30 = ArrayDecoders.i(bArr3, i9, registers);
                                unsafe4.putInt(obj5, j2, registers.f34138a);
                                i19 |= i27;
                                iA = i30;
                                bArr = bArr3;
                                registers = registers;
                            }
                            break;
                        case 5:
                        case 14:
                            unsafe3 = unsafe4;
                            int i31 = iH;
                            registers = registers;
                            bArr3 = bArr;
                            Object obj6 = obj5;
                            if (i21 != 1) {
                                obj5 = obj6;
                                i9 = i31;
                                obj3 = obj5;
                                i5 = i25 == true ? 1 : 0;
                                obj2 = obj3;
                                i7 = i9;
                                unsafe = unsafe3;
                                i6 = i17;
                                i8 = i16;
                            } else {
                                long jC = ArrayDecoders.c(i31, bArr3);
                                obj5 = obj6;
                                unsafe4 = unsafe3;
                                unsafe4.putLong(obj5, j2, jC);
                                iA = i31 + 8;
                                i19 |= i27;
                                bArr = bArr3;
                                registers = registers;
                            }
                            break;
                        case 6:
                        case 13:
                            unsafe3 = unsafe4;
                            i10 = iH;
                            registers = registers;
                            bArr2 = bArr;
                            obj4 = obj5;
                            if (i21 != 5) {
                                Object obj7 = obj4;
                                i9 = i10;
                                obj3 = obj7;
                                i5 = i25 == true ? 1 : 0;
                                obj2 = obj3;
                                i7 = i9;
                                unsafe = unsafe3;
                                i6 = i17;
                                i8 = i16;
                            } else {
                                unsafe3.putInt(obj4, j2, ArrayDecoders.b(i10, bArr2));
                                iA = i10 + 4;
                                i19 |= i27;
                                obj5 = obj4;
                                unsafe4 = unsafe3;
                                bArr = bArr2;
                                i3 = i3;
                                registers = registers;
                            }
                            break;
                        case 7:
                            unsafe3 = unsafe4;
                            i10 = iH;
                            registers = registers;
                            bArr2 = bArr;
                            obj4 = obj5;
                            if (i21 != 0) {
                                Object obj8 = obj4;
                                i9 = i10;
                                obj3 = obj8;
                                i5 = i25 == true ? 1 : 0;
                                obj2 = obj3;
                                i7 = i9;
                                unsafe = unsafe3;
                                i6 = i17;
                                i8 = i16;
                            } else {
                                iA = ArrayDecoders.k(bArr2, i10, registers);
                                UnsafeUtil.f34267c.k(obj4, j2, registers.f34139b != 0);
                                i19 |= i27;
                                obj5 = obj4;
                                unsafe4 = unsafe3;
                                bArr = bArr2;
                                i3 = i3;
                                registers = registers;
                            }
                            break;
                        case 8:
                            unsafe3 = unsafe4;
                            i10 = iH;
                            registers = registers;
                            bArr2 = bArr;
                            obj4 = obj5;
                            if (i21 != 2) {
                                Object obj9 = obj4;
                                i9 = i10;
                                obj3 = obj9;
                                i5 = i25 == true ? 1 : 0;
                                obj2 = obj3;
                                i7 = i9;
                                unsafe = unsafe3;
                                i6 = i17;
                                i8 = i16;
                            } else {
                                iA = (i24 & PKIFailureInfo.duplicateCertReq) == 0 ? ArrayDecoders.e(bArr2, i10, registers) : ArrayDecoders.f(bArr2, i10, registers);
                                unsafe3.putObject(obj4, j2, registers.f34140c);
                                i19 |= i27;
                                obj5 = obj4;
                                unsafe4 = unsafe3;
                                bArr = bArr2;
                                i3 = i3;
                                registers = registers;
                            }
                            break;
                        case 9:
                            Object obj10 = obj5;
                            Unsafe unsafe5 = unsafe4;
                            obj3 = obj10;
                            if (i21 != 2) {
                                unsafe3 = unsafe5;
                                i9 = iH;
                                i5 = i25 == true ? 1 : 0;
                                obj2 = obj3;
                                i7 = i9;
                                unsafe = unsafe3;
                                i6 = i17;
                                i8 = i16;
                            } else {
                                Object objA = this.A(i17, obj3);
                                byte[] bArr4 = bArr;
                                obj4 = obj3;
                                int i32 = i3;
                                unsafe3 = unsafe5;
                                int i33 = iH;
                                ArrayDecoders.Registers registers2 = registers;
                                int iL = ArrayDecoders.l(objA, this.p(i17), bArr4, i33, i32, registers2);
                                bArr2 = bArr4;
                                registers = registers2;
                                this.R(obj4, objA, i17);
                                i19 |= i27;
                                iA = iL;
                                obj5 = obj4;
                                unsafe4 = unsafe3;
                                bArr = bArr2;
                                i3 = i3;
                                registers = registers;
                            }
                            break;
                        case 10:
                            Object obj11 = obj5;
                            unsafe2 = unsafe4;
                            obj3 = obj11;
                            if (i21 != 2) {
                                unsafe3 = unsafe2;
                                i9 = iH;
                                i5 = i25 == true ? 1 : 0;
                                obj2 = obj3;
                                i7 = i9;
                                unsafe = unsafe3;
                                i6 = i17;
                                i8 = i16;
                            } else {
                                iA = ArrayDecoders.a(bArr, iH, registers);
                                unsafe2.putObject(obj3, j2, registers.f34140c);
                                i19 |= i27;
                                Unsafe unsafe6 = unsafe2;
                                obj5 = obj3;
                                unsafe4 = unsafe6;
                                i17 = i17;
                                i16 = i16;
                            }
                            break;
                        case 12:
                            Object obj12 = obj5;
                            unsafe2 = unsafe4;
                            obj3 = obj12;
                            if (i21 != 0) {
                                unsafe3 = unsafe2;
                                i9 = iH;
                                i5 = i25 == true ? 1 : 0;
                                obj2 = obj3;
                                i7 = i9;
                                unsafe = unsafe3;
                                i6 = i17;
                                i8 = i16;
                            } else {
                                iA = ArrayDecoders.i(bArr, iH, registers);
                                unsafe2.putInt(obj3, j2, registers.f34138a);
                                i19 |= i27;
                                Unsafe unsafe7 = unsafe2;
                                obj5 = obj3;
                                unsafe4 = unsafe7;
                                i17 = i17;
                                i16 = i16;
                            }
                            break;
                        case 15:
                            Object obj13 = obj5;
                            unsafe2 = unsafe4;
                            obj3 = obj13;
                            if (i21 != 0) {
                                unsafe3 = unsafe2;
                                i9 = iH;
                                i5 = i25 == true ? 1 : 0;
                                obj2 = obj3;
                                i7 = i9;
                                unsafe = unsafe3;
                                i6 = i17;
                                i8 = i16;
                            } else {
                                iA = ArrayDecoders.i(bArr, iH, registers);
                                unsafe2.putInt(obj3, j2, CodedInputStream.b(registers.f34138a));
                                i19 |= i27;
                                Unsafe unsafe8 = unsafe2;
                                obj5 = obj3;
                                unsafe4 = unsafe8;
                                i17 = i17;
                                i16 = i16;
                            }
                            break;
                        case 16:
                            if (i21 != 0) {
                                Object obj14 = obj5;
                                unsafe2 = unsafe4;
                                obj3 = obj14;
                                unsafe3 = unsafe2;
                                i9 = iH;
                                i5 = i25 == true ? 1 : 0;
                                obj2 = obj3;
                                i7 = i9;
                                unsafe = unsafe3;
                                i6 = i17;
                                i8 = i16;
                            } else {
                                int iK2 = ArrayDecoders.k(bArr, iH, registers);
                                unsafe4.putLong(obj5, j2, CodedInputStream.c(registers.f34139b));
                                i19 |= i27;
                                obj5 = obj5;
                                unsafe4 = unsafe4;
                                iA = iK2;
                                i17 = i17;
                                i16 = i16;
                            }
                            break;
                        default:
                            unsafe3 = unsafe4;
                            obj3 = obj5;
                            i9 = iH;
                            i5 = i25 == true ? 1 : 0;
                            obj2 = obj3;
                            i7 = i9;
                            unsafe = unsafe3;
                            i6 = i17;
                            i8 = i16;
                            break;
                    }
                } else {
                    Unsafe unsafe9 = unsafe4;
                    Object obj15 = obj5;
                    byte[] bArr5 = bArr;
                    int i34 = iH;
                    if (iT != 27) {
                        if (iT <= 49) {
                            i6 = i17;
                            i13 = i18;
                            unsafe = unsafe9;
                            i11 = i19;
                            int iL2 = this.L(obj, bArr, i34, i3, i25 == true ? 1 : 0, i16, i21, i6, i24, iT, j2, registers);
                            i12 = i25 == true ? 1 : 0;
                            i14 = i16;
                            if (iL2 != i34) {
                                obj5 = obj;
                                iA = iL2;
                                i17 = i6;
                                i16 = i14;
                            } else {
                                i7 = iL2;
                                i8 = i14;
                                i5 = i12;
                                i18 = i13;
                                i19 = i11;
                                obj2 = obj;
                            }
                        } else {
                            unsafe = unsafe9;
                            i6 = i17;
                            i11 = i19;
                            i12 = i25 == true ? 1 : 0;
                            i13 = i18;
                            i14 = i16;
                            i15 = i34;
                            if (iT == 50) {
                                if (i21 == 2) {
                                    H(obj, bArr, i15, i3, i6, j2, registers);
                                    throw null;
                                }
                                i7 = i15;
                                i8 = i14;
                                i5 = i12;
                                i18 = i13;
                                i19 = i11;
                                obj2 = obj;
                            } else {
                                i8 = i14;
                                i5 = i12 == true ? 1 : 0;
                                int I = I(obj, bArr, i15, i3, i5 == true ? 1 : 0, i8, i21, i24, iT, j2, i6, registers);
                                obj2 = obj;
                                if (I != i15) {
                                    i6 = i6;
                                    i16 = i8;
                                    iA = I;
                                    i17 = i6;
                                    obj5 = obj2;
                                } else {
                                    i6 = i6;
                                    i7 = I;
                                    i18 = i13;
                                    i19 = i11;
                                }
                            }
                        }
                        i18 = i13;
                        i19 = i11;
                        unsafe4 = unsafe;
                        i3 = i3;
                    } else if (i21 == 2) {
                        Internal.ProtobufList protobufListC = (Internal.ProtobufList) unsafe9.getObject(obj15, j2);
                        if (!protobufListC.m0()) {
                            int size = protobufListC.size();
                            protobufListC = protobufListC.c(size == 0 ? 10 : size * 2);
                            unsafe9.putObject(obj15, j2, protobufListC);
                        }
                        int iD = ArrayDecoders.d(this.p(i17), i25 == true ? 1 : 0, bArr5, i34, i3, protobufListC, registers);
                        obj5 = obj;
                        registers = registers;
                        iA = iD;
                        unsafe4 = unsafe9;
                        i17 = i17;
                        i16 = i16;
                        i3 = i3;
                    } else {
                        i15 = i34;
                        unsafe = unsafe9;
                        i6 = i17;
                        i13 = i18;
                        i11 = i19;
                        i14 = i16;
                        i12 = i25 == true ? 1 : 0;
                        i7 = i15;
                        i8 = i14;
                        i5 = i12;
                        i18 = i13;
                        i19 = i11;
                        obj2 = obj;
                    }
                }
            }
            int iG = ArrayDecoders.g(i5 == true ? 1 : 0, bArr, i7, i3, q(obj2), registers);
            bArr = bArr;
            registers = registers;
            i16 = i8;
            i17 = i6;
            obj5 = obj2;
            unsafe4 = unsafe;
            i3 = i3;
            iA = iG;
            this = this;
        }
        Unsafe unsafe10 = unsafe4;
        Object obj16 = obj5;
        int i35 = i3;
        int i36 = i18;
        int i37 = i19;
        if (i36 != 1048575) {
            unsafe10.putInt(obj16, i36, i37);
        }
        if (iA != i35) {
            throw InvalidProtocolBufferException.f();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final int L(Object obj, byte[] bArr, int i2, int i3, int i4, int i5, int i6, int i7, long j2, int i8, long j3, ArrayDecoders.Registers registers) throws InvalidProtocolBufferException {
        int iJ;
        Unsafe unsafe = r;
        Internal.ProtobufList protobufListC = (Internal.ProtobufList) unsafe.getObject(obj, j3);
        if (!protobufListC.m0()) {
            int size = protobufListC.size();
            protobufListC = protobufListC.c(size == 0 ? 10 : size * 2);
            unsafe.putObject(obj, j3, protobufListC);
        }
        Internal.ProtobufList protobufList = protobufListC;
        switch (i8) {
            case 18:
            case 35:
                if (i6 == 2) {
                    DoubleArrayList doubleArrayList = (DoubleArrayList) protobufList;
                    int i9 = ArrayDecoders.i(bArr, i2, registers);
                    int i10 = registers.f34138a + i9;
                    while (i9 < i10) {
                        doubleArrayList.h(Double.longBitsToDouble(ArrayDecoders.c(i9, bArr)));
                        i9 += 8;
                    }
                    if (i9 == i10) {
                        return i9;
                    }
                    throw InvalidProtocolBufferException.g();
                }
                if (i6 == 1) {
                    DoubleArrayList doubleArrayList2 = (DoubleArrayList) protobufList;
                    doubleArrayList2.h(Double.longBitsToDouble(ArrayDecoders.c(i2, bArr)));
                    int i11 = i2 + 8;
                    while (i11 < i3) {
                        int i12 = ArrayDecoders.i(bArr, i11, registers);
                        if (i4 != registers.f34138a) {
                            return i11;
                        }
                        doubleArrayList2.h(Double.longBitsToDouble(ArrayDecoders.c(i12, bArr)));
                        i11 = i12 + 8;
                    }
                    return i11;
                }
                return i2;
            case 19:
            case 36:
                if (i6 == 2) {
                    FloatArrayList floatArrayList = (FloatArrayList) protobufList;
                    int i13 = ArrayDecoders.i(bArr, i2, registers);
                    int i14 = registers.f34138a + i13;
                    while (i13 < i14) {
                        floatArrayList.h(Float.intBitsToFloat(ArrayDecoders.b(i13, bArr)));
                        i13 += 4;
                    }
                    if (i13 == i14) {
                        return i13;
                    }
                    throw InvalidProtocolBufferException.g();
                }
                if (i6 == 5) {
                    FloatArrayList floatArrayList2 = (FloatArrayList) protobufList;
                    floatArrayList2.h(Float.intBitsToFloat(ArrayDecoders.b(i2, bArr)));
                    int i15 = i2 + 4;
                    while (i15 < i3) {
                        int i16 = ArrayDecoders.i(bArr, i15, registers);
                        if (i4 != registers.f34138a) {
                            return i15;
                        }
                        floatArrayList2.h(Float.intBitsToFloat(ArrayDecoders.b(i16, bArr)));
                        i15 = i16 + 4;
                    }
                    return i15;
                }
                return i2;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i6 == 2) {
                    LongArrayList longArrayList = (LongArrayList) protobufList;
                    int i17 = ArrayDecoders.i(bArr, i2, registers);
                    int i18 = registers.f34138a + i17;
                    while (i17 < i18) {
                        i17 = ArrayDecoders.k(bArr, i17, registers);
                        longArrayList.h(registers.f34139b);
                    }
                    if (i17 == i18) {
                        return i17;
                    }
                    throw InvalidProtocolBufferException.g();
                }
                if (i6 == 0) {
                    LongArrayList longArrayList2 = (LongArrayList) protobufList;
                    int iK = ArrayDecoders.k(bArr, i2, registers);
                    longArrayList2.h(registers.f34139b);
                    while (iK < i3) {
                        int i19 = ArrayDecoders.i(bArr, iK, registers);
                        if (i4 != registers.f34138a) {
                            return iK;
                        }
                        iK = ArrayDecoders.k(bArr, i19, registers);
                        longArrayList2.h(registers.f34139b);
                    }
                    return iK;
                }
                return i2;
            case 22:
            case 29:
            case 39:
            case EACTags.DATE_OF_BIRTH /* 43 */:
                if (i6 != 2) {
                    if (i6 == 0) {
                        return ArrayDecoders.j(i4, bArr, i2, i3, protobufList, registers);
                    }
                    return i2;
                }
                IntArrayList intArrayList = (IntArrayList) protobufList;
                int i20 = ArrayDecoders.i(bArr, i2, registers);
                int i21 = registers.f34138a + i20;
                while (i20 < i21) {
                    i20 = ArrayDecoders.i(bArr, i20, registers);
                    intArrayList.h(registers.f34138a);
                }
                if (i20 == i21) {
                    return i20;
                }
                throw InvalidProtocolBufferException.g();
            case 23:
            case 32:
            case 40:
            case 46:
                if (i6 == 2) {
                    LongArrayList longArrayList3 = (LongArrayList) protobufList;
                    int i22 = ArrayDecoders.i(bArr, i2, registers);
                    int i23 = registers.f34138a + i22;
                    while (i22 < i23) {
                        longArrayList3.h(ArrayDecoders.c(i22, bArr));
                        i22 += 8;
                    }
                    if (i22 == i23) {
                        return i22;
                    }
                    throw InvalidProtocolBufferException.g();
                }
                if (i6 == 1) {
                    LongArrayList longArrayList4 = (LongArrayList) protobufList;
                    longArrayList4.h(ArrayDecoders.c(i2, bArr));
                    int i24 = i2 + 8;
                    while (i24 < i3) {
                        int i25 = ArrayDecoders.i(bArr, i24, registers);
                        if (i4 != registers.f34138a) {
                            return i24;
                        }
                        longArrayList4.h(ArrayDecoders.c(i25, bArr));
                        i24 = i25 + 8;
                    }
                    return i24;
                }
                return i2;
            case 24:
            case 31:
            case 41:
            case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                if (i6 == 2) {
                    IntArrayList intArrayList2 = (IntArrayList) protobufList;
                    int i26 = ArrayDecoders.i(bArr, i2, registers);
                    int i27 = registers.f34138a + i26;
                    while (i26 < i27) {
                        intArrayList2.h(ArrayDecoders.b(i26, bArr));
                        i26 += 4;
                    }
                    if (i26 == i27) {
                        return i26;
                    }
                    throw InvalidProtocolBufferException.g();
                }
                if (i6 == 5) {
                    IntArrayList intArrayList3 = (IntArrayList) protobufList;
                    intArrayList3.h(ArrayDecoders.b(i2, bArr));
                    int i28 = i2 + 4;
                    while (i28 < i3) {
                        int i29 = ArrayDecoders.i(bArr, i28, registers);
                        if (i4 != registers.f34138a) {
                            return i28;
                        }
                        intArrayList3.h(ArrayDecoders.b(i29, bArr));
                        i28 = i29 + 4;
                    }
                    return i28;
                }
                return i2;
            case 25:
            case EACTags.CURRENCY_CODE /* 42 */:
                if (i6 == 2) {
                    BooleanArrayList booleanArrayList = (BooleanArrayList) protobufList;
                    int i30 = ArrayDecoders.i(bArr, i2, registers);
                    int i31 = registers.f34138a + i30;
                    while (i30 < i31) {
                        i30 = ArrayDecoders.k(bArr, i30, registers);
                        booleanArrayList.h(registers.f34139b != 0);
                    }
                    if (i30 == i31) {
                        return i30;
                    }
                    throw InvalidProtocolBufferException.g();
                }
                if (i6 == 0) {
                    BooleanArrayList booleanArrayList2 = (BooleanArrayList) protobufList;
                    int iK2 = ArrayDecoders.k(bArr, i2, registers);
                    booleanArrayList2.h(registers.f34139b != 0);
                    while (iK2 < i3) {
                        int i32 = ArrayDecoders.i(bArr, iK2, registers);
                        if (i4 != registers.f34138a) {
                            return iK2;
                        }
                        iK2 = ArrayDecoders.k(bArr, i32, registers);
                        booleanArrayList2.h(registers.f34139b != 0);
                    }
                    return iK2;
                }
                return i2;
            case 26:
                if (i6 == 2) {
                    if ((j2 & 536870912) == 0) {
                        int i33 = ArrayDecoders.i(bArr, i2, registers);
                        int i34 = registers.f34138a;
                        if (i34 < 0) {
                            throw InvalidProtocolBufferException.e();
                        }
                        if (i34 == 0) {
                            protobufList.add("");
                        } else {
                            protobufList.add(new String(bArr, i33, i34, Internal.f34190a));
                            i33 += i34;
                        }
                        while (i33 < i3) {
                            int i35 = ArrayDecoders.i(bArr, i33, registers);
                            if (i4 != registers.f34138a) {
                                return i33;
                            }
                            i33 = ArrayDecoders.i(bArr, i35, registers);
                            int i36 = registers.f34138a;
                            if (i36 < 0) {
                                throw InvalidProtocolBufferException.e();
                            }
                            if (i36 == 0) {
                                protobufList.add("");
                            } else {
                                protobufList.add(new String(bArr, i33, i36, Internal.f34190a));
                                i33 += i36;
                            }
                        }
                        return i33;
                    }
                    int i37 = ArrayDecoders.i(bArr, i2, registers);
                    int i38 = registers.f34138a;
                    if (i38 < 0) {
                        throw InvalidProtocolBufferException.e();
                    }
                    if (i38 == 0) {
                        protobufList.add("");
                    } else {
                        int i39 = i37 + i38;
                        if (!Utf8.f34271a.c(i37, i39, bArr)) {
                            throw InvalidProtocolBufferException.b();
                        }
                        protobufList.add(new String(bArr, i37, i38, Internal.f34190a));
                        i37 = i39;
                    }
                    while (i37 < i3) {
                        int i40 = ArrayDecoders.i(bArr, i37, registers);
                        if (i4 != registers.f34138a) {
                            return i37;
                        }
                        i37 = ArrayDecoders.i(bArr, i40, registers);
                        int i41 = registers.f34138a;
                        if (i41 < 0) {
                            throw InvalidProtocolBufferException.e();
                        }
                        if (i41 == 0) {
                            protobufList.add("");
                        } else {
                            int i42 = i37 + i41;
                            if (!Utf8.f34271a.c(i37, i42, bArr)) {
                                throw InvalidProtocolBufferException.b();
                            }
                            protobufList.add(new String(bArr, i37, i41, Internal.f34190a));
                            i37 = i42;
                        }
                    }
                    return i37;
                }
                return i2;
            case 27:
                if (i6 == 2) {
                    return ArrayDecoders.d(p(i7), i4, bArr, i2, i3, protobufList, registers);
                }
                return i2;
            case 28:
                if (i6 == 2) {
                    int i43 = ArrayDecoders.i(bArr, i2, registers);
                    int i44 = registers.f34138a;
                    if (i44 < 0) {
                        throw InvalidProtocolBufferException.e();
                    }
                    if (i44 > bArr.length - i43) {
                        throw InvalidProtocolBufferException.g();
                    }
                    if (i44 == 0) {
                        protobufList.add(ByteString.f34141c);
                    } else {
                        protobufList.add(ByteString.h(i43, i44, bArr));
                        i43 += i44;
                    }
                    while (i43 < i3) {
                        int i45 = ArrayDecoders.i(bArr, i43, registers);
                        if (i4 != registers.f34138a) {
                            return i43;
                        }
                        i43 = ArrayDecoders.i(bArr, i45, registers);
                        int i46 = registers.f34138a;
                        if (i46 < 0) {
                            throw InvalidProtocolBufferException.e();
                        }
                        if (i46 > bArr.length - i43) {
                            throw InvalidProtocolBufferException.g();
                        }
                        if (i46 == 0) {
                            protobufList.add(ByteString.f34141c);
                        } else {
                            protobufList.add(ByteString.h(i43, i46, bArr));
                            i43 += i46;
                        }
                    }
                    return i43;
                }
                return i2;
            case 30:
            case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                if (i6 != 2) {
                    if (i6 == 0) {
                        iJ = ArrayDecoders.j(i4, bArr, i2, i3, protobufList, registers);
                    }
                    return i2;
                }
                IntArrayList intArrayList4 = (IntArrayList) protobufList;
                iJ = ArrayDecoders.i(bArr, i2, registers);
                int i47 = registers.f34138a + iJ;
                while (iJ < i47) {
                    iJ = ArrayDecoders.i(bArr, iJ, registers);
                    intArrayList4.h(registers.f34138a);
                }
                if (iJ != i47) {
                    throw InvalidProtocolBufferException.g();
                }
                SchemaUtil.w(obj, i5, protobufList, n(i7), null, this.n);
                return iJ;
            case 33:
            case EACTags.PIN_USAGE_POLICY /* 47 */:
                if (i6 == 2) {
                    IntArrayList intArrayList5 = (IntArrayList) protobufList;
                    int i48 = ArrayDecoders.i(bArr, i2, registers);
                    int i49 = registers.f34138a + i48;
                    while (i48 < i49) {
                        i48 = ArrayDecoders.i(bArr, i48, registers);
                        intArrayList5.h(CodedInputStream.b(registers.f34138a));
                    }
                    if (i48 == i49) {
                        return i48;
                    }
                    throw InvalidProtocolBufferException.g();
                }
                if (i6 == 0) {
                    IntArrayList intArrayList6 = (IntArrayList) protobufList;
                    int i50 = ArrayDecoders.i(bArr, i2, registers);
                    intArrayList6.h(CodedInputStream.b(registers.f34138a));
                    while (i50 < i3) {
                        int i51 = ArrayDecoders.i(bArr, i50, registers);
                        if (i4 != registers.f34138a) {
                            return i50;
                        }
                        i50 = ArrayDecoders.i(bArr, i51, registers);
                        intArrayList6.h(CodedInputStream.b(registers.f34138a));
                    }
                    return i50;
                }
                return i2;
            case 34:
            case 48:
                if (i6 == 2) {
                    LongArrayList longArrayList5 = (LongArrayList) protobufList;
                    int i52 = ArrayDecoders.i(bArr, i2, registers);
                    int i53 = registers.f34138a + i52;
                    while (i52 < i53) {
                        i52 = ArrayDecoders.k(bArr, i52, registers);
                        longArrayList5.h(CodedInputStream.c(registers.f34139b));
                    }
                    if (i52 == i53) {
                        return i52;
                    }
                    throw InvalidProtocolBufferException.g();
                }
                if (i6 == 0) {
                    LongArrayList longArrayList6 = (LongArrayList) protobufList;
                    int iK3 = ArrayDecoders.k(bArr, i2, registers);
                    longArrayList6.h(CodedInputStream.c(registers.f34139b));
                    while (iK3 < i3) {
                        int i54 = ArrayDecoders.i(bArr, iK3, registers);
                        if (i4 != registers.f34138a) {
                            return iK3;
                        }
                        iK3 = ArrayDecoders.k(bArr, i54, registers);
                        longArrayList6.h(CodedInputStream.c(registers.f34139b));
                    }
                    return iK3;
                }
                return i2;
            case 49:
                if (i6 == 3) {
                    Schema schemaP = p(i7);
                    int i55 = (i4 & (-8)) | 4;
                    Object objB = schemaP.b();
                    MessageSchema messageSchema = (MessageSchema) schemaP;
                    int iJ2 = messageSchema.J(objB, bArr, i2, i3, i55, registers);
                    int i56 = i55;
                    registers.f34140c = objB;
                    schemaP.c(objB);
                    registers.f34140c = objB;
                    protobufList.add(objB);
                    while (iJ2 < i3) {
                        int i57 = ArrayDecoders.i(bArr, iJ2, registers);
                        if (i4 != registers.f34138a) {
                            return iJ2;
                        }
                        Object objB2 = schemaP.b();
                        int i58 = i56;
                        iJ2 = messageSchema.J(objB2, bArr, i57, i3, i58, registers);
                        registers.f34140c = objB2;
                        schemaP.c(objB2);
                        registers.f34140c = objB2;
                        protobufList.add(objB2);
                        i56 = i58;
                    }
                    return iJ2;
                }
                return i2;
            default:
                return i2;
        }
    }

    public final void M(Object obj, int i2, Reader reader) {
        if ((536870912 & i2) != 0) {
            UnsafeUtil.p(i2 & 1048575, obj, reader.i());
        } else if (this.g) {
            UnsafeUtil.p(i2 & 1048575, obj, reader.d());
        } else {
            UnsafeUtil.p(i2 & 1048575, obj, reader.b());
        }
    }

    public final void O(int i2, Object obj) {
        int i3 = this.f34213a[i2 + 2];
        long j2 = 1048575 & i3;
        if (j2 == 1048575) {
            return;
        }
        UnsafeUtil.n(obj, j2, (1 << (i3 >>> 20)) | UnsafeUtil.f34267c.g(j2, obj));
    }

    public final void P(int i2, int i3, Object obj) {
        UnsafeUtil.n(obj, this.f34213a[i3 + 2] & 1048575, i2);
    }

    public final int Q(int i2, int i3) {
        int[] iArr = this.f34213a;
        int length = (iArr.length / 3) - 1;
        while (i3 <= length) {
            int i4 = (length + i3) >>> 1;
            int i5 = i4 * 3;
            int i6 = iArr[i5];
            if (i2 == i6) {
                return i5;
            }
            if (i2 < i6) {
                length = i4 - 1;
            } else {
                i3 = i4 + 1;
            }
        }
        return -1;
    }

    public final void R(Object obj, Object obj2, int i2) {
        r.putObject(obj, U(i2) & 1048575, obj2);
        O(i2, obj);
    }

    public final void S(Object obj, int i2, Object obj2, int i3) {
        r.putObject(obj, U(i3) & 1048575, obj2);
        P(i2, i3, obj);
    }

    public final int U(int i2) {
        return this.f34213a[i2 + 1];
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:7:0x002a  */
    public final void V(Object obj, Writer writer) {
        Map.Entry entry;
        boolean z;
        int i2;
        boolean z2;
        boolean z3 = this.f34217f;
        ExtensionSchema extensionSchema = this.o;
        if (z3) {
            ((ExtensionSchemaLite) extensionSchema).getClass();
            FieldSet<Object> fieldSet = ((GeneratedMessageLite.ExtendableMessage) obj).extensions;
            if (fieldSet.f34179a.isEmpty()) {
                entry = null;
            } else {
                entry = (Map.Entry) fieldSet.i().next();
            }
        } else {
            entry = null;
        }
        int[] iArr = this.f34213a;
        int length = iArr.length;
        Unsafe unsafe = r;
        int i3 = 0;
        int i4 = 1048575;
        int i5 = 0;
        while (i3 < length) {
            int iU = U(i3);
            int i6 = iArr[i3];
            int iT = T(iU);
            if (iT <= 17) {
                int i7 = iArr[i3 + 2];
                z = true;
                int i8 = i7 & 1048575;
                if (i8 != i4) {
                    i5 = unsafe.getInt(obj, i8);
                    i4 = i8;
                }
                i2 = 1 << (i7 >>> 20);
            } else {
                z = true;
                i2 = 0;
            }
            if (entry != null) {
                ((ExtensionSchemaLite) extensionSchema).getClass();
                tr.x(entry.getKey());
                throw null;
            }
            int i9 = iU & 1048575;
            Map.Entry entry2 = entry;
            ExtensionSchema extensionSchema2 = extensionSchema;
            long j2 = i9;
            switch (iT) {
                case 0:
                    if ((i5 & i2) != 0) {
                        writer.m(UnsafeUtil.f34267c.e(j2, obj), i6);
                    }
                    break;
                case 1:
                    if ((i5 & i2) != 0) {
                        writer.v(UnsafeUtil.f34267c.f(j2, obj), i6);
                    }
                    break;
                case 2:
                    if ((i5 & i2) != 0) {
                        writer.w(i6, unsafe.getLong(obj, j2));
                    }
                    break;
                case 3:
                    if ((i5 & i2) != 0) {
                        writer.f(i6, unsafe.getLong(obj, j2));
                    }
                    break;
                case 4:
                    if ((i5 & i2) != 0) {
                        writer.l(i6, unsafe.getInt(obj, j2));
                    }
                    break;
                case 5:
                    if ((i5 & i2) != 0) {
                        writer.r(i6, unsafe.getLong(obj, j2));
                    }
                    break;
                case 6:
                    if ((i5 & i2) != 0) {
                        writer.b(i6, unsafe.getInt(obj, j2));
                    }
                    break;
                case 7:
                    if ((i5 & i2) != 0) {
                        writer.x(i6, UnsafeUtil.f34267c.c(j2, obj));
                    }
                    break;
                case 8:
                    if ((i5 & i2) != 0) {
                        X(i6, unsafe.getObject(obj, j2), writer);
                    }
                    break;
                case 9:
                    if ((i5 & i2) != 0) {
                        writer.M(i6, unsafe.getObject(obj, j2), p(i3));
                    }
                    break;
                case 10:
                    if ((i5 & i2) != 0) {
                        writer.L(i6, (ByteString) unsafe.getObject(obj, j2));
                    }
                    break;
                case 11:
                    if ((i5 & i2) != 0) {
                        writer.q(i6, unsafe.getInt(obj, j2));
                    }
                    break;
                case 12:
                    if ((i5 & i2) != 0) {
                        writer.F(i6, unsafe.getInt(obj, j2));
                    }
                    break;
                case 13:
                    if ((i5 & i2) != 0) {
                        writer.y(i6, unsafe.getInt(obj, j2));
                    }
                    break;
                case 14:
                    if ((i5 & i2) != 0) {
                        writer.o(i6, unsafe.getLong(obj, j2));
                    }
                    break;
                case 15:
                    if ((i5 & i2) != 0) {
                        writer.H(i6, unsafe.getInt(obj, j2));
                    }
                    break;
                case 16:
                    if ((i5 & i2) != 0) {
                        writer.p(i6, unsafe.getLong(obj, j2));
                    }
                    break;
                case 17:
                    if ((i5 & i2) != 0) {
                        writer.J(i6, unsafe.getObject(obj, j2), p(i3));
                    }
                    break;
                case 18:
                    SchemaUtil.D(iArr[i3], (List) unsafe.getObject(obj, j2), writer, false);
                    break;
                case 19:
                    SchemaUtil.H(iArr[i3], (List) unsafe.getObject(obj, j2), writer, false);
                    break;
                case 20:
                    SchemaUtil.J(iArr[i3], (List) unsafe.getObject(obj, j2), writer, false);
                    break;
                case 21:
                    SchemaUtil.P(iArr[i3], (List) unsafe.getObject(obj, j2), writer, false);
                    break;
                case 22:
                    SchemaUtil.I(iArr[i3], (List) unsafe.getObject(obj, j2), writer, false);
                    break;
                case 23:
                    SchemaUtil.G(iArr[i3], (List) unsafe.getObject(obj, j2), writer, false);
                    break;
                case 24:
                    SchemaUtil.F(iArr[i3], (List) unsafe.getObject(obj, j2), writer, false);
                    break;
                case 25:
                    SchemaUtil.C(iArr[i3], (List) unsafe.getObject(obj, j2), writer, false);
                    break;
                case 26:
                    int i10 = iArr[i3];
                    List list = (List) unsafe.getObject(obj, j2);
                    Class cls = SchemaUtil.f34235a;
                    if (list != null && !list.isEmpty()) {
                        writer.d(i10, list);
                    }
                    break;
                case 27:
                    int i11 = iArr[i3];
                    List list2 = (List) unsafe.getObject(obj, j2);
                    Schema schemaP = p(i3);
                    Class cls2 = SchemaUtil.f34235a;
                    if (list2 != null && !list2.isEmpty()) {
                        writer.K(i11, list2, schemaP);
                    }
                    break;
                case 28:
                    int i12 = iArr[i3];
                    List list3 = (List) unsafe.getObject(obj, j2);
                    Class cls3 = SchemaUtil.f34235a;
                    if (list3 != null && !list3.isEmpty()) {
                        writer.I(i12, list3);
                    }
                    break;
                case 29:
                    z2 = false;
                    SchemaUtil.O(iArr[i3], (List) unsafe.getObject(obj, j2), writer, false);
                    break;
                case 30:
                    z2 = false;
                    SchemaUtil.E(iArr[i3], (List) unsafe.getObject(obj, j2), writer, false);
                    break;
                case 31:
                    z2 = false;
                    SchemaUtil.K(iArr[i3], (List) unsafe.getObject(obj, j2), writer, false);
                    break;
                case 32:
                    z2 = false;
                    SchemaUtil.L(iArr[i3], (List) unsafe.getObject(obj, j2), writer, false);
                    break;
                case 33:
                    z2 = false;
                    SchemaUtil.M(iArr[i3], (List) unsafe.getObject(obj, j2), writer, false);
                    break;
                case 34:
                    z2 = false;
                    SchemaUtil.N(iArr[i3], (List) unsafe.getObject(obj, j2), writer, false);
                    break;
                case 35:
                    SchemaUtil.D(iArr[i3], (List) unsafe.getObject(obj, j2), writer, z);
                    break;
                case 36:
                    SchemaUtil.H(iArr[i3], (List) unsafe.getObject(obj, j2), writer, z);
                    break;
                case 37:
                    SchemaUtil.J(iArr[i3], (List) unsafe.getObject(obj, j2), writer, z);
                    break;
                case 38:
                    SchemaUtil.P(iArr[i3], (List) unsafe.getObject(obj, j2), writer, z);
                    break;
                case 39:
                    SchemaUtil.I(iArr[i3], (List) unsafe.getObject(obj, j2), writer, z);
                    break;
                case 40:
                    SchemaUtil.G(iArr[i3], (List) unsafe.getObject(obj, j2), writer, z);
                    break;
                case 41:
                    SchemaUtil.F(iArr[i3], (List) unsafe.getObject(obj, j2), writer, z);
                    break;
                case EACTags.CURRENCY_CODE /* 42 */:
                    SchemaUtil.C(iArr[i3], (List) unsafe.getObject(obj, j2), writer, z);
                    break;
                case EACTags.DATE_OF_BIRTH /* 43 */:
                    SchemaUtil.O(iArr[i3], (List) unsafe.getObject(obj, j2), writer, z);
                    break;
                case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                    SchemaUtil.E(iArr[i3], (List) unsafe.getObject(obj, j2), writer, z);
                    break;
                case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                    SchemaUtil.K(iArr[i3], (List) unsafe.getObject(obj, j2), writer, z);
                    break;
                case 46:
                    SchemaUtil.L(iArr[i3], (List) unsafe.getObject(obj, j2), writer, z);
                    break;
                case EACTags.PIN_USAGE_POLICY /* 47 */:
                    SchemaUtil.M(iArr[i3], (List) unsafe.getObject(obj, j2), writer, z);
                    break;
                case 48:
                    SchemaUtil.N(iArr[i3], (List) unsafe.getObject(obj, j2), writer, z);
                    break;
                case 49:
                    int i13 = iArr[i3];
                    List list4 = (List) unsafe.getObject(obj, j2);
                    Schema schemaP2 = p(i3);
                    Class cls4 = SchemaUtil.f34235a;
                    if (list4 != null && !list4.isEmpty()) {
                        writer.N(i13, list4, schemaP2);
                    }
                    break;
                case 50:
                    W(writer, i6, unsafe.getObject(obj, j2), i3);
                    break;
                case EACTags.TRANSACTION_DATE /* 51 */:
                    if (v(i6, i3, obj)) {
                        writer.m(((Double) UnsafeUtil.f34267c.i(j2, obj)).doubleValue(), i6);
                    }
                    break;
                case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                    if (v(i6, i3, obj)) {
                        writer.v(((Float) UnsafeUtil.f34267c.i(j2, obj)).floatValue(), i6);
                    }
                    break;
                case EACTags.SEX /* 53 */:
                    if (v(i6, i3, obj)) {
                        writer.w(i6, G(j2, obj));
                    }
                    break;
                case EACTags.CURRENCY_EXPONENT /* 54 */:
                    if (v(i6, i3, obj)) {
                        writer.f(i6, G(j2, obj));
                    }
                    break;
                case 55:
                    if (v(i6, i3, obj)) {
                        writer.l(i6, F(j2, obj));
                    }
                    break;
                case 56:
                    if (v(i6, i3, obj)) {
                        writer.r(i6, G(j2, obj));
                    }
                    break;
                case 57:
                    if (v(i6, i3, obj)) {
                        writer.b(i6, F(j2, obj));
                    }
                    break;
                case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
                    if (v(i6, i3, obj)) {
                        writer.x(i6, ((Boolean) UnsafeUtil.f34267c.i(j2, obj)).booleanValue());
                    }
                    break;
                case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                    if (v(i6, i3, obj)) {
                        X(i6, unsafe.getObject(obj, j2), writer);
                    }
                    break;
                case 60:
                    if (v(i6, i3, obj)) {
                        writer.M(i6, unsafe.getObject(obj, j2), p(i3));
                    }
                    break;
                case 61:
                    if (v(i6, i3, obj)) {
                        writer.L(i6, (ByteString) unsafe.getObject(obj, j2));
                    }
                    break;
                case 62:
                    if (v(i6, i3, obj)) {
                        writer.q(i6, F(j2, obj));
                    }
                    break;
                case 63:
                    if (v(i6, i3, obj)) {
                        writer.F(i6, F(j2, obj));
                    }
                    break;
                case 64:
                    if (v(i6, i3, obj)) {
                        writer.y(i6, F(j2, obj));
                    }
                    break;
                case EACTags.ELEMENT_LIST /* 65 */:
                    if (v(i6, i3, obj)) {
                        writer.o(i6, G(j2, obj));
                    }
                    break;
                case EACTags.ADDRESS /* 66 */:
                    if (v(i6, i3, obj)) {
                        writer.H(i6, F(j2, obj));
                    }
                    break;
                case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                    if (v(i6, i3, obj)) {
                        writer.p(i6, G(j2, obj));
                    }
                    break;
                case EACTags.APPLICATION_IMAGE /* 68 */:
                    if (v(i6, i3, obj)) {
                        writer.J(i6, unsafe.getObject(obj, j2), p(i3));
                    }
                    break;
                default:
                    break;
            }
            i3 += 3;
            extensionSchema = extensionSchema2;
            entry = entry2;
        }
        Map.Entry entry3 = entry;
        ExtensionSchema extensionSchema3 = extensionSchema;
        if (entry3 != null) {
            ((ExtensionSchemaLite) extensionSchema3).getClass();
            tr.x(entry3.getKey());
            throw null;
        }
        ((UnknownFieldSetLiteSchema) this.n).getClass();
        ((GeneratedMessageLite) obj).unknownFields.f(writer);
    }

    public final void W(Writer writer, int i2, Object obj, int i3) {
        if (obj == null) {
            return;
        }
        this.p.b(o(i3));
        throw null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:9:0x0022  */
    @Override // com.google.crypto.tink.shaded.protobuf.Schema
    public final void a(Object obj, Object obj2) {
        Object obj3;
        l(obj);
        obj2.getClass();
        int i2 = 0;
        while (true) {
            int[] iArr = this.f34213a;
            if (i2 >= iArr.length) {
                Object obj4 = obj;
                SchemaUtil.z(this.n, obj4, obj2);
                if (this.f34217f) {
                    SchemaUtil.y(this.o, obj4, obj2);
                    return;
                }
                return;
            }
            int iU = U(i2);
            long j2 = 1048575 & iU;
            int i3 = iArr[i2];
            switch (T(iU)) {
                case 0:
                    if (!t(i2, obj2)) {
                        obj3 = obj;
                    } else {
                        UnsafeUtil.MemoryAccessor memoryAccessor = UnsafeUtil.f34267c;
                        obj3 = obj;
                        memoryAccessor.m(obj3, j2, memoryAccessor.e(j2, obj2));
                        O(i2, obj3);
                    }
                    break;
                case 1:
                    if (t(i2, obj2)) {
                        UnsafeUtil.MemoryAccessor memoryAccessor2 = UnsafeUtil.f34267c;
                        memoryAccessor2.n(obj, j2, memoryAccessor2.f(j2, obj2));
                        O(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 2:
                    if (t(i2, obj2)) {
                        UnsafeUtil.o(j2, obj, UnsafeUtil.f34267c.h(j2, obj2));
                        O(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 3:
                    if (t(i2, obj2)) {
                        UnsafeUtil.o(j2, obj, UnsafeUtil.f34267c.h(j2, obj2));
                        O(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 4:
                    if (t(i2, obj2)) {
                        UnsafeUtil.n(obj, j2, UnsafeUtil.f34267c.g(j2, obj2));
                        O(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 5:
                    if (t(i2, obj2)) {
                        UnsafeUtil.o(j2, obj, UnsafeUtil.f34267c.h(j2, obj2));
                        O(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 6:
                    if (t(i2, obj2)) {
                        UnsafeUtil.n(obj, j2, UnsafeUtil.f34267c.g(j2, obj2));
                        O(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 7:
                    if (t(i2, obj2)) {
                        UnsafeUtil.MemoryAccessor memoryAccessor3 = UnsafeUtil.f34267c;
                        memoryAccessor3.k(obj, j2, memoryAccessor3.c(j2, obj2));
                        O(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 8:
                    if (t(i2, obj2)) {
                        UnsafeUtil.p(j2, obj, UnsafeUtil.f34267c.i(j2, obj2));
                        O(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 9:
                    y(obj, obj2, i2);
                    obj3 = obj;
                    break;
                case 10:
                    if (t(i2, obj2)) {
                        UnsafeUtil.p(j2, obj, UnsafeUtil.f34267c.i(j2, obj2));
                        O(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 11:
                    if (t(i2, obj2)) {
                        UnsafeUtil.n(obj, j2, UnsafeUtil.f34267c.g(j2, obj2));
                        O(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 12:
                    if (t(i2, obj2)) {
                        UnsafeUtil.n(obj, j2, UnsafeUtil.f34267c.g(j2, obj2));
                        O(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 13:
                    if (t(i2, obj2)) {
                        UnsafeUtil.n(obj, j2, UnsafeUtil.f34267c.g(j2, obj2));
                        O(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 14:
                    if (t(i2, obj2)) {
                        UnsafeUtil.o(j2, obj, UnsafeUtil.f34267c.h(j2, obj2));
                        O(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 15:
                    if (t(i2, obj2)) {
                        UnsafeUtil.n(obj, j2, UnsafeUtil.f34267c.g(j2, obj2));
                        O(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 16:
                    if (t(i2, obj2)) {
                        UnsafeUtil.o(j2, obj, UnsafeUtil.f34267c.h(j2, obj2));
                        O(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 17:
                    y(obj, obj2, i2);
                    obj3 = obj;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case EACTags.CURRENCY_CODE /* 42 */:
                case EACTags.DATE_OF_BIRTH /* 43 */:
                case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                case 46:
                case EACTags.PIN_USAGE_POLICY /* 47 */:
                case 48:
                case 49:
                    this.m.b(j2, obj, obj2);
                    obj3 = obj;
                    break;
                case 50:
                    Class cls = SchemaUtil.f34235a;
                    UnsafeUtil.MemoryAccessor memoryAccessor4 = UnsafeUtil.f34267c;
                    UnsafeUtil.p(j2, obj, this.p.a(memoryAccessor4.i(j2, obj), memoryAccessor4.i(j2, obj2)));
                    obj3 = obj;
                    break;
                case EACTags.TRANSACTION_DATE /* 51 */:
                case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                case EACTags.SEX /* 53 */:
                case EACTags.CURRENCY_EXPONENT /* 54 */:
                case 55:
                case 56:
                case 57:
                case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
                case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                    if (v(i3, i2, obj2)) {
                        UnsafeUtil.p(j2, obj, UnsafeUtil.f34267c.i(j2, obj2));
                        P(i3, i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 60:
                    z(obj, obj2, i2);
                    obj3 = obj;
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case EACTags.ELEMENT_LIST /* 65 */:
                case EACTags.ADDRESS /* 66 */:
                case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                    if (v(i3, i2, obj2)) {
                        UnsafeUtil.p(j2, obj, UnsafeUtil.f34267c.i(j2, obj2));
                        P(i3, i2, obj);
                    }
                    obj3 = obj;
                    break;
                case EACTags.APPLICATION_IMAGE /* 68 */:
                    z(obj, obj2, i2);
                    obj3 = obj;
                    break;
                default:
                    obj3 = obj;
                    break;
            }
            i2 += 3;
            obj = obj3;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Schema
    public final Object b() {
        return this.l.a(this.f34216e);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x004e  */
    /* JADX WARN: Code duplicated, block: B:20:0x0054  */
    /* JADX WARN: Code duplicated, block: B:31:0x0061 A[SYNTHETIC] */
    @Override // com.google.crypto.tink.shaded.protobuf.Schema
    public final void c(Object obj) {
        if (u(obj)) {
            if (obj instanceof GeneratedMessageLite) {
                GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) obj;
                generatedMessageLite.l(Integer.MAX_VALUE);
                generatedMessageLite.memoizedHashCode = 0;
                generatedMessageLite.w();
            }
            int length = this.f34213a.length;
            for (int i2 = 0; i2 < length; i2 += 3) {
                int iU = U(i2);
                long j2 = 1048575 & iU;
                int iT = T(iU);
                if (iT != 9) {
                    switch (iT) {
                        case 17:
                            if (t(i2, obj)) {
                                p(i2).c(r.getObject(obj, j2));
                            }
                            break;
                        case 18:
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                        case 26:
                        case 27:
                        case 28:
                        case 29:
                        case 30:
                        case 31:
                        case 32:
                        case 33:
                        case 34:
                        case 35:
                        case 36:
                        case 37:
                        case 38:
                        case 39:
                        case 40:
                        case 41:
                        case EACTags.CURRENCY_CODE /* 42 */:
                        case EACTags.DATE_OF_BIRTH /* 43 */:
                        case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                        case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                        case 46:
                        case EACTags.PIN_USAGE_POLICY /* 47 */:
                        case 48:
                        case 49:
                            this.m.a(j2, obj);
                            break;
                        case 50:
                            Unsafe unsafe = r;
                            Object object = unsafe.getObject(obj, j2);
                            if (object != null) {
                                unsafe.putObject(obj, j2, this.p.e(object));
                            }
                            break;
                    }
                } else if (t(i2, obj)) {
                    p(i2).c(r.getObject(obj, j2));
                }
            }
            ((UnknownFieldSetLiteSchema) this.n).getClass();
            ((GeneratedMessageLite) obj).unknownFields.f34261e = false;
            if (this.f34217f) {
                ((ExtensionSchemaLite) this.o).getClass();
                ((GeneratedMessageLite.ExtendableMessage) obj).extensions.j();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0045  */
    /* JADX WARN: Code duplicated, block: B:56:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:57:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:60:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:62:0x00db  */
    /* JADX WARN: Code duplicated, block: B:77:0x0108 A[EDGE_INSN: B:77:0x0108->B:70:0x0108 BREAK  A[LOOP:0: B:3:0x0007->B:65:0x00ef], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:81:0x00ef A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:82:0x00ef A[SYNTHETIC] */
    @Override // com.google.crypto.tink.shaded.protobuf.Schema
    public final boolean d(Object obj) {
        int iT;
        int i2 = 1048575;
        int i3 = 0;
        int i4 = 0;
        loop0: while (true) {
            boolean zT = true;
            if (i3 >= this.f34220j) {
                if (this.f34217f) {
                    ((ExtensionSchemaLite) this.o).getClass();
                    if (!((GeneratedMessageLite.ExtendableMessage) obj).extensions.g()) {
                        break;
                    }
                }
                return true;
            }
            int i5 = this.f34219i[i3];
            int[] iArr = this.f34213a;
            int i6 = iArr[i5];
            int iU = U(i5);
            int i7 = iArr[i5 + 2];
            int i8 = i7 & 1048575;
            int i9 = 1 << (i7 >>> 20);
            if (i8 != i2) {
                if (i8 != 1048575) {
                    i4 = r.getInt(obj, i8);
                }
                i2 = i8;
            }
            if ((268435456 & iU) == 0) {
                iT = T(iU);
                if (iT != 9 || iT == 17) {
                    if (i2 == 1048575) {
                        zT = t(i5, obj);
                    } else if ((i9 & i4) == 0) {
                        zT = false;
                    }
                    if (zT) {
                        if (!p(i5).d(UnsafeUtil.f34267c.i(iU & 1048575, obj))) {
                            break;
                        }
                    } else {
                        continue;
                    }
                    i3++;
                } else {
                    if (iT != 27) {
                        if (iT == 60 || iT == 68) {
                            if (v(i6, i5, obj)) {
                                if (!p(i5).d(UnsafeUtil.f34267c.i(iU & 1048575, obj))) {
                                    break;
                                }
                            } else {
                                continue;
                            }
                        } else if (iT != 49) {
                            if (iT != 50) {
                                continue;
                            } else {
                                Object objI = UnsafeUtil.f34267c.i(iU & 1048575, obj);
                                MapFieldSchema mapFieldSchema = this.p;
                                if (!mapFieldSchema.d(objI).isEmpty()) {
                                    mapFieldSchema.b(o(i5));
                                    throw null;
                                }
                            }
                        }
                        i3++;
                    }
                    List list = (List) UnsafeUtil.f34267c.i(iU & 1048575, obj);
                    if (list.isEmpty()) {
                        continue;
                    } else {
                        Schema schemaP = p(i5);
                        for (int i10 = 0; i10 < list.size(); i10++) {
                            if (!schemaP.d(list.get(i10))) {
                                break loop0;
                            }
                        }
                    }
                    i3++;
                }
            } else {
                if (!(i2 == 1048575 ? t(i5, obj) : (i4 & i9) != 0)) {
                    break;
                }
                iT = T(iU);
                if (iT != 9) {
                }
                if (i2 == 1048575) {
                    zT = t(i5, obj);
                } else if ((i9 & i4) == 0) {
                    zT = false;
                }
                if (zT) {
                    if (!p(i5).d(UnsafeUtil.f34267c.i(iU & 1048575, obj))) {
                        break;
                        break;
                    }
                } else {
                    continue;
                }
                i3++;
            }
        }
        return false;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Schema
    public final void e(Object obj, byte[] bArr, int i2, int i3, ArrayDecoders.Registers registers) throws InvalidProtocolBufferException {
        if (this.f34218h) {
            K(obj, bArr, i2, i3, registers);
        } else {
            J(obj, bArr, i2, i3, 0, registers);
        }
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 20481. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    @Override // com.google.crypto.tink.shaded.protobuf.Schema
    public final void f(java.lang.Object r20, com.google.crypto.tink.shaded.protobuf.CodedInputStreamReader r21, com.google.crypto.tink.shaded.protobuf.ExtensionRegistryLite r22) {
        /*
            Method dump skipped, instruction units count: 2048
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.MessageSchema.f(java.lang.Object, com.google.crypto.tink.shaded.protobuf.CodedInputStreamReader, com.google.crypto.tink.shaded.protobuf.ExtensionRegistryLite):void");
    }

    /* JADX WARN: Code duplicated, block: B:13:0x003d  */
    @Override // com.google.crypto.tink.shaded.protobuf.Schema
    public final boolean g(GeneratedMessageLite generatedMessageLite, GeneratedMessageLite generatedMessageLite2) {
        int[] iArr = this.f34213a;
        int length = iArr.length;
        int i2 = 0;
        while (true) {
            boolean zA = true;
            if (i2 < length) {
                int iU = U(i2);
                long j2 = iU & 1048575;
                switch (T(iU)) {
                    case 0:
                        if (!k(generatedMessageLite, generatedMessageLite2, i2)) {
                            zA = false;
                        } else {
                            UnsafeUtil.MemoryAccessor memoryAccessor = UnsafeUtil.f34267c;
                            if (Double.doubleToLongBits(memoryAccessor.e(j2, generatedMessageLite)) != Double.doubleToLongBits(memoryAccessor.e(j2, generatedMessageLite2))) {
                                zA = false;
                            }
                        }
                        break;
                    case 1:
                        if (!k(generatedMessageLite, generatedMessageLite2, i2)) {
                            zA = false;
                        } else {
                            UnsafeUtil.MemoryAccessor memoryAccessor2 = UnsafeUtil.f34267c;
                            if (Float.floatToIntBits(memoryAccessor2.f(j2, generatedMessageLite)) != Float.floatToIntBits(memoryAccessor2.f(j2, generatedMessageLite2))) {
                                zA = false;
                            }
                        }
                        break;
                    case 2:
                        if (!k(generatedMessageLite, generatedMessageLite2, i2)) {
                            zA = false;
                        } else {
                            UnsafeUtil.MemoryAccessor memoryAccessor3 = UnsafeUtil.f34267c;
                            if (memoryAccessor3.h(j2, generatedMessageLite) != memoryAccessor3.h(j2, generatedMessageLite2)) {
                                zA = false;
                            }
                        }
                        break;
                    case 3:
                        if (!k(generatedMessageLite, generatedMessageLite2, i2)) {
                            zA = false;
                        } else {
                            UnsafeUtil.MemoryAccessor memoryAccessor4 = UnsafeUtil.f34267c;
                            if (memoryAccessor4.h(j2, generatedMessageLite) != memoryAccessor4.h(j2, generatedMessageLite2)) {
                                zA = false;
                            }
                        }
                        break;
                    case 4:
                        if (!k(generatedMessageLite, generatedMessageLite2, i2)) {
                            zA = false;
                        } else {
                            UnsafeUtil.MemoryAccessor memoryAccessor5 = UnsafeUtil.f34267c;
                            if (memoryAccessor5.g(j2, generatedMessageLite) != memoryAccessor5.g(j2, generatedMessageLite2)) {
                                zA = false;
                            }
                        }
                        break;
                    case 5:
                        if (!k(generatedMessageLite, generatedMessageLite2, i2)) {
                            zA = false;
                        } else {
                            UnsafeUtil.MemoryAccessor memoryAccessor6 = UnsafeUtil.f34267c;
                            if (memoryAccessor6.h(j2, generatedMessageLite) != memoryAccessor6.h(j2, generatedMessageLite2)) {
                                zA = false;
                            }
                        }
                        break;
                    case 6:
                        if (!k(generatedMessageLite, generatedMessageLite2, i2)) {
                            zA = false;
                        } else {
                            UnsafeUtil.MemoryAccessor memoryAccessor7 = UnsafeUtil.f34267c;
                            if (memoryAccessor7.g(j2, generatedMessageLite) != memoryAccessor7.g(j2, generatedMessageLite2)) {
                                zA = false;
                            }
                        }
                        break;
                    case 7:
                        if (!k(generatedMessageLite, generatedMessageLite2, i2)) {
                            zA = false;
                        } else {
                            UnsafeUtil.MemoryAccessor memoryAccessor8 = UnsafeUtil.f34267c;
                            if (memoryAccessor8.c(j2, generatedMessageLite) != memoryAccessor8.c(j2, generatedMessageLite2)) {
                                zA = false;
                            }
                        }
                        break;
                    case 8:
                        if (!k(generatedMessageLite, generatedMessageLite2, i2)) {
                            zA = false;
                        } else {
                            UnsafeUtil.MemoryAccessor memoryAccessor9 = UnsafeUtil.f34267c;
                            if (!SchemaUtil.A(memoryAccessor9.i(j2, generatedMessageLite), memoryAccessor9.i(j2, generatedMessageLite2))) {
                                zA = false;
                            }
                        }
                        break;
                    case 9:
                        if (!k(generatedMessageLite, generatedMessageLite2, i2)) {
                            zA = false;
                        } else {
                            UnsafeUtil.MemoryAccessor memoryAccessor10 = UnsafeUtil.f34267c;
                            if (!SchemaUtil.A(memoryAccessor10.i(j2, generatedMessageLite), memoryAccessor10.i(j2, generatedMessageLite2))) {
                                zA = false;
                            }
                        }
                        break;
                    case 10:
                        if (!k(generatedMessageLite, generatedMessageLite2, i2)) {
                            zA = false;
                        } else {
                            UnsafeUtil.MemoryAccessor memoryAccessor11 = UnsafeUtil.f34267c;
                            if (!SchemaUtil.A(memoryAccessor11.i(j2, generatedMessageLite), memoryAccessor11.i(j2, generatedMessageLite2))) {
                                zA = false;
                            }
                        }
                        break;
                    case 11:
                        if (!k(generatedMessageLite, generatedMessageLite2, i2)) {
                            zA = false;
                        } else {
                            UnsafeUtil.MemoryAccessor memoryAccessor12 = UnsafeUtil.f34267c;
                            if (memoryAccessor12.g(j2, generatedMessageLite) != memoryAccessor12.g(j2, generatedMessageLite2)) {
                                zA = false;
                            }
                        }
                        break;
                    case 12:
                        if (!k(generatedMessageLite, generatedMessageLite2, i2)) {
                            zA = false;
                        } else {
                            UnsafeUtil.MemoryAccessor memoryAccessor13 = UnsafeUtil.f34267c;
                            if (memoryAccessor13.g(j2, generatedMessageLite) != memoryAccessor13.g(j2, generatedMessageLite2)) {
                                zA = false;
                            }
                        }
                        break;
                    case 13:
                        if (!k(generatedMessageLite, generatedMessageLite2, i2)) {
                            zA = false;
                        } else {
                            UnsafeUtil.MemoryAccessor memoryAccessor14 = UnsafeUtil.f34267c;
                            if (memoryAccessor14.g(j2, generatedMessageLite) != memoryAccessor14.g(j2, generatedMessageLite2)) {
                                zA = false;
                            }
                        }
                        break;
                    case 14:
                        if (!k(generatedMessageLite, generatedMessageLite2, i2)) {
                            zA = false;
                        } else {
                            UnsafeUtil.MemoryAccessor memoryAccessor15 = UnsafeUtil.f34267c;
                            if (memoryAccessor15.h(j2, generatedMessageLite) != memoryAccessor15.h(j2, generatedMessageLite2)) {
                                zA = false;
                            }
                        }
                        break;
                    case 15:
                        if (!k(generatedMessageLite, generatedMessageLite2, i2)) {
                            zA = false;
                        } else {
                            UnsafeUtil.MemoryAccessor memoryAccessor16 = UnsafeUtil.f34267c;
                            if (memoryAccessor16.g(j2, generatedMessageLite) != memoryAccessor16.g(j2, generatedMessageLite2)) {
                                zA = false;
                            }
                        }
                        break;
                    case 16:
                        if (!k(generatedMessageLite, generatedMessageLite2, i2)) {
                            zA = false;
                        } else {
                            UnsafeUtil.MemoryAccessor memoryAccessor17 = UnsafeUtil.f34267c;
                            if (memoryAccessor17.h(j2, generatedMessageLite) != memoryAccessor17.h(j2, generatedMessageLite2)) {
                                zA = false;
                            }
                        }
                        break;
                    case 17:
                        if (!k(generatedMessageLite, generatedMessageLite2, i2)) {
                            zA = false;
                        } else {
                            UnsafeUtil.MemoryAccessor memoryAccessor18 = UnsafeUtil.f34267c;
                            if (!SchemaUtil.A(memoryAccessor18.i(j2, generatedMessageLite), memoryAccessor18.i(j2, generatedMessageLite2))) {
                                zA = false;
                            }
                        }
                        break;
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                    case 33:
                    case 34:
                    case 35:
                    case 36:
                    case 37:
                    case 38:
                    case 39:
                    case 40:
                    case 41:
                    case EACTags.CURRENCY_CODE /* 42 */:
                    case EACTags.DATE_OF_BIRTH /* 43 */:
                    case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                    case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                    case 46:
                    case EACTags.PIN_USAGE_POLICY /* 47 */:
                    case 48:
                    case 49:
                        UnsafeUtil.MemoryAccessor memoryAccessor19 = UnsafeUtil.f34267c;
                        zA = SchemaUtil.A(memoryAccessor19.i(j2, generatedMessageLite), memoryAccessor19.i(j2, generatedMessageLite2));
                        break;
                    case 50:
                        UnsafeUtil.MemoryAccessor memoryAccessor20 = UnsafeUtil.f34267c;
                        zA = SchemaUtil.A(memoryAccessor20.i(j2, generatedMessageLite), memoryAccessor20.i(j2, generatedMessageLite2));
                        break;
                    case EACTags.TRANSACTION_DATE /* 51 */:
                    case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                    case EACTags.SEX /* 53 */:
                    case EACTags.CURRENCY_EXPONENT /* 54 */:
                    case 55:
                    case 56:
                    case 57:
                    case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
                    case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                    case 60:
                    case 61:
                    case 62:
                    case 63:
                    case 64:
                    case EACTags.ELEMENT_LIST /* 65 */:
                    case EACTags.ADDRESS /* 66 */:
                    case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                    case EACTags.APPLICATION_IMAGE /* 68 */:
                        long j3 = iArr[i2 + 2] & 1048575;
                        UnsafeUtil.MemoryAccessor memoryAccessor21 = UnsafeUtil.f34267c;
                        if (memoryAccessor21.g(j3, generatedMessageLite) != memoryAccessor21.g(j3, generatedMessageLite2) || !SchemaUtil.A(memoryAccessor21.i(j2, generatedMessageLite), memoryAccessor21.i(j2, generatedMessageLite2))) {
                            zA = false;
                        }
                        break;
                }
                if (zA) {
                    i2 += 3;
                }
            } else {
                UnknownFieldSetLiteSchema unknownFieldSetLiteSchema = (UnknownFieldSetLiteSchema) this.n;
                unknownFieldSetLiteSchema.getClass();
                UnknownFieldSetLite unknownFieldSetLite = generatedMessageLite.unknownFields;
                unknownFieldSetLiteSchema.getClass();
                if (unknownFieldSetLite.equals(generatedMessageLite2.unknownFields)) {
                    if (!this.f34217f) {
                        return true;
                    }
                    ExtensionSchemaLite extensionSchemaLite = (ExtensionSchemaLite) this.o;
                    extensionSchemaLite.getClass();
                    FieldSet<Object> fieldSet = ((GeneratedMessageLite.ExtendableMessage) generatedMessageLite).extensions;
                    extensionSchemaLite.getClass();
                    return fieldSet.equals(((GeneratedMessageLite.ExtendableMessage) generatedMessageLite2).extensions);
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00e4 A[PHI: r3
      0x00e4: PHI (r3v32 int) = (r3v10 int), (r3v33 int) binds: [B:84:0x0219, B:42:0x00e2] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.crypto.tink.shaded.protobuf.Schema
    public final int h(GeneratedMessageLite generatedMessageLite) {
        int i2;
        int iB;
        int i3;
        int iG;
        int i4;
        int[] iArr = this.f34213a;
        int length = iArr.length;
        int i5 = 0;
        for (int i6 = 0; i6 < length; i6 += 3) {
            int iU = U(i6);
            int i7 = iArr[i6];
            long j2 = 1048575 & iU;
            int i8 = 1237;
            int iHashCode = 37;
            switch (T(iU)) {
                case 0:
                    i2 = i5 * 53;
                    iB = Internal.b(Double.doubleToLongBits(UnsafeUtil.f34267c.e(j2, generatedMessageLite)));
                    i5 = iB + i2;
                    break;
                case 1:
                    i2 = i5 * 53;
                    iB = Float.floatToIntBits(UnsafeUtil.f34267c.f(j2, generatedMessageLite));
                    i5 = iB + i2;
                    break;
                case 2:
                    i2 = i5 * 53;
                    iB = Internal.b(UnsafeUtil.f34267c.h(j2, generatedMessageLite));
                    i5 = iB + i2;
                    break;
                case 3:
                    i2 = i5 * 53;
                    iB = Internal.b(UnsafeUtil.f34267c.h(j2, generatedMessageLite));
                    i5 = iB + i2;
                    break;
                case 4:
                    i3 = i5 * 53;
                    iG = UnsafeUtil.f34267c.g(j2, generatedMessageLite);
                    i5 = i3 + iG;
                    break;
                case 5:
                    i2 = i5 * 53;
                    iB = Internal.b(UnsafeUtil.f34267c.h(j2, generatedMessageLite));
                    i5 = iB + i2;
                    break;
                case 6:
                    i3 = i5 * 53;
                    iG = UnsafeUtil.f34267c.g(j2, generatedMessageLite);
                    i5 = i3 + iG;
                    break;
                case 7:
                    i4 = i5 * 53;
                    boolean zC = UnsafeUtil.f34267c.c(j2, generatedMessageLite);
                    Charset charset = Internal.f34190a;
                    if (zC) {
                        i8 = 1231;
                    }
                    i5 = i8 + i4;
                    break;
                case 8:
                    i2 = i5 * 53;
                    iB = ((String) UnsafeUtil.f34267c.i(j2, generatedMessageLite)).hashCode();
                    i5 = iB + i2;
                    break;
                case 9:
                    Object objI = UnsafeUtil.f34267c.i(j2, generatedMessageLite);
                    if (objI != null) {
                        iHashCode = objI.hashCode();
                    }
                    i5 = (i5 * 53) + iHashCode;
                    break;
                case 10:
                    i2 = i5 * 53;
                    iB = UnsafeUtil.f34267c.i(j2, generatedMessageLite).hashCode();
                    i5 = iB + i2;
                    break;
                case 11:
                    i3 = i5 * 53;
                    iG = UnsafeUtil.f34267c.g(j2, generatedMessageLite);
                    i5 = i3 + iG;
                    break;
                case 12:
                    i3 = i5 * 53;
                    iG = UnsafeUtil.f34267c.g(j2, generatedMessageLite);
                    i5 = i3 + iG;
                    break;
                case 13:
                    i3 = i5 * 53;
                    iG = UnsafeUtil.f34267c.g(j2, generatedMessageLite);
                    i5 = i3 + iG;
                    break;
                case 14:
                    i2 = i5 * 53;
                    iB = Internal.b(UnsafeUtil.f34267c.h(j2, generatedMessageLite));
                    i5 = iB + i2;
                    break;
                case 15:
                    i3 = i5 * 53;
                    iG = UnsafeUtil.f34267c.g(j2, generatedMessageLite);
                    i5 = i3 + iG;
                    break;
                case 16:
                    i2 = i5 * 53;
                    iB = Internal.b(UnsafeUtil.f34267c.h(j2, generatedMessageLite));
                    i5 = iB + i2;
                    break;
                case 17:
                    Object objI2 = UnsafeUtil.f34267c.i(j2, generatedMessageLite);
                    if (objI2 != null) {
                        iHashCode = objI2.hashCode();
                    }
                    i5 = (i5 * 53) + iHashCode;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case EACTags.CURRENCY_CODE /* 42 */:
                case EACTags.DATE_OF_BIRTH /* 43 */:
                case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                case 46:
                case EACTags.PIN_USAGE_POLICY /* 47 */:
                case 48:
                case 49:
                    i2 = i5 * 53;
                    iB = UnsafeUtil.f34267c.i(j2, generatedMessageLite).hashCode();
                    i5 = iB + i2;
                    break;
                case 50:
                    i2 = i5 * 53;
                    iB = UnsafeUtil.f34267c.i(j2, generatedMessageLite).hashCode();
                    i5 = iB + i2;
                    break;
                case EACTags.TRANSACTION_DATE /* 51 */:
                    if (v(i7, i6, generatedMessageLite)) {
                        i2 = i5 * 53;
                        iB = Internal.b(Double.doubleToLongBits(((Double) UnsafeUtil.f34267c.i(j2, generatedMessageLite)).doubleValue()));
                        i5 = iB + i2;
                    }
                    break;
                case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                    if (v(i7, i6, generatedMessageLite)) {
                        i2 = i5 * 53;
                        iB = Float.floatToIntBits(((Float) UnsafeUtil.f34267c.i(j2, generatedMessageLite)).floatValue());
                        i5 = iB + i2;
                    }
                    break;
                case EACTags.SEX /* 53 */:
                    if (v(i7, i6, generatedMessageLite)) {
                        i2 = i5 * 53;
                        iB = Internal.b(G(j2, generatedMessageLite));
                        i5 = iB + i2;
                    }
                    break;
                case EACTags.CURRENCY_EXPONENT /* 54 */:
                    if (v(i7, i6, generatedMessageLite)) {
                        i2 = i5 * 53;
                        iB = Internal.b(G(j2, generatedMessageLite));
                        i5 = iB + i2;
                    }
                    break;
                case 55:
                    if (v(i7, i6, generatedMessageLite)) {
                        i3 = i5 * 53;
                        iG = F(j2, generatedMessageLite);
                        i5 = i3 + iG;
                    }
                    break;
                case 56:
                    if (v(i7, i6, generatedMessageLite)) {
                        i2 = i5 * 53;
                        iB = Internal.b(G(j2, generatedMessageLite));
                        i5 = iB + i2;
                    }
                    break;
                case 57:
                    if (v(i7, i6, generatedMessageLite)) {
                        i3 = i5 * 53;
                        iG = F(j2, generatedMessageLite);
                        i5 = i3 + iG;
                    }
                    break;
                case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
                    if (v(i7, i6, generatedMessageLite)) {
                        i4 = i5 * 53;
                        boolean zBooleanValue = ((Boolean) UnsafeUtil.f34267c.i(j2, generatedMessageLite)).booleanValue();
                        Charset charset2 = Internal.f34190a;
                        if (zBooleanValue) {
                            i8 = 1231;
                        }
                        i5 = i8 + i4;
                    }
                    break;
                case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                    if (v(i7, i6, generatedMessageLite)) {
                        i2 = i5 * 53;
                        iB = ((String) UnsafeUtil.f34267c.i(j2, generatedMessageLite)).hashCode();
                        i5 = iB + i2;
                    }
                    break;
                case 60:
                    if (v(i7, i6, generatedMessageLite)) {
                        i2 = i5 * 53;
                        iB = UnsafeUtil.f34267c.i(j2, generatedMessageLite).hashCode();
                        i5 = iB + i2;
                    }
                    break;
                case 61:
                    if (v(i7, i6, generatedMessageLite)) {
                        i2 = i5 * 53;
                        iB = UnsafeUtil.f34267c.i(j2, generatedMessageLite).hashCode();
                        i5 = iB + i2;
                    }
                    break;
                case 62:
                    if (v(i7, i6, generatedMessageLite)) {
                        i3 = i5 * 53;
                        iG = F(j2, generatedMessageLite);
                        i5 = i3 + iG;
                    }
                    break;
                case 63:
                    if (v(i7, i6, generatedMessageLite)) {
                        i3 = i5 * 53;
                        iG = F(j2, generatedMessageLite);
                        i5 = i3 + iG;
                    }
                    break;
                case 64:
                    if (v(i7, i6, generatedMessageLite)) {
                        i3 = i5 * 53;
                        iG = F(j2, generatedMessageLite);
                        i5 = i3 + iG;
                    }
                    break;
                case EACTags.ELEMENT_LIST /* 65 */:
                    if (v(i7, i6, generatedMessageLite)) {
                        i2 = i5 * 53;
                        iB = Internal.b(G(j2, generatedMessageLite));
                        i5 = iB + i2;
                    }
                    break;
                case EACTags.ADDRESS /* 66 */:
                    if (v(i7, i6, generatedMessageLite)) {
                        i3 = i5 * 53;
                        iG = F(j2, generatedMessageLite);
                        i5 = i3 + iG;
                    }
                    break;
                case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                    if (v(i7, i6, generatedMessageLite)) {
                        i2 = i5 * 53;
                        iB = Internal.b(G(j2, generatedMessageLite));
                        i5 = iB + i2;
                    }
                    break;
                case EACTags.APPLICATION_IMAGE /* 68 */:
                    if (v(i7, i6, generatedMessageLite)) {
                        i2 = i5 * 53;
                        iB = UnsafeUtil.f34267c.i(j2, generatedMessageLite).hashCode();
                        i5 = iB + i2;
                    }
                    break;
            }
        }
        ((UnknownFieldSetLiteSchema) this.n).getClass();
        int iHashCode2 = generatedMessageLite.unknownFields.hashCode() + (i5 * 53);
        if (!this.f34217f) {
            return iHashCode2;
        }
        ((ExtensionSchemaLite) this.o).getClass();
        return (iHashCode2 * 53) + ((GeneratedMessageLite.ExtendableMessage) generatedMessageLite).extensions.f34179a.hashCode();
    }

    /* JADX WARN: Code duplicated, block: B:197:0x05e0  */
    /* JADX WARN: Code duplicated, block: B:19:0x0073  */
    @Override // com.google.crypto.tink.shaded.protobuf.Schema
    public final void i(Object obj, Writer writer) throws Throwable {
        Map.Entry entry;
        Throwable th;
        int i2;
        Map.Entry entry2;
        Iterator it;
        boolean z = this.f34217f;
        UnknownFieldSchema unknownFieldSchema = this.n;
        int[] iArr = this.f34213a;
        ExtensionSchema extensionSchema = this.o;
        Throwable th2 = null;
        int i3 = 1048575;
        if (writer.s() == Writer.FieldOrder.DESCENDING) {
            ((UnknownFieldSetLiteSchema) unknownFieldSchema).getClass();
            ((GeneratedMessageLite) obj).unknownFields.f(writer);
            if (z) {
                ((ExtensionSchemaLite) extensionSchema).getClass();
                FieldSet<Object> fieldSet = ((GeneratedMessageLite.ExtendableMessage) obj).extensions;
                if (fieldSet.f34179a.isEmpty()) {
                    entry2 = null;
                } else {
                    boolean z2 = fieldSet.f34181c;
                    SmallSortedMap.AnonymousClass1 anonymousClass1 = fieldSet.f34179a;
                    if (z2) {
                        if (anonymousClass1.f34243h == null) {
                            anonymousClass1.f34243h = new SmallSortedMap.DescendingEntrySet();
                        }
                        it = new LazyField.LazyIterator(anonymousClass1.f34243h.iterator());
                    } else {
                        if (anonymousClass1.f34243h == null) {
                            anonymousClass1.f34243h = new SmallSortedMap.DescendingEntrySet();
                        }
                        it = anonymousClass1.f34243h.iterator();
                    }
                    entry2 = (Map.Entry) it.next();
                }
            } else {
                entry2 = null;
            }
            for (int length = iArr.length - 3; length >= 0; length -= 3) {
                int iU = U(length);
                int i4 = iArr[length];
                if (entry2 != null) {
                    ((ExtensionSchemaLite) extensionSchema).getClass();
                    tr.x(entry2.getKey());
                    throw null;
                }
                switch (T(iU)) {
                    case 0:
                        if (t(length, obj)) {
                            writer.m(UnsafeUtil.f34267c.e(iU & 1048575, obj), i4);
                        }
                        break;
                    case 1:
                        if (t(length, obj)) {
                            writer.v(UnsafeUtil.f34267c.f(iU & 1048575, obj), i4);
                        }
                        break;
                    case 2:
                        if (t(length, obj)) {
                            writer.w(i4, UnsafeUtil.f34267c.h(iU & 1048575, obj));
                        }
                        break;
                    case 3:
                        if (t(length, obj)) {
                            writer.f(i4, UnsafeUtil.f34267c.h(iU & 1048575, obj));
                        }
                        break;
                    case 4:
                        if (t(length, obj)) {
                            writer.l(i4, UnsafeUtil.f34267c.g(iU & 1048575, obj));
                        }
                        break;
                    case 5:
                        if (t(length, obj)) {
                            writer.r(i4, UnsafeUtil.f34267c.h(iU & 1048575, obj));
                        }
                        break;
                    case 6:
                        if (t(length, obj)) {
                            writer.b(i4, UnsafeUtil.f34267c.g(iU & 1048575, obj));
                        }
                        break;
                    case 7:
                        if (t(length, obj)) {
                            writer.x(i4, UnsafeUtil.f34267c.c(iU & 1048575, obj));
                        }
                        break;
                    case 8:
                        if (t(length, obj)) {
                            X(i4, UnsafeUtil.f34267c.i(iU & 1048575, obj), writer);
                        }
                        break;
                    case 9:
                        if (t(length, obj)) {
                            writer.M(i4, UnsafeUtil.f34267c.i(iU & 1048575, obj), p(length));
                        }
                        break;
                    case 10:
                        if (t(length, obj)) {
                            writer.L(i4, (ByteString) UnsafeUtil.f34267c.i(iU & 1048575, obj));
                        }
                        break;
                    case 11:
                        if (t(length, obj)) {
                            writer.q(i4, UnsafeUtil.f34267c.g(iU & 1048575, obj));
                        }
                        break;
                    case 12:
                        if (t(length, obj)) {
                            writer.F(i4, UnsafeUtil.f34267c.g(iU & 1048575, obj));
                        }
                        break;
                    case 13:
                        if (t(length, obj)) {
                            writer.y(i4, UnsafeUtil.f34267c.g(iU & 1048575, obj));
                        }
                        break;
                    case 14:
                        if (t(length, obj)) {
                            writer.o(i4, UnsafeUtil.f34267c.h(iU & 1048575, obj));
                        }
                        break;
                    case 15:
                        if (t(length, obj)) {
                            writer.H(i4, UnsafeUtil.f34267c.g(iU & 1048575, obj));
                        }
                        break;
                    case 16:
                        if (t(length, obj)) {
                            writer.p(i4, UnsafeUtil.f34267c.h(iU & 1048575, obj));
                        }
                        break;
                    case 17:
                        if (t(length, obj)) {
                            writer.J(i4, UnsafeUtil.f34267c.i(iU & 1048575, obj), p(length));
                        }
                        break;
                    case 18:
                        SchemaUtil.D(iArr[length], (List) UnsafeUtil.f34267c.i(iU & 1048575, obj), writer, false);
                        break;
                    case 19:
                        SchemaUtil.H(iArr[length], (List) UnsafeUtil.f34267c.i(iU & 1048575, obj), writer, false);
                        break;
                    case 20:
                        SchemaUtil.J(iArr[length], (List) UnsafeUtil.f34267c.i(iU & 1048575, obj), writer, false);
                        break;
                    case 21:
                        SchemaUtil.P(iArr[length], (List) UnsafeUtil.f34267c.i(iU & 1048575, obj), writer, false);
                        break;
                    case 22:
                        SchemaUtil.I(iArr[length], (List) UnsafeUtil.f34267c.i(iU & 1048575, obj), writer, false);
                        break;
                    case 23:
                        SchemaUtil.G(iArr[length], (List) UnsafeUtil.f34267c.i(iU & 1048575, obj), writer, false);
                        break;
                    case 24:
                        SchemaUtil.F(iArr[length], (List) UnsafeUtil.f34267c.i(iU & 1048575, obj), writer, false);
                        break;
                    case 25:
                        SchemaUtil.C(iArr[length], (List) UnsafeUtil.f34267c.i(iU & 1048575, obj), writer, false);
                        break;
                    case 26:
                        int i5 = iArr[length];
                        List list = (List) UnsafeUtil.f34267c.i(iU & 1048575, obj);
                        Class cls = SchemaUtil.f34235a;
                        if (list != null && !list.isEmpty()) {
                            writer.d(i5, list);
                        }
                        break;
                    case 27:
                        int i6 = iArr[length];
                        List list2 = (List) UnsafeUtil.f34267c.i(iU & 1048575, obj);
                        Schema schemaP = p(length);
                        Class cls2 = SchemaUtil.f34235a;
                        if (list2 != null && !list2.isEmpty()) {
                            writer.K(i6, list2, schemaP);
                        }
                        break;
                    case 28:
                        int i7 = iArr[length];
                        List list3 = (List) UnsafeUtil.f34267c.i(iU & 1048575, obj);
                        Class cls3 = SchemaUtil.f34235a;
                        if (list3 != null && !list3.isEmpty()) {
                            writer.I(i7, list3);
                        }
                        break;
                    case 29:
                        SchemaUtil.O(iArr[length], (List) UnsafeUtil.f34267c.i(iU & 1048575, obj), writer, false);
                        break;
                    case 30:
                        SchemaUtil.E(iArr[length], (List) UnsafeUtil.f34267c.i(iU & 1048575, obj), writer, false);
                        break;
                    case 31:
                        SchemaUtil.K(iArr[length], (List) UnsafeUtil.f34267c.i(iU & 1048575, obj), writer, false);
                        break;
                    case 32:
                        SchemaUtil.L(iArr[length], (List) UnsafeUtil.f34267c.i(iU & 1048575, obj), writer, false);
                        break;
                    case 33:
                        SchemaUtil.M(iArr[length], (List) UnsafeUtil.f34267c.i(iU & 1048575, obj), writer, false);
                        break;
                    case 34:
                        SchemaUtil.N(iArr[length], (List) UnsafeUtil.f34267c.i(iU & 1048575, obj), writer, false);
                        break;
                    case 35:
                        SchemaUtil.D(iArr[length], (List) UnsafeUtil.f34267c.i(iU & 1048575, obj), writer, true);
                        break;
                    case 36:
                        SchemaUtil.H(iArr[length], (List) UnsafeUtil.f34267c.i(iU & 1048575, obj), writer, true);
                        break;
                    case 37:
                        SchemaUtil.J(iArr[length], (List) UnsafeUtil.f34267c.i(iU & 1048575, obj), writer, true);
                        break;
                    case 38:
                        SchemaUtil.P(iArr[length], (List) UnsafeUtil.f34267c.i(iU & 1048575, obj), writer, true);
                        break;
                    case 39:
                        SchemaUtil.I(iArr[length], (List) UnsafeUtil.f34267c.i(iU & 1048575, obj), writer, true);
                        break;
                    case 40:
                        SchemaUtil.G(iArr[length], (List) UnsafeUtil.f34267c.i(iU & 1048575, obj), writer, true);
                        break;
                    case 41:
                        SchemaUtil.F(iArr[length], (List) UnsafeUtil.f34267c.i(iU & 1048575, obj), writer, true);
                        break;
                    case EACTags.CURRENCY_CODE /* 42 */:
                        SchemaUtil.C(iArr[length], (List) UnsafeUtil.f34267c.i(iU & 1048575, obj), writer, true);
                        break;
                    case EACTags.DATE_OF_BIRTH /* 43 */:
                        SchemaUtil.O(iArr[length], (List) UnsafeUtil.f34267c.i(iU & 1048575, obj), writer, true);
                        break;
                    case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                        SchemaUtil.E(iArr[length], (List) UnsafeUtil.f34267c.i(iU & 1048575, obj), writer, true);
                        break;
                    case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                        SchemaUtil.K(iArr[length], (List) UnsafeUtil.f34267c.i(iU & 1048575, obj), writer, true);
                        break;
                    case 46:
                        SchemaUtil.L(iArr[length], (List) UnsafeUtil.f34267c.i(iU & 1048575, obj), writer, true);
                        break;
                    case EACTags.PIN_USAGE_POLICY /* 47 */:
                        SchemaUtil.M(iArr[length], (List) UnsafeUtil.f34267c.i(iU & 1048575, obj), writer, true);
                        break;
                    case 48:
                        SchemaUtil.N(iArr[length], (List) UnsafeUtil.f34267c.i(iU & 1048575, obj), writer, true);
                        break;
                    case 49:
                        int i8 = iArr[length];
                        List list4 = (List) UnsafeUtil.f34267c.i(iU & 1048575, obj);
                        Schema schemaP2 = p(length);
                        Class cls4 = SchemaUtil.f34235a;
                        if (list4 != null && !list4.isEmpty()) {
                            writer.N(i8, list4, schemaP2);
                        }
                        break;
                    case 50:
                        W(writer, i4, UnsafeUtil.f34267c.i(iU & 1048575, obj), length);
                        break;
                    case EACTags.TRANSACTION_DATE /* 51 */:
                        if (v(i4, length, obj)) {
                            writer.m(((Double) UnsafeUtil.f34267c.i(iU & 1048575, obj)).doubleValue(), i4);
                        }
                        break;
                    case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                        if (v(i4, length, obj)) {
                            writer.v(((Float) UnsafeUtil.f34267c.i(iU & 1048575, obj)).floatValue(), i4);
                        }
                        break;
                    case EACTags.SEX /* 53 */:
                        if (v(i4, length, obj)) {
                            writer.w(i4, G(iU & 1048575, obj));
                        }
                        break;
                    case EACTags.CURRENCY_EXPONENT /* 54 */:
                        if (v(i4, length, obj)) {
                            writer.f(i4, G(iU & 1048575, obj));
                        }
                        break;
                    case 55:
                        if (v(i4, length, obj)) {
                            writer.l(i4, F(iU & 1048575, obj));
                        }
                        break;
                    case 56:
                        if (v(i4, length, obj)) {
                            writer.r(i4, G(iU & 1048575, obj));
                        }
                        break;
                    case 57:
                        if (v(i4, length, obj)) {
                            writer.b(i4, F(iU & 1048575, obj));
                        }
                        break;
                    case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
                        if (v(i4, length, obj)) {
                            writer.x(i4, ((Boolean) UnsafeUtil.f34267c.i(iU & 1048575, obj)).booleanValue());
                        }
                        break;
                    case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                        if (v(i4, length, obj)) {
                            X(i4, UnsafeUtil.f34267c.i(iU & 1048575, obj), writer);
                        }
                        break;
                    case 60:
                        if (v(i4, length, obj)) {
                            writer.M(i4, UnsafeUtil.f34267c.i(iU & 1048575, obj), p(length));
                        }
                        break;
                    case 61:
                        if (v(i4, length, obj)) {
                            writer.L(i4, (ByteString) UnsafeUtil.f34267c.i(iU & 1048575, obj));
                        }
                        break;
                    case 62:
                        if (v(i4, length, obj)) {
                            writer.q(i4, F(iU & 1048575, obj));
                        }
                        break;
                    case 63:
                        if (v(i4, length, obj)) {
                            writer.F(i4, F(iU & 1048575, obj));
                        }
                        break;
                    case 64:
                        if (v(i4, length, obj)) {
                            writer.y(i4, F(iU & 1048575, obj));
                        }
                        break;
                    case EACTags.ELEMENT_LIST /* 65 */:
                        if (v(i4, length, obj)) {
                            writer.o(i4, G(iU & 1048575, obj));
                        }
                        break;
                    case EACTags.ADDRESS /* 66 */:
                        if (v(i4, length, obj)) {
                            writer.H(i4, F(iU & 1048575, obj));
                        }
                        break;
                    case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                        if (v(i4, length, obj)) {
                            writer.p(i4, G(iU & 1048575, obj));
                        }
                        break;
                    case EACTags.APPLICATION_IMAGE /* 68 */:
                        if (v(i4, length, obj)) {
                            writer.J(i4, UnsafeUtil.f34267c.i(iU & 1048575, obj), p(length));
                        }
                        break;
                }
            }
            if (entry2 == null) {
                return;
            }
            ((ExtensionSchemaLite) extensionSchema).getClass();
            tr.x(entry2.getKey());
            throw null;
        }
        if (!this.f34218h) {
            V(obj, writer);
            return;
        }
        if (z) {
            ((ExtensionSchemaLite) extensionSchema).getClass();
            FieldSet<Object> fieldSet2 = ((GeneratedMessageLite.ExtendableMessage) obj).extensions;
            if (fieldSet2.f34179a.isEmpty()) {
                entry = null;
            } else {
                entry = (Map.Entry) fieldSet2.i().next();
            }
        } else {
            entry = null;
        }
        int length2 = iArr.length;
        int i9 = 0;
        while (i9 < length2) {
            int iU2 = U(i9);
            int i10 = iArr[i9];
            if (entry != null) {
                Throwable th3 = th2;
                ((ExtensionSchemaLite) extensionSchema).getClass();
                tr.x(entry.getKey());
                throw th3;
            }
            switch (T(iU2)) {
                case 0:
                    th = th2;
                    i2 = i3;
                    if (t(i9, obj)) {
                        writer.m(UnsafeUtil.f34267c.e(iU2 & i2, obj), i10);
                        continue;
                    }
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 1:
                    th = th2;
                    i2 = i3;
                    if (t(i9, obj)) {
                        writer.v(UnsafeUtil.f34267c.f(iU2 & i2, obj), i10);
                    } else {
                        continue;
                    }
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 2:
                    th = th2;
                    i2 = i3;
                    if (t(i9, obj)) {
                        writer.w(i10, UnsafeUtil.f34267c.h(iU2 & i2, obj));
                    } else {
                        continue;
                    }
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 3:
                    th = th2;
                    i2 = i3;
                    if (t(i9, obj)) {
                        writer.f(i10, UnsafeUtil.f34267c.h(iU2 & i2, obj));
                    } else {
                        continue;
                    }
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 4:
                    th = th2;
                    i2 = i3;
                    if (t(i9, obj)) {
                        writer.l(i10, UnsafeUtil.f34267c.g(iU2 & i2, obj));
                    } else {
                        continue;
                    }
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 5:
                    th = th2;
                    i2 = i3;
                    if (t(i9, obj)) {
                        writer.r(i10, UnsafeUtil.f34267c.h(iU2 & i2, obj));
                    } else {
                        continue;
                    }
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 6:
                    th = th2;
                    i2 = i3;
                    if (t(i9, obj)) {
                        writer.b(i10, UnsafeUtil.f34267c.g(iU2 & i2, obj));
                    } else {
                        continue;
                    }
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 7:
                    th = th2;
                    i2 = i3;
                    if (t(i9, obj)) {
                        writer.x(i10, UnsafeUtil.f34267c.c(iU2 & i2, obj));
                    } else {
                        continue;
                    }
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 8:
                    th = th2;
                    i2 = i3;
                    if (t(i9, obj)) {
                        X(i10, UnsafeUtil.f34267c.i(iU2 & i2, obj), writer);
                    } else {
                        continue;
                    }
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 9:
                    th = th2;
                    i2 = i3;
                    if (t(i9, obj)) {
                        writer.M(i10, UnsafeUtil.f34267c.i(iU2 & i2, obj), p(i9));
                    } else {
                        continue;
                    }
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 10:
                    th = th2;
                    i2 = i3;
                    if (t(i9, obj)) {
                        writer.L(i10, (ByteString) UnsafeUtil.f34267c.i(iU2 & i2, obj));
                    } else {
                        continue;
                    }
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 11:
                    th = th2;
                    i2 = i3;
                    if (t(i9, obj)) {
                        writer.q(i10, UnsafeUtil.f34267c.g(iU2 & i2, obj));
                    } else {
                        continue;
                    }
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 12:
                    th = th2;
                    i2 = i3;
                    if (t(i9, obj)) {
                        writer.F(i10, UnsafeUtil.f34267c.g(iU2 & i2, obj));
                    } else {
                        continue;
                    }
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 13:
                    th = th2;
                    i2 = i3;
                    if (t(i9, obj)) {
                        writer.y(i10, UnsafeUtil.f34267c.g(iU2 & i2, obj));
                    } else {
                        continue;
                    }
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 14:
                    th = th2;
                    i2 = i3;
                    if (t(i9, obj)) {
                        writer.o(i10, UnsafeUtil.f34267c.h(iU2 & i2, obj));
                    } else {
                        continue;
                    }
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 15:
                    th = th2;
                    i2 = i3;
                    if (t(i9, obj)) {
                        writer.H(i10, UnsafeUtil.f34267c.g(iU2 & i2, obj));
                    } else {
                        continue;
                    }
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 16:
                    th = th2;
                    i2 = i3;
                    if (t(i9, obj)) {
                        writer.p(i10, UnsafeUtil.f34267c.h(iU2 & i2, obj));
                    } else {
                        continue;
                    }
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 17:
                    th = th2;
                    i2 = i3;
                    if (t(i9, obj)) {
                        writer.J(i10, UnsafeUtil.f34267c.i(iU2 & i2, obj), p(i9));
                    } else {
                        continue;
                    }
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 18:
                    th = th2;
                    i2 = i3;
                    SchemaUtil.D(iArr[i9], (List) UnsafeUtil.f34267c.i(iU2 & i2, obj), writer, false);
                    continue;
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 19:
                    th = th2;
                    i2 = i3;
                    SchemaUtil.H(iArr[i9], (List) UnsafeUtil.f34267c.i(iU2 & i2, obj), writer, false);
                    continue;
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 20:
                    th = th2;
                    i2 = i3;
                    SchemaUtil.J(iArr[i9], (List) UnsafeUtil.f34267c.i(iU2 & i2, obj), writer, false);
                    continue;
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 21:
                    th = th2;
                    i2 = i3;
                    SchemaUtil.P(iArr[i9], (List) UnsafeUtil.f34267c.i(iU2 & i2, obj), writer, false);
                    continue;
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 22:
                    th = th2;
                    i2 = i3;
                    SchemaUtil.I(iArr[i9], (List) UnsafeUtil.f34267c.i(iU2 & i2, obj), writer, false);
                    continue;
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 23:
                    th = th2;
                    i2 = i3;
                    SchemaUtil.G(iArr[i9], (List) UnsafeUtil.f34267c.i(iU2 & i2, obj), writer, false);
                    continue;
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 24:
                    th = th2;
                    i2 = i3;
                    SchemaUtil.F(iArr[i9], (List) UnsafeUtil.f34267c.i(iU2 & i2, obj), writer, false);
                    continue;
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 25:
                    th = th2;
                    i2 = i3;
                    SchemaUtil.C(iArr[i9], (List) UnsafeUtil.f34267c.i(iU2 & i2, obj), writer, false);
                    continue;
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 26:
                    th = th2;
                    i2 = i3;
                    int i11 = iArr[i9];
                    List list5 = (List) UnsafeUtil.f34267c.i(iU2 & i2, obj);
                    Class cls5 = SchemaUtil.f34235a;
                    if (list5 == null) {
                        continue;
                    } else if (!list5.isEmpty()) {
                        writer.d(i11, list5);
                    }
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 27:
                    th = th2;
                    i2 = i3;
                    int i12 = iArr[i9];
                    List list6 = (List) UnsafeUtil.f34267c.i(iU2 & i2, obj);
                    Schema schemaP3 = p(i9);
                    Class cls6 = SchemaUtil.f34235a;
                    if (list6 == null) {
                        continue;
                    } else if (!list6.isEmpty()) {
                        writer.K(i12, list6, schemaP3);
                    }
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 28:
                    th = th2;
                    i2 = i3;
                    int i13 = iArr[i9];
                    List list7 = (List) UnsafeUtil.f34267c.i(iU2 & i2, obj);
                    Class cls7 = SchemaUtil.f34235a;
                    if (list7 == null) {
                        continue;
                    } else if (!list7.isEmpty()) {
                        writer.I(i13, list7);
                    }
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 29:
                    th = th2;
                    i2 = i3;
                    SchemaUtil.O(iArr[i9], (List) UnsafeUtil.f34267c.i(iU2 & i2, obj), writer, false);
                    continue;
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 30:
                    th = th2;
                    i2 = i3;
                    SchemaUtil.E(iArr[i9], (List) UnsafeUtil.f34267c.i(iU2 & i2, obj), writer, false);
                    continue;
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 31:
                    th = th2;
                    i2 = i3;
                    SchemaUtil.K(iArr[i9], (List) UnsafeUtil.f34267c.i(iU2 & i2, obj), writer, false);
                    continue;
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 32:
                    th = th2;
                    i2 = i3;
                    SchemaUtil.L(iArr[i9], (List) UnsafeUtil.f34267c.i(iU2 & i2, obj), writer, false);
                    continue;
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 33:
                    th = th2;
                    i2 = i3;
                    SchemaUtil.M(iArr[i9], (List) UnsafeUtil.f34267c.i(iU2 & i2, obj), writer, false);
                    continue;
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 34:
                    th = th2;
                    i2 = i3;
                    SchemaUtil.N(iArr[i9], (List) UnsafeUtil.f34267c.i(iU2 & i2, obj), writer, false);
                    continue;
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 35:
                    th = th2;
                    i2 = i3;
                    SchemaUtil.D(iArr[i9], (List) UnsafeUtil.f34267c.i(iU2 & i2, obj), writer, true);
                    continue;
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 36:
                    th = th2;
                    i2 = i3;
                    SchemaUtil.H(iArr[i9], (List) UnsafeUtil.f34267c.i(iU2 & i2, obj), writer, true);
                    continue;
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 37:
                    th = th2;
                    i2 = i3;
                    SchemaUtil.J(iArr[i9], (List) UnsafeUtil.f34267c.i(iU2 & i2, obj), writer, true);
                    continue;
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 38:
                    th = th2;
                    i2 = i3;
                    SchemaUtil.P(iArr[i9], (List) UnsafeUtil.f34267c.i(iU2 & i2, obj), writer, true);
                    continue;
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 39:
                    th = th2;
                    i2 = i3;
                    SchemaUtil.I(iArr[i9], (List) UnsafeUtil.f34267c.i(iU2 & i2, obj), writer, true);
                    continue;
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 40:
                    th = th2;
                    i2 = i3;
                    SchemaUtil.G(iArr[i9], (List) UnsafeUtil.f34267c.i(iU2 & i2, obj), writer, true);
                    continue;
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 41:
                    th = th2;
                    i2 = i3;
                    SchemaUtil.F(iArr[i9], (List) UnsafeUtil.f34267c.i(iU2 & i2, obj), writer, true);
                    continue;
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case EACTags.CURRENCY_CODE /* 42 */:
                    th = th2;
                    i2 = i3;
                    SchemaUtil.C(iArr[i9], (List) UnsafeUtil.f34267c.i(iU2 & i2, obj), writer, true);
                    continue;
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case EACTags.DATE_OF_BIRTH /* 43 */:
                    th = th2;
                    i2 = i3;
                    SchemaUtil.O(iArr[i9], (List) UnsafeUtil.f34267c.i(iU2 & i2, obj), writer, true);
                    continue;
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                    th = th2;
                    i2 = i3;
                    SchemaUtil.E(iArr[i9], (List) UnsafeUtil.f34267c.i(iU2 & i2, obj), writer, true);
                    continue;
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                    th = th2;
                    i2 = i3;
                    SchemaUtil.K(iArr[i9], (List) UnsafeUtil.f34267c.i(iU2 & i2, obj), writer, true);
                    continue;
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 46:
                    th = th2;
                    i2 = i3;
                    SchemaUtil.L(iArr[i9], (List) UnsafeUtil.f34267c.i(iU2 & i2, obj), writer, true);
                    continue;
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case EACTags.PIN_USAGE_POLICY /* 47 */:
                    th = th2;
                    i2 = i3;
                    SchemaUtil.M(iArr[i9], (List) UnsafeUtil.f34267c.i(iU2 & i2, obj), writer, true);
                    continue;
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 48:
                    th = th2;
                    i2 = i3;
                    SchemaUtil.N(iArr[i9], (List) UnsafeUtil.f34267c.i(iU2 & i2, obj), writer, true);
                    continue;
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 49:
                    th = th2;
                    i2 = i3;
                    int i14 = iArr[i9];
                    List list8 = (List) UnsafeUtil.f34267c.i(iU2 & i2, obj);
                    Schema schemaP4 = p(i9);
                    Class cls8 = SchemaUtil.f34235a;
                    if (list8 == null) {
                        continue;
                    } else if (!list8.isEmpty()) {
                        writer.N(i14, list8, schemaP4);
                    }
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 50:
                    th = th2;
                    i2 = i3;
                    W(writer, i10, UnsafeUtil.f34267c.i(iU2 & i2, obj), i9);
                    continue;
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case EACTags.TRANSACTION_DATE /* 51 */:
                    th = th2;
                    i2 = i3;
                    if (v(i10, i9, obj)) {
                        writer.m(((Double) UnsafeUtil.f34267c.i(iU2 & i2, obj)).doubleValue(), i10);
                    } else {
                        continue;
                    }
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                    th = th2;
                    i2 = i3;
                    if (v(i10, i9, obj)) {
                        writer.v(((Float) UnsafeUtil.f34267c.i(iU2 & i2, obj)).floatValue(), i10);
                    } else {
                        continue;
                    }
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case EACTags.SEX /* 53 */:
                    th = th2;
                    i2 = i3;
                    if (v(i10, i9, obj)) {
                        writer.w(i10, G(iU2 & i2, obj));
                    } else {
                        continue;
                    }
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case EACTags.CURRENCY_EXPONENT /* 54 */:
                    th = th2;
                    i2 = i3;
                    if (v(i10, i9, obj)) {
                        writer.f(i10, G(iU2 & i2, obj));
                    } else {
                        continue;
                    }
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 55:
                    th = th2;
                    i2 = i3;
                    if (v(i10, i9, obj)) {
                        writer.l(i10, F(iU2 & i2, obj));
                    } else {
                        continue;
                    }
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 56:
                    th = th2;
                    i2 = i3;
                    if (v(i10, i9, obj)) {
                        writer.r(i10, G(iU2 & i2, obj));
                    } else {
                        continue;
                    }
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 57:
                    th = th2;
                    i2 = i3;
                    if (v(i10, i9, obj)) {
                        writer.b(i10, F(iU2 & i2, obj));
                    } else {
                        continue;
                    }
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
                    th = th2;
                    i2 = i3;
                    if (v(i10, i9, obj)) {
                        writer.x(i10, ((Boolean) UnsafeUtil.f34267c.i(iU2 & i2, obj)).booleanValue());
                    } else {
                        continue;
                    }
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                    th = th2;
                    i2 = i3;
                    if (v(i10, i9, obj)) {
                        X(i10, UnsafeUtil.f34267c.i(iU2 & i2, obj), writer);
                    } else {
                        continue;
                    }
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 60:
                    th = th2;
                    i2 = i3;
                    if (v(i10, i9, obj)) {
                        writer.M(i10, UnsafeUtil.f34267c.i(iU2 & i2, obj), p(i9));
                    } else {
                        continue;
                    }
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 61:
                    th = th2;
                    i2 = i3;
                    if (v(i10, i9, obj)) {
                        writer.L(i10, (ByteString) UnsafeUtil.f34267c.i(iU2 & i2, obj));
                    } else {
                        continue;
                    }
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 62:
                    th = th2;
                    i2 = i3;
                    if (v(i10, i9, obj)) {
                        writer.q(i10, F(iU2 & i2, obj));
                    } else {
                        continue;
                    }
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 63:
                    th = th2;
                    i2 = i3;
                    if (v(i10, i9, obj)) {
                        writer.F(i10, F(iU2 & i2, obj));
                    } else {
                        continue;
                    }
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case 64:
                    th = th2;
                    i2 = i3;
                    if (v(i10, i9, obj)) {
                        writer.y(i10, F(iU2 & i2, obj));
                    } else {
                        continue;
                    }
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case EACTags.ELEMENT_LIST /* 65 */:
                    th = th2;
                    i2 = i3;
                    if (v(i10, i9, obj)) {
                        writer.o(i10, G(iU2 & i2, obj));
                    } else {
                        continue;
                    }
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case EACTags.ADDRESS /* 66 */:
                    th = th2;
                    i2 = i3;
                    if (v(i10, i9, obj)) {
                        writer.H(i10, F(iU2 & i2, obj));
                    } else {
                        continue;
                    }
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                    th = th2;
                    i2 = i3;
                    if (v(i10, i9, obj)) {
                        writer.p(i10, G(iU2 & i2, obj));
                    } else {
                        continue;
                    }
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
                case EACTags.APPLICATION_IMAGE /* 68 */:
                    if (v(i10, i9, obj)) {
                        th = th2;
                        i2 = i3;
                        writer.J(i10, UnsafeUtil.f34267c.i(iU2 & i3, obj), p(i9));
                    }
                    i9 += 3;
                    th2 = th;
                    i3 = i2;
                    break;
            }
            th = th2;
            i2 = i3;
            i9 += 3;
            th2 = th;
            i3 = i2;
        }
        Throwable th4 = th2;
        if (entry != null) {
            ((ExtensionSchemaLite) extensionSchema).getClass();
            tr.x(entry.getKey());
            throw th4;
        }
        ((UnknownFieldSetLiteSchema) unknownFieldSchema).getClass();
        ((GeneratedMessageLite) obj).unknownFields.f(writer);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Schema
    public final int j(AbstractMessageLite abstractMessageLite) {
        return this.f34218h ? s(abstractMessageLite) : r(abstractMessageLite);
    }

    public final boolean k(GeneratedMessageLite generatedMessageLite, GeneratedMessageLite generatedMessageLite2, int i2) {
        return t(i2, generatedMessageLite) == t(i2, generatedMessageLite2);
    }

    public final Object m(Object obj, int i2, Object obj2, UnknownFieldSchema unknownFieldSchema, Object obj3) {
        int i3 = this.f34213a[i2];
        Object objI = UnsafeUtil.f34267c.i(U(i2) & 1048575, obj);
        if (objI == null || n(i2) == null) {
            return obj2;
        }
        MapFieldSchema mapFieldSchema = this.p;
        mapFieldSchema.c(objI);
        mapFieldSchema.b(o(i2));
        throw null;
    }

    public final Internal.EnumVerifier n(int i2) {
        return (Internal.EnumVerifier) this.f34214b[((i2 / 3) * 2) + 1];
    }

    public final Object o(int i2) {
        return this.f34214b[(i2 / 3) * 2];
    }

    public final Schema p(int i2) {
        int i3 = (i2 / 3) * 2;
        Object[] objArr = this.f34214b;
        Schema schema = (Schema) objArr[i3];
        if (schema != null) {
            return schema;
        }
        Schema schemaA = Protobuf.f34227c.a((Class) objArr[i3 + 1]);
        objArr[i3] = schemaA;
        return schemaA;
    }

    public final int r(AbstractMessageLite abstractMessageLite) {
        int i2;
        int i3;
        int iL;
        int i4;
        int iF;
        int iD;
        int i5;
        int iH;
        int iC;
        int iL2;
        int iE;
        Unsafe unsafe = r;
        int i6 = 1048575;
        int i7 = 1048575;
        int i8 = 0;
        int iA = 0;
        int i9 = 0;
        while (true) {
            int[] iArr = this.f34213a;
            if (i8 >= iArr.length) {
                ((UnknownFieldSetLiteSchema) this.n).getClass();
                int iB = ((GeneratedMessageLite) abstractMessageLite).unknownFields.b() + iA;
                if (!this.f34217f) {
                    return iB;
                }
                ((ExtensionSchemaLite) this.o).getClass();
                SmallSortedMap.AnonymousClass1 anonymousClass1 = ((GeneratedMessageLite.ExtendableMessage) abstractMessageLite).extensions.f34179a;
                int iD2 = 0;
                for (int i10 = 0; i10 < anonymousClass1.f34240c.size(); i10++) {
                    Map.Entry entryD = anonymousClass1.d(i10);
                    iD2 += FieldSet.d((FieldSet.FieldDescriptorLite) entryD.getKey(), entryD.getValue());
                }
                for (Map.Entry entry : anonymousClass1.e()) {
                    iD2 += FieldSet.d((FieldSet.FieldDescriptorLite) entry.getKey(), entry.getValue());
                }
                return iB + iD2;
            }
            int iU = U(i8);
            int i11 = iArr[i8];
            int iT = T(iU);
            if (iT <= 17) {
                int i12 = iArr[i8 + 2];
                int i13 = i12 & i6;
                i2 = 1 << (i12 >>> 20);
                if (i13 != i7) {
                    i9 = unsafe.getInt(abstractMessageLite, i13);
                    i7 = i13;
                }
            } else {
                i2 = 0;
            }
            long j2 = iU & i6;
            switch (iT) {
                case 0:
                    if ((i9 & i2) != 0) {
                        iA = o60.a(i11, 8, iA);
                    }
                    break;
                case 1:
                    if ((i9 & i2) != 0) {
                        iA = o60.a(i11, 4, iA);
                    }
                    break;
                case 2:
                    if ((i2 & i9) != 0) {
                        long j3 = unsafe.getLong(abstractMessageLite, j2);
                        i3 = CodedOutputStream.i(i11);
                        iL = CodedOutputStream.l(j3);
                        iD = iL + i3;
                        iA += iD;
                    }
                    break;
                case 3:
                    if ((i2 & i9) != 0) {
                        long j4 = unsafe.getLong(abstractMessageLite, j2);
                        i3 = CodedOutputStream.i(i11);
                        iL = CodedOutputStream.l(j4);
                        iD = iL + i3;
                        iA += iD;
                    }
                    break;
                case 4:
                    if ((i2 & i9) != 0) {
                        int i14 = unsafe.getInt(abstractMessageLite, j2);
                        i4 = CodedOutputStream.i(i11);
                        iF = CodedOutputStream.f(i14);
                        iD = iF + i4;
                        iA += iD;
                    }
                    break;
                case 5:
                    if ((i9 & i2) != 0) {
                        iD = CodedOutputStream.d(i11);
                        iA += iD;
                    }
                    break;
                case 6:
                    if ((i9 & i2) != 0) {
                        iD = CodedOutputStream.c(i11);
                        iA += iD;
                    }
                    break;
                case 7:
                    if ((i9 & i2) != 0) {
                        iA = o60.a(i11, 1, iA);
                    }
                    break;
                case 8:
                    if ((i2 & i9) != 0) {
                        Object object = unsafe.getObject(abstractMessageLite, j2);
                        if (object instanceof ByteString) {
                            int i15 = CodedOutputStream.i(i11);
                            int size = ((ByteString) object).size();
                            iC = tr.c(size, size, i15, iA);
                        } else {
                            i5 = CodedOutputStream.i(i11);
                            iH = CodedOutputStream.h((String) object);
                            iC = iH + i5 + iA;
                        }
                        iA = iC;
                    }
                    break;
                case 9:
                    if ((i2 & i9) != 0) {
                        iL2 = SchemaUtil.l(i11, unsafe.getObject(abstractMessageLite, j2), p(i8));
                        iA += iL2;
                    }
                    break;
                case 10:
                    if ((i2 & i9) != 0) {
                        iD = CodedOutputStream.a(i11, (ByteString) unsafe.getObject(abstractMessageLite, j2));
                        iA += iD;
                    }
                    break;
                case 11:
                    if ((i2 & i9) != 0) {
                        iD = CodedOutputStream.j(i11, unsafe.getInt(abstractMessageLite, j2));
                        iA += iD;
                    }
                    break;
                case 12:
                    if ((i2 & i9) != 0) {
                        int i16 = unsafe.getInt(abstractMessageLite, j2);
                        i4 = CodedOutputStream.i(i11);
                        iF = CodedOutputStream.f(i16);
                        iD = iF + i4;
                        iA += iD;
                    }
                    break;
                case 13:
                    if ((i9 & i2) != 0) {
                        iA = o60.a(i11, 4, iA);
                    }
                    break;
                case 14:
                    if ((i9 & i2) != 0) {
                        iA = o60.a(i11, 8, iA);
                    }
                    break;
                case 15:
                    if ((i2 & i9) != 0) {
                        int i17 = unsafe.getInt(abstractMessageLite, j2);
                        i4 = CodedOutputStream.i(i11);
                        iF = CodedOutputStream.k((i17 >> 31) ^ (i17 << 1));
                        iD = iF + i4;
                        iA += iD;
                    }
                    break;
                case 16:
                    if ((i2 & i9) != 0) {
                        long j5 = unsafe.getLong(abstractMessageLite, j2);
                        i3 = CodedOutputStream.i(i11);
                        iL = CodedOutputStream.l((j5 >> 63) ^ (j5 << 1));
                        iD = iL + i3;
                        iA += iD;
                    }
                    break;
                case 17:
                    if ((i2 & i9) != 0) {
                        iD = CodedOutputStream.e(i11, (MessageLite) unsafe.getObject(abstractMessageLite, j2), p(i8));
                        iA += iD;
                    }
                    break;
                case 18:
                    iL2 = SchemaUtil.f(i11, (List) unsafe.getObject(abstractMessageLite, j2));
                    iA += iL2;
                    break;
                case 19:
                    iL2 = SchemaUtil.d(i11, (List) unsafe.getObject(abstractMessageLite, j2));
                    iA += iL2;
                    break;
                case 20:
                    iL2 = SchemaUtil.j(i11, (List) unsafe.getObject(abstractMessageLite, j2));
                    iA += iL2;
                    break;
                case 21:
                    iL2 = SchemaUtil.u(i11, (List) unsafe.getObject(abstractMessageLite, j2));
                    iA += iL2;
                    break;
                case 22:
                    iL2 = SchemaUtil.h(i11, (List) unsafe.getObject(abstractMessageLite, j2));
                    iA += iL2;
                    break;
                case 23:
                    iL2 = SchemaUtil.f(i11, (List) unsafe.getObject(abstractMessageLite, j2));
                    iA += iL2;
                    break;
                case 24:
                    iL2 = SchemaUtil.d(i11, (List) unsafe.getObject(abstractMessageLite, j2));
                    iA += iL2;
                    break;
                case 25:
                    List list = (List) unsafe.getObject(abstractMessageLite, j2);
                    Class cls = SchemaUtil.f34235a;
                    int size2 = list.size();
                    iA += size2 == 0 ? 0 : (CodedOutputStream.i(i11) + 1) * size2;
                    break;
                case 26:
                    iL2 = SchemaUtil.r(i11, (List) unsafe.getObject(abstractMessageLite, j2));
                    iA += iL2;
                    break;
                case 27:
                    iL2 = SchemaUtil.m(i11, (List) unsafe.getObject(abstractMessageLite, j2), p(i8));
                    iA += iL2;
                    break;
                case 28:
                    iL2 = SchemaUtil.a(i11, (List) unsafe.getObject(abstractMessageLite, j2));
                    iA += iL2;
                    break;
                case 29:
                    iL2 = SchemaUtil.s(i11, (List) unsafe.getObject(abstractMessageLite, j2));
                    iA += iL2;
                    break;
                case 30:
                    iL2 = SchemaUtil.b(i11, (List) unsafe.getObject(abstractMessageLite, j2));
                    iA += iL2;
                    break;
                case 31:
                    iL2 = SchemaUtil.d(i11, (List) unsafe.getObject(abstractMessageLite, j2));
                    iA += iL2;
                    break;
                case 32:
                    iL2 = SchemaUtil.f(i11, (List) unsafe.getObject(abstractMessageLite, j2));
                    iA += iL2;
                    break;
                case 33:
                    iL2 = SchemaUtil.n(i11, (List) unsafe.getObject(abstractMessageLite, j2));
                    iA += iL2;
                    break;
                case 34:
                    iL2 = SchemaUtil.p(i11, (List) unsafe.getObject(abstractMessageLite, j2));
                    iA += iL2;
                    break;
                case 35:
                    int iG = SchemaUtil.g((List) unsafe.getObject(abstractMessageLite, j2));
                    if (iG > 0) {
                        iA = tr.c(iG, CodedOutputStream.i(i11), iG, iA);
                    }
                    break;
                case 36:
                    int iE2 = SchemaUtil.e((List) unsafe.getObject(abstractMessageLite, j2));
                    if (iE2 > 0) {
                        iA = tr.c(iE2, CodedOutputStream.i(i11), iE2, iA);
                    }
                    break;
                case 37:
                    int iK = SchemaUtil.k((List) unsafe.getObject(abstractMessageLite, j2));
                    if (iK > 0) {
                        iA = tr.c(iK, CodedOutputStream.i(i11), iK, iA);
                    }
                    break;
                case 38:
                    int iV = SchemaUtil.v((List) unsafe.getObject(abstractMessageLite, j2));
                    if (iV > 0) {
                        iA = tr.c(iV, CodedOutputStream.i(i11), iV, iA);
                    }
                    break;
                case 39:
                    int i18 = SchemaUtil.i((List) unsafe.getObject(abstractMessageLite, j2));
                    if (i18 > 0) {
                        iA = tr.c(i18, CodedOutputStream.i(i11), i18, iA);
                    }
                    break;
                case 40:
                    int iG2 = SchemaUtil.g((List) unsafe.getObject(abstractMessageLite, j2));
                    if (iG2 > 0) {
                        iA = tr.c(iG2, CodedOutputStream.i(i11), iG2, iA);
                    }
                    break;
                case 41:
                    int iE3 = SchemaUtil.e((List) unsafe.getObject(abstractMessageLite, j2));
                    if (iE3 > 0) {
                        iA = tr.c(iE3, CodedOutputStream.i(i11), iE3, iA);
                    }
                    break;
                case EACTags.CURRENCY_CODE /* 42 */:
                    List list2 = (List) unsafe.getObject(abstractMessageLite, j2);
                    Class cls2 = SchemaUtil.f34235a;
                    int size3 = list2.size();
                    if (size3 > 0) {
                        iA = tr.c(size3, CodedOutputStream.i(i11), size3, iA);
                    }
                    break;
                case EACTags.DATE_OF_BIRTH /* 43 */:
                    int iT2 = SchemaUtil.t((List) unsafe.getObject(abstractMessageLite, j2));
                    if (iT2 > 0) {
                        iA = tr.c(iT2, CodedOutputStream.i(i11), iT2, iA);
                    }
                    break;
                case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                    int iC2 = SchemaUtil.c((List) unsafe.getObject(abstractMessageLite, j2));
                    if (iC2 > 0) {
                        iA = tr.c(iC2, CodedOutputStream.i(i11), iC2, iA);
                    }
                    break;
                case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                    int iE4 = SchemaUtil.e((List) unsafe.getObject(abstractMessageLite, j2));
                    if (iE4 > 0) {
                        iA = tr.c(iE4, CodedOutputStream.i(i11), iE4, iA);
                    }
                    break;
                case 46:
                    int iG3 = SchemaUtil.g((List) unsafe.getObject(abstractMessageLite, j2));
                    if (iG3 > 0) {
                        iA = tr.c(iG3, CodedOutputStream.i(i11), iG3, iA);
                    }
                    break;
                case EACTags.PIN_USAGE_POLICY /* 47 */:
                    int iO = SchemaUtil.o((List) unsafe.getObject(abstractMessageLite, j2));
                    if (iO > 0) {
                        iA = tr.c(iO, CodedOutputStream.i(i11), iO, iA);
                    }
                    break;
                case 48:
                    int iQ = SchemaUtil.q((List) unsafe.getObject(abstractMessageLite, j2));
                    if (iQ > 0) {
                        iA = tr.c(iQ, CodedOutputStream.i(i11), iQ, iA);
                    }
                    break;
                case 49:
                    List list3 = (List) unsafe.getObject(abstractMessageLite, j2);
                    Schema schemaP = p(i8);
                    Class cls3 = SchemaUtil.f34235a;
                    int size4 = list3.size();
                    if (size4 == 0) {
                        iE = 0;
                    } else {
                        iE = 0;
                        for (int i19 = 0; i19 < size4; i19++) {
                            iE += CodedOutputStream.e(i11, (MessageLite) list3.get(i19), schemaP);
                        }
                    }
                    iA += iE;
                    break;
                case 50:
                    this.p.h(unsafe.getObject(abstractMessageLite, j2), o(i8));
                    break;
                case EACTags.TRANSACTION_DATE /* 51 */:
                    if (v(i11, i8, abstractMessageLite)) {
                        iA = o60.a(i11, 8, iA);
                    }
                    break;
                case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                    if (v(i11, i8, abstractMessageLite)) {
                        iA = o60.a(i11, 4, iA);
                    }
                    break;
                case EACTags.SEX /* 53 */:
                    if (v(i11, i8, abstractMessageLite)) {
                        long jG = G(j2, abstractMessageLite);
                        i3 = CodedOutputStream.i(i11);
                        iL = CodedOutputStream.l(jG);
                        iD = iL + i3;
                        iA += iD;
                    }
                    break;
                case EACTags.CURRENCY_EXPONENT /* 54 */:
                    if (v(i11, i8, abstractMessageLite)) {
                        long jG2 = G(j2, abstractMessageLite);
                        i3 = CodedOutputStream.i(i11);
                        iL = CodedOutputStream.l(jG2);
                        iD = iL + i3;
                        iA += iD;
                    }
                    break;
                case 55:
                    if (v(i11, i8, abstractMessageLite)) {
                        int iF2 = F(j2, abstractMessageLite);
                        i4 = CodedOutputStream.i(i11);
                        iF = CodedOutputStream.f(iF2);
                        iD = iF + i4;
                        iA += iD;
                    }
                    break;
                case 56:
                    if (v(i11, i8, abstractMessageLite)) {
                        iD = CodedOutputStream.d(i11);
                        iA += iD;
                    }
                    break;
                case 57:
                    if (v(i11, i8, abstractMessageLite)) {
                        iD = CodedOutputStream.c(i11);
                        iA += iD;
                    }
                    break;
                case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
                    if (v(i11, i8, abstractMessageLite)) {
                        iA = o60.a(i11, 1, iA);
                    }
                    break;
                case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                    if (v(i11, i8, abstractMessageLite)) {
                        Object object2 = unsafe.getObject(abstractMessageLite, j2);
                        if (object2 instanceof ByteString) {
                            int i20 = CodedOutputStream.i(i11);
                            int size5 = ((ByteString) object2).size();
                            iC = tr.c(size5, size5, i20, iA);
                        } else {
                            i5 = CodedOutputStream.i(i11);
                            iH = CodedOutputStream.h((String) object2);
                            iC = iH + i5 + iA;
                        }
                        iA = iC;
                    }
                    break;
                case 60:
                    if (v(i11, i8, abstractMessageLite)) {
                        iL2 = SchemaUtil.l(i11, unsafe.getObject(abstractMessageLite, j2), p(i8));
                        iA += iL2;
                    }
                    break;
                case 61:
                    if (v(i11, i8, abstractMessageLite)) {
                        iD = CodedOutputStream.a(i11, (ByteString) unsafe.getObject(abstractMessageLite, j2));
                        iA += iD;
                    }
                    break;
                case 62:
                    if (v(i11, i8, abstractMessageLite)) {
                        iD = CodedOutputStream.j(i11, F(j2, abstractMessageLite));
                        iA += iD;
                    }
                    break;
                case 63:
                    if (v(i11, i8, abstractMessageLite)) {
                        int iF3 = F(j2, abstractMessageLite);
                        i4 = CodedOutputStream.i(i11);
                        iF = CodedOutputStream.f(iF3);
                        iD = iF + i4;
                        iA += iD;
                    }
                    break;
                case 64:
                    if (v(i11, i8, abstractMessageLite)) {
                        iA = o60.a(i11, 4, iA);
                    }
                    break;
                case EACTags.ELEMENT_LIST /* 65 */:
                    if (v(i11, i8, abstractMessageLite)) {
                        iA = o60.a(i11, 8, iA);
                    }
                    break;
                case EACTags.ADDRESS /* 66 */:
                    if (v(i11, i8, abstractMessageLite)) {
                        int iF4 = F(j2, abstractMessageLite);
                        i4 = CodedOutputStream.i(i11);
                        iF = CodedOutputStream.k((iF4 >> 31) ^ (iF4 << 1));
                        iD = iF + i4;
                        iA += iD;
                    }
                    break;
                case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                    if (v(i11, i8, abstractMessageLite)) {
                        long jG3 = G(j2, abstractMessageLite);
                        i3 = CodedOutputStream.i(i11);
                        iL = CodedOutputStream.l((jG3 >> 63) ^ (jG3 << 1));
                        iD = iL + i3;
                        iA += iD;
                    }
                    break;
                case EACTags.APPLICATION_IMAGE /* 68 */:
                    if (v(i11, i8, abstractMessageLite)) {
                        iD = CodedOutputStream.e(i11, (MessageLite) unsafe.getObject(abstractMessageLite, j2), p(i8));
                        iA += iD;
                    }
                    break;
            }
            i8 += 3;
            i6 = 1048575;
        }
    }

    public final int s(AbstractMessageLite abstractMessageLite) {
        int i2;
        int iL;
        int i3;
        int iF;
        int iD;
        int i4;
        int iH;
        int iL2;
        int i5;
        int iL3;
        int iE;
        Unsafe unsafe = r;
        int i6 = 0;
        int iA = 0;
        while (true) {
            int[] iArr = this.f34213a;
            if (i6 >= iArr.length) {
                ((UnknownFieldSetLiteSchema) this.n).getClass();
                return ((GeneratedMessageLite) abstractMessageLite).unknownFields.b() + iA;
            }
            int iU = U(i6);
            int iT = T(iU);
            int i7 = iArr[i6];
            long j2 = iU & 1048575;
            if (iT >= FieldType.DOUBLE_LIST_PACKED.a() && iT <= FieldType.SINT64_LIST_PACKED.a()) {
                int i8 = iArr[i6 + 2];
            }
            switch (iT) {
                case 0:
                    if (t(i6, abstractMessageLite)) {
                        iA = o60.a(i7, 8, iA);
                    }
                    break;
                case 1:
                    if (t(i6, abstractMessageLite)) {
                        iA = o60.a(i7, 4, iA);
                    }
                    break;
                case 2:
                    if (t(i6, abstractMessageLite)) {
                        long jH = UnsafeUtil.f34267c.h(j2, abstractMessageLite);
                        i2 = CodedOutputStream.i(i7);
                        iL = CodedOutputStream.l(jH);
                        iD = iL + i2;
                        iA += iD;
                    }
                    break;
                case 3:
                    if (t(i6, abstractMessageLite)) {
                        long jH2 = UnsafeUtil.f34267c.h(j2, abstractMessageLite);
                        i2 = CodedOutputStream.i(i7);
                        iL = CodedOutputStream.l(jH2);
                        iD = iL + i2;
                        iA += iD;
                    }
                    break;
                case 4:
                    if (t(i6, abstractMessageLite)) {
                        int iG = UnsafeUtil.f34267c.g(j2, abstractMessageLite);
                        i3 = CodedOutputStream.i(i7);
                        iF = CodedOutputStream.f(iG);
                        iD = iF + i3;
                        iA += iD;
                    }
                    break;
                case 5:
                    if (t(i6, abstractMessageLite)) {
                        iD = CodedOutputStream.d(i7);
                        iA += iD;
                    }
                    break;
                case 6:
                    if (t(i6, abstractMessageLite)) {
                        iD = CodedOutputStream.c(i7);
                        iA += iD;
                    }
                    break;
                case 7:
                    if (t(i6, abstractMessageLite)) {
                        iA = o60.a(i7, 1, iA);
                    }
                    break;
                case 8:
                    if (t(i6, abstractMessageLite)) {
                        Object objI = UnsafeUtil.f34267c.i(j2, abstractMessageLite);
                        if (objI instanceof ByteString) {
                            int i9 = CodedOutputStream.i(i7);
                            int size = ((ByteString) objI).size();
                            iA = tr.c(size, size, i9, iA);
                        } else {
                            i4 = CodedOutputStream.i(i7);
                            iH = CodedOutputStream.h((String) objI);
                            iA = iH + i4 + iA;
                        }
                    }
                    break;
                case 9:
                    if (t(i6, abstractMessageLite)) {
                        iL2 = SchemaUtil.l(i7, UnsafeUtil.f34267c.i(j2, abstractMessageLite), p(i6));
                        iA += iL2;
                    }
                    break;
                case 10:
                    if (t(i6, abstractMessageLite)) {
                        iD = CodedOutputStream.a(i7, (ByteString) UnsafeUtil.f34267c.i(j2, abstractMessageLite));
                        iA += iD;
                    }
                    break;
                case 11:
                    if (t(i6, abstractMessageLite)) {
                        iD = CodedOutputStream.j(i7, UnsafeUtil.f34267c.g(j2, abstractMessageLite));
                        iA += iD;
                    }
                    break;
                case 12:
                    if (t(i6, abstractMessageLite)) {
                        int iG2 = UnsafeUtil.f34267c.g(j2, abstractMessageLite);
                        i3 = CodedOutputStream.i(i7);
                        iF = CodedOutputStream.f(iG2);
                        iD = iF + i3;
                        iA += iD;
                    }
                    break;
                case 13:
                    if (t(i6, abstractMessageLite)) {
                        iA = o60.a(i7, 4, iA);
                    }
                    break;
                case 14:
                    if (t(i6, abstractMessageLite)) {
                        iA = o60.a(i7, 8, iA);
                    }
                    break;
                case 15:
                    if (t(i6, abstractMessageLite)) {
                        int iG3 = UnsafeUtil.f34267c.g(j2, abstractMessageLite);
                        i3 = CodedOutputStream.i(i7);
                        iF = CodedOutputStream.k((iG3 >> 31) ^ (iG3 << 1));
                        iD = iF + i3;
                        iA += iD;
                    }
                    break;
                case 16:
                    if (t(i6, abstractMessageLite)) {
                        long jH3 = UnsafeUtil.f34267c.h(j2, abstractMessageLite);
                        i5 = CodedOutputStream.i(i7);
                        iL3 = CodedOutputStream.l((jH3 >> 63) ^ (jH3 << 1));
                        iD = iL3 + i5;
                        iA += iD;
                    }
                    break;
                case 17:
                    if (t(i6, abstractMessageLite)) {
                        iD = CodedOutputStream.e(i7, (MessageLite) UnsafeUtil.f34267c.i(j2, abstractMessageLite), p(i6));
                        iA += iD;
                    }
                    break;
                case 18:
                    iL2 = SchemaUtil.f(i7, w(abstractMessageLite, j2));
                    iA += iL2;
                    break;
                case 19:
                    iL2 = SchemaUtil.d(i7, w(abstractMessageLite, j2));
                    iA += iL2;
                    break;
                case 20:
                    iL2 = SchemaUtil.j(i7, w(abstractMessageLite, j2));
                    iA += iL2;
                    break;
                case 21:
                    iL2 = SchemaUtil.u(i7, w(abstractMessageLite, j2));
                    iA += iL2;
                    break;
                case 22:
                    iL2 = SchemaUtil.h(i7, w(abstractMessageLite, j2));
                    iA += iL2;
                    break;
                case 23:
                    iL2 = SchemaUtil.f(i7, w(abstractMessageLite, j2));
                    iA += iL2;
                    break;
                case 24:
                    iL2 = SchemaUtil.d(i7, w(abstractMessageLite, j2));
                    iA += iL2;
                    break;
                case 25:
                    List listW = w(abstractMessageLite, j2);
                    Class cls = SchemaUtil.f34235a;
                    int size2 = listW.size();
                    iA += size2 == 0 ? 0 : (CodedOutputStream.i(i7) + 1) * size2;
                    break;
                case 26:
                    iL2 = SchemaUtil.r(i7, w(abstractMessageLite, j2));
                    iA += iL2;
                    break;
                case 27:
                    iL2 = SchemaUtil.m(i7, w(abstractMessageLite, j2), p(i6));
                    iA += iL2;
                    break;
                case 28:
                    iL2 = SchemaUtil.a(i7, w(abstractMessageLite, j2));
                    iA += iL2;
                    break;
                case 29:
                    iL2 = SchemaUtil.s(i7, w(abstractMessageLite, j2));
                    iA += iL2;
                    break;
                case 30:
                    iL2 = SchemaUtil.b(i7, w(abstractMessageLite, j2));
                    iA += iL2;
                    break;
                case 31:
                    iL2 = SchemaUtil.d(i7, w(abstractMessageLite, j2));
                    iA += iL2;
                    break;
                case 32:
                    iL2 = SchemaUtil.f(i7, w(abstractMessageLite, j2));
                    iA += iL2;
                    break;
                case 33:
                    iL2 = SchemaUtil.n(i7, w(abstractMessageLite, j2));
                    iA += iL2;
                    break;
                case 34:
                    iL2 = SchemaUtil.p(i7, w(abstractMessageLite, j2));
                    iA += iL2;
                    break;
                case 35:
                    int iG4 = SchemaUtil.g((List) unsafe.getObject(abstractMessageLite, j2));
                    if (iG4 > 0) {
                        iA = tr.c(iG4, CodedOutputStream.i(i7), iG4, iA);
                    }
                    break;
                case 36:
                    int iE2 = SchemaUtil.e((List) unsafe.getObject(abstractMessageLite, j2));
                    if (iE2 > 0) {
                        iA = tr.c(iE2, CodedOutputStream.i(i7), iE2, iA);
                    }
                    break;
                case 37:
                    int iK = SchemaUtil.k((List) unsafe.getObject(abstractMessageLite, j2));
                    if (iK > 0) {
                        iA = tr.c(iK, CodedOutputStream.i(i7), iK, iA);
                    }
                    break;
                case 38:
                    int iV = SchemaUtil.v((List) unsafe.getObject(abstractMessageLite, j2));
                    if (iV > 0) {
                        iA = tr.c(iV, CodedOutputStream.i(i7), iV, iA);
                    }
                    break;
                case 39:
                    int i10 = SchemaUtil.i((List) unsafe.getObject(abstractMessageLite, j2));
                    if (i10 > 0) {
                        iA = tr.c(i10, CodedOutputStream.i(i7), i10, iA);
                    }
                    break;
                case 40:
                    int iG5 = SchemaUtil.g((List) unsafe.getObject(abstractMessageLite, j2));
                    if (iG5 > 0) {
                        iA = tr.c(iG5, CodedOutputStream.i(i7), iG5, iA);
                    }
                    break;
                case 41:
                    int iE3 = SchemaUtil.e((List) unsafe.getObject(abstractMessageLite, j2));
                    if (iE3 > 0) {
                        iA = tr.c(iE3, CodedOutputStream.i(i7), iE3, iA);
                    }
                    break;
                case EACTags.CURRENCY_CODE /* 42 */:
                    List list = (List) unsafe.getObject(abstractMessageLite, j2);
                    Class cls2 = SchemaUtil.f34235a;
                    int size3 = list.size();
                    if (size3 > 0) {
                        iA = tr.c(size3, CodedOutputStream.i(i7), size3, iA);
                    }
                    break;
                case EACTags.DATE_OF_BIRTH /* 43 */:
                    int iT2 = SchemaUtil.t((List) unsafe.getObject(abstractMessageLite, j2));
                    if (iT2 > 0) {
                        iA = tr.c(iT2, CodedOutputStream.i(i7), iT2, iA);
                    }
                    break;
                case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                    int iC = SchemaUtil.c((List) unsafe.getObject(abstractMessageLite, j2));
                    if (iC > 0) {
                        iA = tr.c(iC, CodedOutputStream.i(i7), iC, iA);
                    }
                    break;
                case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                    int iE4 = SchemaUtil.e((List) unsafe.getObject(abstractMessageLite, j2));
                    if (iE4 > 0) {
                        iA = tr.c(iE4, CodedOutputStream.i(i7), iE4, iA);
                    }
                    break;
                case 46:
                    int iG6 = SchemaUtil.g((List) unsafe.getObject(abstractMessageLite, j2));
                    if (iG6 > 0) {
                        iA = tr.c(iG6, CodedOutputStream.i(i7), iG6, iA);
                    }
                    break;
                case EACTags.PIN_USAGE_POLICY /* 47 */:
                    int iO = SchemaUtil.o((List) unsafe.getObject(abstractMessageLite, j2));
                    if (iO > 0) {
                        iA = tr.c(iO, CodedOutputStream.i(i7), iO, iA);
                    }
                    break;
                case 48:
                    int iQ = SchemaUtil.q((List) unsafe.getObject(abstractMessageLite, j2));
                    if (iQ > 0) {
                        iA = tr.c(iQ, CodedOutputStream.i(i7), iQ, iA);
                    }
                    break;
                case 49:
                    List listW2 = w(abstractMessageLite, j2);
                    Schema schemaP = p(i6);
                    Class cls3 = SchemaUtil.f34235a;
                    int size4 = listW2.size();
                    if (size4 == 0) {
                        iE = 0;
                    } else {
                        iE = 0;
                        for (int i11 = 0; i11 < size4; i11++) {
                            iE += CodedOutputStream.e(i7, (MessageLite) listW2.get(i11), schemaP);
                        }
                    }
                    iA += iE;
                    break;
                case 50:
                    this.p.h(UnsafeUtil.f34267c.i(j2, abstractMessageLite), o(i6));
                    break;
                case EACTags.TRANSACTION_DATE /* 51 */:
                    if (v(i7, i6, abstractMessageLite)) {
                        iA = o60.a(i7, 8, iA);
                    }
                    break;
                case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                    if (v(i7, i6, abstractMessageLite)) {
                        iA = o60.a(i7, 4, iA);
                    }
                    break;
                case EACTags.SEX /* 53 */:
                    if (v(i7, i6, abstractMessageLite)) {
                        long jG = G(j2, abstractMessageLite);
                        i2 = CodedOutputStream.i(i7);
                        iL = CodedOutputStream.l(jG);
                        iD = iL + i2;
                        iA += iD;
                    }
                    break;
                case EACTags.CURRENCY_EXPONENT /* 54 */:
                    if (v(i7, i6, abstractMessageLite)) {
                        long jG2 = G(j2, abstractMessageLite);
                        i2 = CodedOutputStream.i(i7);
                        iL = CodedOutputStream.l(jG2);
                        iD = iL + i2;
                        iA += iD;
                    }
                    break;
                case 55:
                    if (v(i7, i6, abstractMessageLite)) {
                        int iF2 = F(j2, abstractMessageLite);
                        i3 = CodedOutputStream.i(i7);
                        iF = CodedOutputStream.f(iF2);
                        iD = iF + i3;
                        iA += iD;
                    }
                    break;
                case 56:
                    if (v(i7, i6, abstractMessageLite)) {
                        iD = CodedOutputStream.d(i7);
                        iA += iD;
                    }
                    break;
                case 57:
                    if (v(i7, i6, abstractMessageLite)) {
                        iD = CodedOutputStream.c(i7);
                        iA += iD;
                    }
                    break;
                case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
                    if (v(i7, i6, abstractMessageLite)) {
                        iA = o60.a(i7, 1, iA);
                    }
                    break;
                case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                    if (v(i7, i6, abstractMessageLite)) {
                        Object objI2 = UnsafeUtil.f34267c.i(j2, abstractMessageLite);
                        if (objI2 instanceof ByteString) {
                            int i12 = CodedOutputStream.i(i7);
                            int size5 = ((ByteString) objI2).size();
                            iA = tr.c(size5, size5, i12, iA);
                        } else {
                            i4 = CodedOutputStream.i(i7);
                            iH = CodedOutputStream.h((String) objI2);
                            iA = iH + i4 + iA;
                        }
                    }
                    break;
                case 60:
                    if (v(i7, i6, abstractMessageLite)) {
                        iL2 = SchemaUtil.l(i7, UnsafeUtil.f34267c.i(j2, abstractMessageLite), p(i6));
                        iA += iL2;
                    }
                    break;
                case 61:
                    if (v(i7, i6, abstractMessageLite)) {
                        iD = CodedOutputStream.a(i7, (ByteString) UnsafeUtil.f34267c.i(j2, abstractMessageLite));
                        iA += iD;
                    }
                    break;
                case 62:
                    if (v(i7, i6, abstractMessageLite)) {
                        iD = CodedOutputStream.j(i7, F(j2, abstractMessageLite));
                        iA += iD;
                    }
                    break;
                case 63:
                    if (v(i7, i6, abstractMessageLite)) {
                        int iF3 = F(j2, abstractMessageLite);
                        i3 = CodedOutputStream.i(i7);
                        iF = CodedOutputStream.f(iF3);
                        iD = iF + i3;
                        iA += iD;
                    }
                    break;
                case 64:
                    if (v(i7, i6, abstractMessageLite)) {
                        iA = o60.a(i7, 4, iA);
                    }
                    break;
                case EACTags.ELEMENT_LIST /* 65 */:
                    if (v(i7, i6, abstractMessageLite)) {
                        iA = o60.a(i7, 8, iA);
                    }
                    break;
                case EACTags.ADDRESS /* 66 */:
                    if (v(i7, i6, abstractMessageLite)) {
                        int iF4 = F(j2, abstractMessageLite);
                        i3 = CodedOutputStream.i(i7);
                        iF = CodedOutputStream.k((iF4 >> 31) ^ (iF4 << 1));
                        iD = iF + i3;
                        iA += iD;
                    }
                    break;
                case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                    if (v(i7, i6, abstractMessageLite)) {
                        long jG3 = G(j2, abstractMessageLite);
                        i5 = CodedOutputStream.i(i7);
                        iL3 = CodedOutputStream.l((jG3 >> 63) ^ (jG3 << 1));
                        iD = iL3 + i5;
                        iA += iD;
                    }
                    break;
                case EACTags.APPLICATION_IMAGE /* 68 */:
                    if (v(i7, i6, abstractMessageLite)) {
                        iD = CodedOutputStream.e(i7, (MessageLite) UnsafeUtil.f34267c.i(j2, abstractMessageLite), p(i6));
                        iA += iD;
                    }
                    break;
            }
            i6 += 3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:69:0x0110 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:70:0x0111 A[RETURN] */
    public final boolean t(int i2, Object obj) {
        int i3 = this.f34213a[i2 + 2];
        long j2 = i3 & 1048575;
        if (j2 != 1048575) {
            if (((1 << (i3 >>> 20)) & UnsafeUtil.f34267c.g(j2, obj)) != 0) {
                return true;
            }
            return false;
        }
        int iU = U(i2);
        long j3 = iU & 1048575;
        switch (T(iU)) {
            case 0:
                if (Double.doubleToRawLongBits(UnsafeUtil.f34267c.e(j3, obj)) != 0) {
                    return true;
                }
                return false;
            case 1:
                if (Float.floatToRawIntBits(UnsafeUtil.f34267c.f(j3, obj)) != 0) {
                    return true;
                }
                return false;
            case 2:
                if (UnsafeUtil.f34267c.h(j3, obj) != 0) {
                    return true;
                }
                return false;
            case 3:
                if (UnsafeUtil.f34267c.h(j3, obj) != 0) {
                    return true;
                }
                return false;
            case 4:
                if (UnsafeUtil.f34267c.g(j3, obj) != 0) {
                    return true;
                }
                return false;
            case 5:
                if (UnsafeUtil.f34267c.h(j3, obj) != 0) {
                    return true;
                }
                return false;
            case 6:
                if (UnsafeUtil.f34267c.g(j3, obj) != 0) {
                    return true;
                }
                return false;
            case 7:
                return UnsafeUtil.f34267c.c(j3, obj);
            case 8:
                Object objI = UnsafeUtil.f34267c.i(j3, obj);
                if (objI instanceof String) {
                    return !((String) objI).isEmpty();
                }
                if (objI instanceof ByteString) {
                    return !ByteString.f34141c.equals(objI);
                }
                ct0.c();
                return false;
            case 9:
                if (UnsafeUtil.f34267c.i(j3, obj) != null) {
                    return true;
                }
                return false;
            case 10:
                return !ByteString.f34141c.equals(UnsafeUtil.f34267c.i(j3, obj));
            case 11:
                if (UnsafeUtil.f34267c.g(j3, obj) != 0) {
                    return true;
                }
                return false;
            case 12:
                if (UnsafeUtil.f34267c.g(j3, obj) != 0) {
                    return true;
                }
                return false;
            case 13:
                if (UnsafeUtil.f34267c.g(j3, obj) != 0) {
                    return true;
                }
                return false;
            case 14:
                if (UnsafeUtil.f34267c.h(j3, obj) != 0) {
                    return true;
                }
                return false;
            case 15:
                if (UnsafeUtil.f34267c.g(j3, obj) != 0) {
                    return true;
                }
                return false;
            case 16:
                if (UnsafeUtil.f34267c.h(j3, obj) != 0) {
                    return true;
                }
                return false;
            case 17:
                if (UnsafeUtil.f34267c.i(j3, obj) != null) {
                    return true;
                }
                return false;
            default:
                ct0.c();
                return false;
        }
    }

    public final boolean v(int i2, int i3, Object obj) {
        return UnsafeUtil.f34267c.g((long) (this.f34213a[i3 + 2] & 1048575), obj) == i2;
    }

    public final void x(Object obj, int i2, Object obj2, ExtensionRegistryLite extensionRegistryLite, Reader reader) {
        long jU = U(i2) & 1048575;
        Object objI = UnsafeUtil.f34267c.i(jU, obj);
        MapFieldSchema mapFieldSchema = this.p;
        if (objI == null) {
            objI = mapFieldSchema.f();
            UnsafeUtil.p(jU, obj, objI);
        } else if (mapFieldSchema.g(objI)) {
            MapFieldLite mapFieldLiteF = mapFieldSchema.f();
            mapFieldSchema.a(mapFieldLiteF, objI);
            UnsafeUtil.p(jU, obj, mapFieldLiteF);
            objI = mapFieldLiteF;
        }
        mapFieldSchema.c(objI);
        mapFieldSchema.b(obj2);
        throw null;
    }

    public final void y(Object obj, Object obj2, int i2) {
        if (t(i2, obj2)) {
            long jU = U(i2) & 1048575;
            Unsafe unsafe = r;
            Object object = unsafe.getObject(obj2, jU);
            if (object == null) {
                lc0.h(this.f34213a[i2], obj2);
                return;
            }
            Schema schemaP = p(i2);
            if (!t(i2, obj)) {
                if (u(object)) {
                    Object objB = schemaP.b();
                    schemaP.a(objB, object);
                    unsafe.putObject(obj, jU, objB);
                } else {
                    unsafe.putObject(obj, jU, object);
                }
                O(i2, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, jU);
            if (!u(object2)) {
                Object objB2 = schemaP.b();
                schemaP.a(objB2, object2);
                unsafe.putObject(obj, jU, objB2);
                object2 = objB2;
            }
            schemaP.a(object2, object);
        }
    }

    public final void z(Object obj, Object obj2, int i2) {
        int[] iArr = this.f34213a;
        int i3 = iArr[i2];
        if (v(i3, i2, obj2)) {
            long jU = U(i2) & 1048575;
            Unsafe unsafe = r;
            Object object = unsafe.getObject(obj2, jU);
            if (object == null) {
                lc0.h(iArr[i2], obj2);
                return;
            }
            Schema schemaP = p(i2);
            if (!v(i3, i2, obj)) {
                if (u(object)) {
                    Object objB = schemaP.b();
                    schemaP.a(objB, object);
                    unsafe.putObject(obj, jU, objB);
                } else {
                    unsafe.putObject(obj, jU, object);
                }
                P(i3, i2, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, jU);
            if (!u(object2)) {
                Object objB2 = schemaP.b();
                schemaP.a(objB2, object2);
                unsafe.putObject(obj, jU, objB2);
                object2 = objB2;
            }
            schemaP.a(object2, object);
        }
    }
}
