package androidx.datastore.preferences.protobuf;

import defpackage.cj;
import defpackage.ct0;
import defpackage.lc0;
import defpackage.md;
import defpackage.o60;
import defpackage.pq0;
import defpackage.tr;
import defpackage.x1;
import java.io.IOException;
import java.lang.reflect.Field;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.asn1.eac.EACTags;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes.dex */
@CheckReturnValue
final class MessageSchema<T> implements Schema<T> {
    public static final int[] p = new int[0];
    public static final Unsafe q = UnsafeUtil.i();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f12971a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object[] f12972b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f12973c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MessageLite f12974e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f12975f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int[] f12976h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f12977i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f12978j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final NewInstanceSchema f12979k;
    public final ListFieldSchema l;
    public final UnknownFieldSchema m;
    public final ExtensionSchema n;
    public final MapFieldSchema o;

    public MessageSchema(int[] iArr, Object[] objArr, int i2, int i3, MessageLite messageLite, int[] iArr2, int i4, int i5, NewInstanceSchema newInstanceSchema, ListFieldSchema listFieldSchema, UnknownFieldSchema unknownFieldSchema, ExtensionSchema extensionSchema, MapFieldSchema mapFieldSchema) {
        this.f12971a = iArr;
        this.f12972b = objArr;
        this.f12973c = i2;
        this.d = i3;
        this.g = messageLite instanceof GeneratedMessageLite;
        this.f12975f = extensionSchema != null && (messageLite instanceof GeneratedMessageLite.ExtendableMessage);
        this.f12976h = iArr2;
        this.f12977i = i4;
        this.f12978j = i5;
        this.f12979k = newInstanceSchema;
        this.l = listFieldSchema;
        this.m = unknownFieldSchema;
        this.n = extensionSchema;
        this.f12974e = messageLite;
        this.o = mapFieldSchema;
    }

    public static long A(long j2, Object obj) {
        return ((Long) UnsafeUtil.f13019c.h(j2, obj)).longValue();
    }

    public static Field C(Class cls, String str) {
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

    public static int H(int i2) {
        return (i2 & 267386880) >>> 20;
    }

    public static void K(int i2, Object obj, Writer writer) {
        if (obj instanceof String) {
            writer.e(i2, (String) obj);
        } else {
            writer.K(i2, (ByteString) obj);
        }
    }

    public static boolean q(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof GeneratedMessageLite) {
            return ((GeneratedMessageLite) obj).t();
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:120:0x025d  */
    /* JADX WARN: Code duplicated, block: B:122:0x0262  */
    /* JADX WARN: Code duplicated, block: B:125:0x027a  */
    /* JADX WARN: Code duplicated, block: B:126:0x027d  */
    /* JADX WARN: Code duplicated, block: B:163:0x0336  */
    /* JADX WARN: Code duplicated, block: B:179:0x0384  */
    /* JADX WARN: Code duplicated, block: B:182:0x0391  */
    public static MessageSchema x(RawMessageInfo rawMessageInfo, NewInstanceSchema newInstanceSchema, ListFieldSchema listFieldSchema, UnknownFieldSchema unknownFieldSchema, ExtensionSchema extensionSchema, MapFieldSchema mapFieldSchema) {
        int i2;
        int iCharAt;
        int i3;
        int i4;
        int i5;
        int[] iArr;
        int i6;
        int i7;
        int i8;
        int i9;
        char cCharAt;
        int i10;
        char cCharAt2;
        int i11;
        char cCharAt3;
        int i12;
        char cCharAt4;
        int i13;
        char cCharAt5;
        int i14;
        char cCharAt6;
        int i15;
        char cCharAt7;
        int i16;
        char cCharAt8;
        int i17;
        int i18;
        int[] iArr2;
        int i19;
        int iObjectFieldOffset;
        int iObjectFieldOffset2;
        int i20;
        int i21;
        int iObjectFieldOffset3;
        int i22;
        Field fieldC;
        char cCharAt9;
        int i23;
        int i24;
        int i25;
        Object obj;
        Field fieldC2;
        int i26;
        Object obj2;
        Field fieldC3;
        int i27;
        char cCharAt10;
        int i28;
        char cCharAt11;
        int i29;
        char cCharAt12;
        int i30;
        char cCharAt13;
        String str = rawMessageInfo.f12991b;
        int length = str.length();
        int i31 = 55296;
        if (str.charAt(0) >= 55296) {
            int i32 = 1;
            while (true) {
                i2 = i32 + 1;
                if (str.charAt(i32) < 55296) {
                    break;
                }
                i32 = i2;
            }
        } else {
            i2 = 1;
        }
        int i33 = i2 + 1;
        int iCharAt2 = str.charAt(i2);
        if (iCharAt2 >= 55296) {
            int i34 = iCharAt2 & 8191;
            int i35 = 13;
            while (true) {
                i30 = i33 + 1;
                cCharAt13 = str.charAt(i33);
                if (cCharAt13 < 55296) {
                    break;
                }
                i34 |= (cCharAt13 & 8191) << i35;
                i35 += 13;
                i33 = i30;
            }
            iCharAt2 = i34 | (cCharAt13 << i35);
            i33 = i30;
        }
        if (iCharAt2 == 0) {
            i4 = 0;
            i7 = 0;
            iCharAt = 0;
            i3 = 0;
            i6 = 0;
            i8 = 0;
            iArr = p;
            i5 = 0;
        } else {
            int i36 = i33 + 1;
            int iCharAt3 = str.charAt(i33);
            if (iCharAt3 >= 55296) {
                int i37 = iCharAt3 & 8191;
                int i38 = 13;
                while (true) {
                    i16 = i36 + 1;
                    cCharAt8 = str.charAt(i36);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i37 |= (cCharAt8 & 8191) << i38;
                    i38 += 13;
                    i36 = i16;
                }
                iCharAt3 = i37 | (cCharAt8 << i38);
                i36 = i16;
            }
            int i39 = i36 + 1;
            int iCharAt4 = str.charAt(i36);
            if (iCharAt4 >= 55296) {
                int i40 = iCharAt4 & 8191;
                int i41 = 13;
                while (true) {
                    i15 = i39 + 1;
                    cCharAt7 = str.charAt(i39);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i40 |= (cCharAt7 & 8191) << i41;
                    i41 += 13;
                    i39 = i15;
                }
                iCharAt4 = i40 | (cCharAt7 << i41);
                i39 = i15;
            }
            int i42 = i39 + 1;
            int iCharAt5 = str.charAt(i39);
            if (iCharAt5 >= 55296) {
                int i43 = iCharAt5 & 8191;
                int i44 = 13;
                while (true) {
                    i14 = i42 + 1;
                    cCharAt6 = str.charAt(i42);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i43 |= (cCharAt6 & 8191) << i44;
                    i44 += 13;
                    i42 = i14;
                }
                iCharAt5 = i43 | (cCharAt6 << i44);
                i42 = i14;
            }
            int i45 = i42 + 1;
            int iCharAt6 = str.charAt(i42);
            if (iCharAt6 >= 55296) {
                int i46 = iCharAt6 & 8191;
                int i47 = 13;
                while (true) {
                    i13 = i45 + 1;
                    cCharAt5 = str.charAt(i45);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i46 |= (cCharAt5 & 8191) << i47;
                    i47 += 13;
                    i45 = i13;
                }
                iCharAt6 = i46 | (cCharAt5 << i47);
                i45 = i13;
            }
            int i48 = i45 + 1;
            iCharAt = str.charAt(i45);
            if (iCharAt >= 55296) {
                int i49 = iCharAt & 8191;
                int i50 = 13;
                while (true) {
                    i12 = i48 + 1;
                    cCharAt4 = str.charAt(i48);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i49 |= (cCharAt4 & 8191) << i50;
                    i50 += 13;
                    i48 = i12;
                }
                iCharAt = i49 | (cCharAt4 << i50);
                i48 = i12;
            }
            int i51 = i48 + 1;
            int iCharAt7 = str.charAt(i48);
            if (iCharAt7 >= 55296) {
                int i52 = iCharAt7 & 8191;
                int i53 = 13;
                while (true) {
                    i11 = i51 + 1;
                    cCharAt3 = str.charAt(i51);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i52 |= (cCharAt3 & 8191) << i53;
                    i53 += 13;
                    i51 = i11;
                }
                iCharAt7 = i52 | (cCharAt3 << i53);
                i51 = i11;
            }
            int i54 = i51 + 1;
            int iCharAt8 = str.charAt(i51);
            if (iCharAt8 >= 55296) {
                int i55 = iCharAt8 & 8191;
                int i56 = 13;
                while (true) {
                    i10 = i54 + 1;
                    cCharAt2 = str.charAt(i54);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i55 |= (cCharAt2 & 8191) << i56;
                    i56 += 13;
                    i54 = i10;
                }
                iCharAt8 = i55 | (cCharAt2 << i56);
                i54 = i10;
            }
            int i57 = i54 + 1;
            int iCharAt9 = str.charAt(i54);
            if (iCharAt9 >= 55296) {
                int i58 = iCharAt9 & 8191;
                int i59 = 13;
                while (true) {
                    i9 = i57 + 1;
                    cCharAt = str.charAt(i57);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i58 |= (cCharAt & 8191) << i59;
                    i59 += 13;
                    i57 = i9;
                }
                iCharAt9 = i58 | (cCharAt << i59);
                i57 = i9;
            }
            int[] iArr3 = new int[iCharAt9 + iCharAt7 + iCharAt8];
            int i60 = (iCharAt3 * 2) + iCharAt4;
            int i61 = iCharAt7;
            i3 = iCharAt5;
            i4 = i61;
            i5 = iCharAt3;
            i33 = i57;
            iArr = iArr3;
            i6 = iCharAt6;
            i7 = i60;
            i8 = iCharAt9;
        }
        Unsafe unsafe = q;
        Object[] objArr = rawMessageInfo.f12992c;
        Class<?> cls = rawMessageInfo.f12990a.getClass();
        int[] iArr4 = new int[iCharAt * 3];
        Object[] objArr2 = new Object[iCharAt * 2];
        int i62 = i8 + i4;
        int i63 = i62;
        int i64 = i8;
        int i65 = 0;
        int i66 = 0;
        while (i33 < length) {
            int i67 = i33 + 1;
            int iCharAt10 = str.charAt(i33);
            if (iCharAt10 >= i31) {
                int i68 = iCharAt10 & 8191;
                int i69 = i67;
                int i70 = 13;
                while (true) {
                    i29 = i69 + 1;
                    cCharAt12 = str.charAt(i69);
                    i17 = length;
                    if (cCharAt12 < 55296) {
                        break;
                    }
                    i68 |= (cCharAt12 & 8191) << i70;
                    i70 += 13;
                    i69 = i29;
                    length = i17;
                }
                iCharAt10 = i68 | (cCharAt12 << i70);
                i18 = i29;
            } else {
                i17 = length;
                i18 = i67;
            }
            int i71 = i18 + 1;
            int iCharAt11 = str.charAt(i18);
            Object[] objArr3 = objArr;
            char c2 = 55296;
            if (iCharAt11 >= 55296) {
                int i72 = iCharAt11 & 8191;
                int i73 = 13;
                while (true) {
                    i28 = i71 + 1;
                    cCharAt11 = str.charAt(i71);
                    if (cCharAt11 < c2) {
                        break;
                    }
                    i72 |= (cCharAt11 & 8191) << i73;
                    i73 += 13;
                    i71 = i28;
                    c2 = 55296;
                }
                iCharAt11 = i72 | (cCharAt11 << i73);
                i71 = i28;
            }
            int i74 = iCharAt11 & 255;
            int i75 = iCharAt10;
            if ((iCharAt11 & 1024) != 0) {
                iArr[i65] = i66;
                i65++;
            }
            int i76 = i5;
            if (i74 >= 51) {
                int i77 = i71 + 1;
                int iCharAt12 = str.charAt(i71);
                char c3 = 55296;
                if (iCharAt12 >= 55296) {
                    int i78 = iCharAt12 & 8191;
                    int i79 = 13;
                    while (true) {
                        i27 = i77 + 1;
                        cCharAt10 = str.charAt(i77);
                        if (cCharAt10 < c3) {
                            break;
                        }
                        i78 |= (cCharAt10 & 8191) << i79;
                        i79 += 13;
                        i77 = i27;
                        c3 = 55296;
                    }
                    iCharAt12 = i78 | (cCharAt10 << i79);
                    i77 = i27;
                }
                int i80 = i74 - 51;
                int i81 = i77;
                if (i80 == 9 || i80 == 17) {
                    i24 = i7 + 1;
                    objArr2[((i66 / 3) * 2) + 1] = objArr3[i7];
                } else {
                    if (i80 == 12 && (rawMessageInfo.c().equals(ProtoSyntax.PROTO2) || (iCharAt11 & 2048) != 0)) {
                        i24 = i7 + 1;
                        objArr2[((i66 / 3) * 2) + 1] = objArr3[i7];
                    }
                    i25 = iCharAt12 * 2;
                    obj = objArr3[i25];
                    if (obj instanceof Field) {
                        fieldC2 = (Field) obj;
                    } else {
                        fieldC2 = C(cls, (String) obj);
                        objArr3[i25] = fieldC2;
                    }
                    int iObjectFieldOffset4 = (int) unsafe.objectFieldOffset(fieldC2);
                    i26 = i25 + 1;
                    obj2 = objArr3[i26];
                    if (obj2 instanceof Field) {
                        fieldC3 = (Field) obj2;
                    } else {
                        fieldC3 = C(cls, (String) obj2);
                        objArr3[i26] = fieldC3;
                    }
                    i19 = i7;
                    i20 = i81;
                    i21 = 0;
                    cls = cls;
                    iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldC3);
                    i22 = iObjectFieldOffset4;
                    iArr2 = iArr4;
                }
                i7 = i24;
                i25 = iCharAt12 * 2;
                obj = objArr3[i25];
                if (obj instanceof Field) {
                    fieldC2 = (Field) obj;
                } else {
                    fieldC2 = C(cls, (String) obj);
                    objArr3[i25] = fieldC2;
                }
                int iObjectFieldOffset5 = (int) unsafe.objectFieldOffset(fieldC2);
                i26 = i25 + 1;
                obj2 = objArr3[i26];
                if (obj2 instanceof Field) {
                    fieldC3 = (Field) obj2;
                } else {
                    fieldC3 = C(cls, (String) obj2);
                    objArr3[i26] = fieldC3;
                }
                i19 = i7;
                i20 = i81;
                i21 = 0;
                cls = cls;
                iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldC3);
                i22 = iObjectFieldOffset5;
                iArr2 = iArr4;
            } else {
                int i82 = i7 + 1;
                Field fieldC4 = C(cls, (String) objArr3[i7]);
                if (i74 == 9 || i74 == 17) {
                    iArr2 = iArr4;
                    objArr2[((i66 / 3) * 2) + 1] = fieldC4.getType();
                } else {
                    if (i74 == 27 || i74 == 49) {
                        iArr2 = iArr4;
                        i23 = i7 + 2;
                        objArr2[((i66 / 3) * 2) + 1] = objArr3[i82];
                    } else if (i74 == 12 || i74 == 30 || i74 == 44) {
                        iArr2 = iArr4;
                        if (rawMessageInfo.c() == ProtoSyntax.PROTO2 || (iCharAt11 & 2048) != 0) {
                            i23 = i7 + 2;
                            objArr2[((i66 / 3) * 2) + 1] = objArr3[i82];
                        }
                        iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldC4);
                        if ((iCharAt11 & 4096) != 0 || i74 > 17) {
                            iObjectFieldOffset2 = 1048575;
                            i20 = i71;
                            i21 = 0;
                        } else {
                            int i83 = i71 + 1;
                            int iCharAt13 = str.charAt(i71);
                            if (iCharAt13 >= 55296) {
                                int i84 = iCharAt13 & 8191;
                                int i85 = 13;
                                while (true) {
                                    i20 = i83 + 1;
                                    cCharAt9 = str.charAt(i83);
                                    if (cCharAt9 < 55296) {
                                        break;
                                    }
                                    i84 |= (cCharAt9 & 8191) << i85;
                                    i85 += 13;
                                    i83 = i20;
                                }
                                iCharAt13 = i84 | (cCharAt9 << i85);
                            } else {
                                i20 = i83;
                            }
                            int i86 = (iCharAt13 / 32) + (i76 * 2);
                            Object obj3 = objArr3[i86];
                            if (obj3 instanceof Field) {
                                fieldC = (Field) obj3;
                            } else {
                                fieldC = C(cls, (String) obj3);
                                objArr3[i86] = fieldC;
                            }
                            iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldC);
                            i21 = iCharAt13 % 32;
                        }
                        if (i74 >= 18 && i74 <= 49) {
                            iArr[i63] = iObjectFieldOffset;
                            i63++;
                        }
                        iObjectFieldOffset3 = iObjectFieldOffset2;
                        i22 = iObjectFieldOffset;
                    } else {
                        if (i74 == 50) {
                            int i87 = i64 + 1;
                            iArr[i64] = i66;
                            int i88 = (i66 / 3) * 2;
                            int i89 = i7 + 2;
                            objArr2[i88] = objArr3[i82];
                            if ((iCharAt11 & 2048) != 0) {
                                i19 = i7 + 3;
                                objArr2[i88 + 1] = objArr3[i89];
                                iArr2 = iArr4;
                                i64 = i87;
                            } else {
                                i19 = i89;
                                i64 = i87;
                                iArr2 = iArr4;
                            }
                        } else {
                            iArr2 = iArr4;
                        }
                        iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldC4);
                        if ((iCharAt11 & 4096) != 0) {
                            iObjectFieldOffset2 = 1048575;
                            i20 = i71;
                            i21 = 0;
                        } else {
                            iObjectFieldOffset2 = 1048575;
                            i20 = i71;
                            i21 = 0;
                        }
                        if (i74 >= 18) {
                            iArr[i63] = iObjectFieldOffset;
                            i63++;
                        }
                        iObjectFieldOffset3 = iObjectFieldOffset2;
                        i22 = iObjectFieldOffset;
                    }
                    i19 = i23;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldC4);
                    if ((iCharAt11 & 4096) != 0) {
                        iObjectFieldOffset2 = 1048575;
                        i20 = i71;
                        i21 = 0;
                    } else {
                        iObjectFieldOffset2 = 1048575;
                        i20 = i71;
                        i21 = 0;
                    }
                    if (i74 >= 18) {
                        iArr[i63] = iObjectFieldOffset;
                        i63++;
                    }
                    iObjectFieldOffset3 = iObjectFieldOffset2;
                    i22 = iObjectFieldOffset;
                }
                i19 = i82;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldC4);
                if ((iCharAt11 & 4096) != 0) {
                    iObjectFieldOffset2 = 1048575;
                    i20 = i71;
                    i21 = 0;
                } else {
                    iObjectFieldOffset2 = 1048575;
                    i20 = i71;
                    i21 = 0;
                }
                if (i74 >= 18) {
                    iArr[i63] = iObjectFieldOffset;
                    i63++;
                }
                iObjectFieldOffset3 = iObjectFieldOffset2;
                i22 = iObjectFieldOffset;
            }
            int i90 = i66 + 1;
            iArr2[i66] = i75;
            int i91 = i66 + 2;
            String str2 = str;
            iArr2[i90] = ((iCharAt11 & 512) != 0 ? PKIFailureInfo.duplicateCertReq : 0) | ((iCharAt11 & 256) != 0 ? 268435456 : 0) | ((iCharAt11 & 2048) != 0 ? Integer.MIN_VALUE : 0) | (i74 << 20) | i22;
            i66 += 3;
            iArr2[i91] = (i21 << 20) | iObjectFieldOffset3;
            cls = cls;
            objArr = objArr3;
            i7 = i19;
            str = str2;
            length = i17;
            iArr4 = iArr2;
            i33 = i20;
            i5 = i76;
            i31 = 55296;
        }
        MessageLite messageLite = rawMessageInfo.f12990a;
        rawMessageInfo.c();
        return new MessageSchema(iArr4, objArr2, i3, i6, messageLite, iArr, i8, i62, newInstanceSchema, listFieldSchema, unknownFieldSchema, extensionSchema, mapFieldSchema);
    }

    public static long y(int i2) {
        return i2 & 1048575;
    }

    public static int z(long j2, Object obj) {
        return ((Integer) UnsafeUtil.f13019c.h(j2, obj)).intValue();
    }

    public final void B(int i2, Reader reader, Object obj) {
        if ((536870912 & i2) != 0) {
            UnsafeUtil.o(i2 & 1048575, obj, reader.i());
        } else if (this.g) {
            UnsafeUtil.o(i2 & 1048575, obj, reader.d());
        } else {
            UnsafeUtil.o(i2 & 1048575, obj, reader.b());
        }
    }

    public final void D(int i2, Object obj) {
        int i3 = this.f12971a[i2 + 2];
        long j2 = 1048575 & i3;
        if (j2 == 1048575) {
            return;
        }
        UnsafeUtil.m(obj, j2, (1 << (i3 >>> 20)) | UnsafeUtil.f13019c.f(j2, obj));
    }

    public final void E(int i2, int i3, Object obj) {
        UnsafeUtil.m(obj, this.f12971a[i3 + 2] & 1048575, i2);
    }

    public final void F(Object obj, int i2, MessageLite messageLite) {
        q.putObject(obj, I(i2) & 1048575, messageLite);
        D(i2, obj);
    }

    public final void G(Object obj, int i2, int i3, MessageLite messageLite) {
        q.putObject(obj, I(i3) & 1048575, messageLite);
        E(i2, i3, obj);
    }

    public final int I(int i2) {
        return this.f12971a[i2 + 1];
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:7:0x002b  */
    public final void J(Object obj, Writer writer) {
        Map.Entry entry;
        boolean z;
        int i2;
        boolean z2;
        MessageSchema<T> messageSchema = this;
        boolean z3 = messageSchema.f12975f;
        ExtensionSchema extensionSchema = messageSchema.n;
        if (z3) {
            ((ExtensionSchemaLite) extensionSchema).getClass();
            FieldSet<Object> fieldSet = ((GeneratedMessageLite.ExtendableMessage) obj).extensions;
            if (fieldSet.f12936a.isEmpty()) {
                entry = null;
            } else {
                entry = (Map.Entry) fieldSet.i().next();
            }
        } else {
            entry = null;
        }
        int[] iArr = messageSchema.f12971a;
        int length = iArr.length;
        Unsafe unsafe = q;
        int i3 = 1048575;
        int i4 = 0;
        for (int i5 = 0; i5 < length; i5 += 3) {
            int I = messageSchema.I(i5);
            int i6 = iArr[i5];
            int iH = H(I);
            if (iH <= 17) {
                int i7 = iArr[i5 + 2];
                z = true;
                int i8 = i7 & 1048575;
                if (i8 != i3) {
                    i4 = i8 == 1048575 ? 0 : unsafe.getInt(obj, i8);
                    i3 = i8;
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
            long j2 = I & 1048575;
            switch (iH) {
                case 0:
                    if (messageSchema.p(i5, obj, i3, i4, i2)) {
                        writer.m(UnsafeUtil.f13019c.d(j2, obj), i6);
                    }
                    break;
                case 1:
                    if (messageSchema.p(i5, obj, i3, i4, i2)) {
                        writer.v(UnsafeUtil.f13019c.e(j2, obj), i6);
                    }
                    messageSchema = this;
                    break;
                case 2:
                    if (messageSchema.p(i5, obj, i3, i4, i2)) {
                        writer.w(i6, unsafe.getLong(obj, j2));
                    }
                    messageSchema = this;
                    break;
                case 3:
                    if (messageSchema.p(i5, obj, i3, i4, i2)) {
                        writer.f(i6, unsafe.getLong(obj, j2));
                    }
                    messageSchema = this;
                    break;
                case 4:
                    if (messageSchema.p(i5, obj, i3, i4, i2)) {
                        writer.l(i6, unsafe.getInt(obj, j2));
                    }
                    messageSchema = this;
                    break;
                case 5:
                    if (messageSchema.p(i5, obj, i3, i4, i2)) {
                        writer.r(i6, unsafe.getLong(obj, j2));
                    }
                    messageSchema = this;
                    break;
                case 6:
                    if (messageSchema.p(i5, obj, i3, i4, i2)) {
                        writer.b(i6, unsafe.getInt(obj, j2));
                    }
                    messageSchema = this;
                    break;
                case 7:
                    if (messageSchema.p(i5, obj, i3, i4, i2)) {
                        writer.x(i6, UnsafeUtil.f13019c.c(j2, obj));
                    }
                    messageSchema = this;
                    break;
                case 8:
                    if (messageSchema.p(i5, obj, i3, i4, i2)) {
                        K(i6, unsafe.getObject(obj, j2), writer);
                    }
                    messageSchema = this;
                    break;
                case 9:
                    if (messageSchema.p(i5, obj, i3, i4, i2)) {
                        writer.L(i6, unsafe.getObject(obj, j2), messageSchema.n(i5));
                    }
                    break;
                case 10:
                    if (messageSchema.p(i5, obj, i3, i4, i2)) {
                        writer.K(i6, (ByteString) unsafe.getObject(obj, j2));
                    }
                    messageSchema = this;
                    break;
                case 11:
                    if (messageSchema.p(i5, obj, i3, i4, i2)) {
                        writer.q(i6, unsafe.getInt(obj, j2));
                    }
                    messageSchema = this;
                    break;
                case 12:
                    if (messageSchema.p(i5, obj, i3, i4, i2)) {
                        writer.F(i6, unsafe.getInt(obj, j2));
                    }
                    messageSchema = this;
                    break;
                case 13:
                    if (messageSchema.p(i5, obj, i3, i4, i2)) {
                        writer.y(i6, unsafe.getInt(obj, j2));
                    }
                    messageSchema = this;
                    break;
                case 14:
                    if (messageSchema.p(i5, obj, i3, i4, i2)) {
                        writer.o(i6, unsafe.getLong(obj, j2));
                    }
                    messageSchema = this;
                    break;
                case 15:
                    if (messageSchema.p(i5, obj, i3, i4, i2)) {
                        writer.H(i6, unsafe.getInt(obj, j2));
                    }
                    messageSchema = this;
                    break;
                case 16:
                    if (messageSchema.p(i5, obj, i3, i4, i2)) {
                        writer.p(i6, unsafe.getLong(obj, j2));
                    }
                    messageSchema = this;
                    break;
                case 17:
                    if (messageSchema.p(i5, obj, i3, i4, i2)) {
                        writer.N(i6, unsafe.getObject(obj, j2), messageSchema.n(i5));
                    }
                    break;
                case 18:
                    int i9 = iArr[i5];
                    List list = (List) unsafe.getObject(obj, j2);
                    Class cls = SchemaUtil.f12993a;
                    if (list == null || list.isEmpty()) {
                        z2 = false;
                    } else {
                        z2 = false;
                        writer.i(list, i9, false);
                    }
                    break;
                case 19:
                    int i10 = iArr[i5];
                    List list2 = (List) unsafe.getObject(obj, j2);
                    Class cls2 = SchemaUtil.f12993a;
                    if (list2 != null && !list2.isEmpty()) {
                        writer.G(list2, i10, false);
                    }
                    break;
                case 20:
                    int i11 = iArr[i5];
                    List list3 = (List) unsafe.getObject(obj, j2);
                    Class cls3 = SchemaUtil.f12993a;
                    if (list3 != null && !list3.isEmpty()) {
                        writer.j(list3, i11, false);
                    }
                    break;
                case 21:
                    int i12 = iArr[i5];
                    List list4 = (List) unsafe.getObject(obj, j2);
                    Class cls4 = SchemaUtil.f12993a;
                    if (list4 != null && !list4.isEmpty()) {
                        writer.c(list4, i12, false);
                    }
                    break;
                case 22:
                    int i13 = iArr[i5];
                    List list5 = (List) unsafe.getObject(obj, j2);
                    Class cls5 = SchemaUtil.f12993a;
                    if (list5 != null && !list5.isEmpty()) {
                        writer.h(list5, i13, false);
                    }
                    break;
                case 23:
                    int i14 = iArr[i5];
                    List list6 = (List) unsafe.getObject(obj, j2);
                    Class cls6 = SchemaUtil.f12993a;
                    if (list6 != null && !list6.isEmpty()) {
                        writer.n(list6, i14, false);
                    }
                    break;
                case 24:
                    int i15 = iArr[i5];
                    List list7 = (List) unsafe.getObject(obj, j2);
                    Class cls7 = SchemaUtil.f12993a;
                    if (list7 != null && !list7.isEmpty()) {
                        writer.D(list7, i15, false);
                    }
                    break;
                case 25:
                    int i16 = iArr[i5];
                    List list8 = (List) unsafe.getObject(obj, j2);
                    Class cls8 = SchemaUtil.f12993a;
                    if (list8 != null && !list8.isEmpty()) {
                        writer.C(list8, i16, false);
                    }
                    break;
                case 26:
                    int i17 = iArr[i5];
                    List list9 = (List) unsafe.getObject(obj, j2);
                    Class cls9 = SchemaUtil.f12993a;
                    if (list9 != null && !list9.isEmpty()) {
                        writer.d(i17, list9);
                    }
                    break;
                case 27:
                    int i18 = iArr[i5];
                    List list10 = (List) unsafe.getObject(obj, j2);
                    Schema schemaN = messageSchema.n(i5);
                    Class cls10 = SchemaUtil.f12993a;
                    if (list10 != null && !list10.isEmpty()) {
                        writer.O(i18, list10, schemaN);
                    }
                    break;
                case 28:
                    int i19 = iArr[i5];
                    List list11 = (List) unsafe.getObject(obj, j2);
                    Class cls11 = SchemaUtil.f12993a;
                    if (list11 != null && !list11.isEmpty()) {
                        writer.I(i19, list11);
                    }
                    break;
                case 29:
                    int i20 = iArr[i5];
                    List list12 = (List) unsafe.getObject(obj, j2);
                    Class cls12 = SchemaUtil.f12993a;
                    if (list12 != null && !list12.isEmpty()) {
                        writer.B(list12, i20, false);
                    }
                    break;
                case 30:
                    int i21 = iArr[i5];
                    List list13 = (List) unsafe.getObject(obj, j2);
                    Class cls13 = SchemaUtil.f12993a;
                    if (list13 != null && !list13.isEmpty()) {
                        writer.t(list13, i21, false);
                    }
                    break;
                case 31:
                    int i22 = iArr[i5];
                    List list14 = (List) unsafe.getObject(obj, j2);
                    Class cls14 = SchemaUtil.f12993a;
                    if (list14 != null && !list14.isEmpty()) {
                        writer.k(list14, i22, false);
                    }
                    break;
                case 32:
                    int i23 = iArr[i5];
                    List list15 = (List) unsafe.getObject(obj, j2);
                    Class cls15 = SchemaUtil.f12993a;
                    if (list15 != null && !list15.isEmpty()) {
                        writer.A(list15, i23, false);
                    }
                    break;
                case 33:
                    int i24 = iArr[i5];
                    List list16 = (List) unsafe.getObject(obj, j2);
                    Class cls16 = SchemaUtil.f12993a;
                    if (list16 != null && !list16.isEmpty()) {
                        writer.u(list16, i24, false);
                    }
                    break;
                case 34:
                    int i25 = iArr[i5];
                    List list17 = (List) unsafe.getObject(obj, j2);
                    Class cls17 = SchemaUtil.f12993a;
                    if (list17 != null && !list17.isEmpty()) {
                        writer.g(list17, i25, false);
                    }
                    break;
                case 35:
                    int i26 = iArr[i5];
                    List list18 = (List) unsafe.getObject(obj, j2);
                    Class cls18 = SchemaUtil.f12993a;
                    if (list18 != null && !list18.isEmpty()) {
                        writer.i(list18, i26, true);
                    }
                    break;
                case 36:
                    int i27 = iArr[i5];
                    List list19 = (List) unsafe.getObject(obj, j2);
                    Class cls19 = SchemaUtil.f12993a;
                    if (list19 != null && !list19.isEmpty()) {
                        writer.G(list19, i27, true);
                    }
                    break;
                case 37:
                    int i28 = iArr[i5];
                    List list20 = (List) unsafe.getObject(obj, j2);
                    Class cls20 = SchemaUtil.f12993a;
                    if (list20 != null && !list20.isEmpty()) {
                        writer.j(list20, i28, true);
                    }
                    break;
                case 38:
                    int i29 = iArr[i5];
                    List list21 = (List) unsafe.getObject(obj, j2);
                    Class cls21 = SchemaUtil.f12993a;
                    if (list21 != null && !list21.isEmpty()) {
                        writer.c(list21, i29, true);
                    }
                    break;
                case 39:
                    int i30 = iArr[i5];
                    List list22 = (List) unsafe.getObject(obj, j2);
                    Class cls22 = SchemaUtil.f12993a;
                    if (list22 != null && !list22.isEmpty()) {
                        writer.h(list22, i30, true);
                    }
                    break;
                case 40:
                    int i31 = iArr[i5];
                    List list23 = (List) unsafe.getObject(obj, j2);
                    Class cls23 = SchemaUtil.f12993a;
                    if (list23 != null && !list23.isEmpty()) {
                        writer.n(list23, i31, true);
                    }
                    break;
                case 41:
                    int i32 = iArr[i5];
                    List list24 = (List) unsafe.getObject(obj, j2);
                    Class cls24 = SchemaUtil.f12993a;
                    if (list24 != null && !list24.isEmpty()) {
                        writer.D(list24, i32, true);
                    }
                    break;
                case EACTags.CURRENCY_CODE /* 42 */:
                    int i33 = iArr[i5];
                    List list25 = (List) unsafe.getObject(obj, j2);
                    Class cls25 = SchemaUtil.f12993a;
                    if (list25 != null && !list25.isEmpty()) {
                        writer.C(list25, i33, true);
                    }
                    break;
                case EACTags.DATE_OF_BIRTH /* 43 */:
                    int i34 = iArr[i5];
                    List list26 = (List) unsafe.getObject(obj, j2);
                    Class cls26 = SchemaUtil.f12993a;
                    if (list26 != null && !list26.isEmpty()) {
                        writer.B(list26, i34, true);
                    }
                    break;
                case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                    int i35 = iArr[i5];
                    List list27 = (List) unsafe.getObject(obj, j2);
                    Class cls27 = SchemaUtil.f12993a;
                    if (list27 != null && !list27.isEmpty()) {
                        writer.t(list27, i35, true);
                    }
                    break;
                case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                    int i36 = iArr[i5];
                    List list28 = (List) unsafe.getObject(obj, j2);
                    Class cls28 = SchemaUtil.f12993a;
                    if (list28 != null && !list28.isEmpty()) {
                        writer.k(list28, i36, true);
                    }
                    break;
                case 46:
                    int i37 = iArr[i5];
                    List list29 = (List) unsafe.getObject(obj, j2);
                    Class cls29 = SchemaUtil.f12993a;
                    if (list29 != null && !list29.isEmpty()) {
                        writer.A(list29, i37, true);
                    }
                    break;
                case EACTags.PIN_USAGE_POLICY /* 47 */:
                    int i38 = iArr[i5];
                    List list30 = (List) unsafe.getObject(obj, j2);
                    Class cls30 = SchemaUtil.f12993a;
                    if (list30 != null && !list30.isEmpty()) {
                        writer.u(list30, i38, true);
                    }
                    break;
                case 48:
                    int i39 = iArr[i5];
                    List list31 = (List) unsafe.getObject(obj, j2);
                    Class cls31 = SchemaUtil.f12993a;
                    if (list31 != null && !list31.isEmpty()) {
                        writer.g(list31, i39, z);
                    }
                    break;
                case 49:
                    int i40 = iArr[i5];
                    List list32 = (List) unsafe.getObject(obj, j2);
                    Schema schemaN2 = messageSchema.n(i5);
                    Class cls32 = SchemaUtil.f12993a;
                    if (list32 != null && !list32.isEmpty()) {
                        writer.J(i40, list32, schemaN2);
                    }
                    break;
                case 50:
                    Object object = unsafe.getObject(obj, j2);
                    if (object != null) {
                        Object objM = messageSchema.m(i5);
                        MapFieldSchema mapFieldSchema = messageSchema.o;
                        writer.M(i6, mapFieldSchema.b(objM), mapFieldSchema.d(object));
                    }
                    break;
                case EACTags.TRANSACTION_DATE /* 51 */:
                    if (messageSchema.r(i6, i5, obj)) {
                        writer.m(((Double) UnsafeUtil.f13019c.h(j2, obj)).doubleValue(), i6);
                    }
                    break;
                case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                    if (messageSchema.r(i6, i5, obj)) {
                        writer.v(((Float) UnsafeUtil.f13019c.h(j2, obj)).floatValue(), i6);
                    }
                    break;
                case EACTags.SEX /* 53 */:
                    if (messageSchema.r(i6, i5, obj)) {
                        writer.w(i6, A(j2, obj));
                    }
                    break;
                case EACTags.CURRENCY_EXPONENT /* 54 */:
                    if (messageSchema.r(i6, i5, obj)) {
                        writer.f(i6, A(j2, obj));
                    }
                    break;
                case 55:
                    if (messageSchema.r(i6, i5, obj)) {
                        writer.l(i6, z(j2, obj));
                    }
                    break;
                case 56:
                    if (messageSchema.r(i6, i5, obj)) {
                        writer.r(i6, A(j2, obj));
                    }
                    break;
                case 57:
                    if (messageSchema.r(i6, i5, obj)) {
                        writer.b(i6, z(j2, obj));
                    }
                    break;
                case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
                    if (messageSchema.r(i6, i5, obj)) {
                        writer.x(i6, ((Boolean) UnsafeUtil.f13019c.h(j2, obj)).booleanValue());
                    }
                    break;
                case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                    if (messageSchema.r(i6, i5, obj)) {
                        K(i6, unsafe.getObject(obj, j2), writer);
                    }
                    break;
                case 60:
                    if (messageSchema.r(i6, i5, obj)) {
                        writer.L(i6, unsafe.getObject(obj, j2), messageSchema.n(i5));
                    }
                    break;
                case 61:
                    if (messageSchema.r(i6, i5, obj)) {
                        writer.K(i6, (ByteString) unsafe.getObject(obj, j2));
                    }
                    break;
                case 62:
                    if (messageSchema.r(i6, i5, obj)) {
                        writer.q(i6, z(j2, obj));
                    }
                    break;
                case 63:
                    if (messageSchema.r(i6, i5, obj)) {
                        writer.F(i6, z(j2, obj));
                    }
                    break;
                case 64:
                    if (messageSchema.r(i6, i5, obj)) {
                        writer.y(i6, z(j2, obj));
                    }
                    break;
                case EACTags.ELEMENT_LIST /* 65 */:
                    if (messageSchema.r(i6, i5, obj)) {
                        writer.o(i6, A(j2, obj));
                    }
                    break;
                case EACTags.ADDRESS /* 66 */:
                    if (messageSchema.r(i6, i5, obj)) {
                        writer.H(i6, z(j2, obj));
                    }
                    break;
                case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                    if (messageSchema.r(i6, i5, obj)) {
                        writer.p(i6, A(j2, obj));
                    }
                    break;
                case EACTags.APPLICATION_IMAGE /* 68 */:
                    if (messageSchema.r(i6, i5, obj)) {
                        writer.N(i6, unsafe.getObject(obj, j2), messageSchema.n(i5));
                    }
                    break;
                default:
                    break;
            }
        }
        if (entry != null) {
            ((ExtensionSchemaLite) extensionSchema).getClass();
            tr.x(entry.getKey());
            throw null;
        }
        ((UnknownFieldSetLiteSchema) messageSchema.m).getClass();
        ((GeneratedMessageLite) obj).unknownFields.e(writer);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:11:0x0025  */
    @Override // androidx.datastore.preferences.protobuf.Schema
    public final void a(Object obj, Object obj2) {
        Object obj3;
        if (!q(obj)) {
            md.n(cj.i(obj, "Mutating immutable message: "));
            return;
        }
        obj2.getClass();
        int i2 = 0;
        while (true) {
            int[] iArr = this.f12971a;
            if (i2 >= iArr.length) {
                Object obj4 = obj;
                SchemaUtil.l(this.m, obj4, obj2);
                if (this.f12975f) {
                    SchemaUtil.k(this.n, obj4, obj2);
                    return;
                }
                return;
            }
            int I = I(i2);
            long j2 = 1048575 & I;
            int i3 = iArr[i2];
            switch (H(I)) {
                case 0:
                    if (!o(i2, obj2)) {
                        obj3 = obj;
                    } else {
                        UnsafeUtil.MemoryAccessor memoryAccessor = UnsafeUtil.f13019c;
                        obj3 = obj;
                        memoryAccessor.l(obj3, j2, memoryAccessor.d(j2, obj2));
                        D(i2, obj3);
                    }
                    break;
                case 1:
                    if (o(i2, obj2)) {
                        UnsafeUtil.MemoryAccessor memoryAccessor2 = UnsafeUtil.f13019c;
                        memoryAccessor2.m(obj, j2, memoryAccessor2.e(j2, obj2));
                        D(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 2:
                    if (o(i2, obj2)) {
                        UnsafeUtil.n(j2, obj, UnsafeUtil.f13019c.g(j2, obj2));
                        D(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 3:
                    if (o(i2, obj2)) {
                        UnsafeUtil.n(j2, obj, UnsafeUtil.f13019c.g(j2, obj2));
                        D(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 4:
                    if (o(i2, obj2)) {
                        UnsafeUtil.m(obj, j2, UnsafeUtil.f13019c.f(j2, obj2));
                        D(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 5:
                    if (o(i2, obj2)) {
                        UnsafeUtil.n(j2, obj, UnsafeUtil.f13019c.g(j2, obj2));
                        D(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 6:
                    if (o(i2, obj2)) {
                        UnsafeUtil.m(obj, j2, UnsafeUtil.f13019c.f(j2, obj2));
                        D(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 7:
                    if (o(i2, obj2)) {
                        UnsafeUtil.MemoryAccessor memoryAccessor3 = UnsafeUtil.f13019c;
                        memoryAccessor3.j(obj, j2, memoryAccessor3.c(j2, obj2));
                        D(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 8:
                    if (o(i2, obj2)) {
                        UnsafeUtil.o(j2, obj, UnsafeUtil.f13019c.h(j2, obj2));
                        D(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 9:
                    t(obj, obj2, i2);
                    obj3 = obj;
                    break;
                case 10:
                    if (o(i2, obj2)) {
                        UnsafeUtil.o(j2, obj, UnsafeUtil.f13019c.h(j2, obj2));
                        D(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 11:
                    if (o(i2, obj2)) {
                        UnsafeUtil.m(obj, j2, UnsafeUtil.f13019c.f(j2, obj2));
                        D(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 12:
                    if (o(i2, obj2)) {
                        UnsafeUtil.m(obj, j2, UnsafeUtil.f13019c.f(j2, obj2));
                        D(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 13:
                    if (o(i2, obj2)) {
                        UnsafeUtil.m(obj, j2, UnsafeUtil.f13019c.f(j2, obj2));
                        D(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 14:
                    if (o(i2, obj2)) {
                        UnsafeUtil.n(j2, obj, UnsafeUtil.f13019c.g(j2, obj2));
                        D(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 15:
                    if (o(i2, obj2)) {
                        UnsafeUtil.m(obj, j2, UnsafeUtil.f13019c.f(j2, obj2));
                        D(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 16:
                    if (o(i2, obj2)) {
                        UnsafeUtil.n(j2, obj, UnsafeUtil.f13019c.g(j2, obj2));
                        D(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 17:
                    t(obj, obj2, i2);
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
                    this.l.b(j2, obj, obj2);
                    obj3 = obj;
                    break;
                case 50:
                    Class cls = SchemaUtil.f12993a;
                    UnsafeUtil.MemoryAccessor memoryAccessor4 = UnsafeUtil.f13019c;
                    UnsafeUtil.o(j2, obj, this.o.a(memoryAccessor4.h(j2, obj), memoryAccessor4.h(j2, obj2)));
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
                    if (r(i3, i2, obj2)) {
                        UnsafeUtil.o(j2, obj, UnsafeUtil.f13019c.h(j2, obj2));
                        E(i3, i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 60:
                    u(obj, obj2, i2);
                    obj3 = obj;
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case EACTags.ELEMENT_LIST /* 65 */:
                case EACTags.ADDRESS /* 66 */:
                case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                    if (r(i3, i2, obj2)) {
                        UnsafeUtil.o(j2, obj, UnsafeUtil.f13019c.h(j2, obj2));
                        E(i3, i2, obj);
                    }
                    obj3 = obj;
                    break;
                case EACTags.APPLICATION_IMAGE /* 68 */:
                    u(obj, obj2, i2);
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

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final Object b() {
        return this.f12979k.a(this.f12974e);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x006c  */
    /* JADX WARN: Code duplicated, block: B:27:0x0072  */
    /* JADX WARN: Code duplicated, block: B:43:0x007f A[SYNTHETIC] */
    @Override // androidx.datastore.preferences.protobuf.Schema
    public final void c(Object obj) {
        if (q(obj)) {
            if (obj instanceof GeneratedMessageLite) {
                GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) obj;
                generatedMessageLite.l(Integer.MAX_VALUE);
                generatedMessageLite.memoizedHashCode = 0;
                generatedMessageLite.u();
            }
            int[] iArr = this.f12971a;
            int length = iArr.length;
            for (int i2 = 0; i2 < length; i2 += 3) {
                int I = I(i2);
                long j2 = 1048575 & I;
                int iH = H(I);
                if (iH != 9) {
                    if (iH != 60 && iH != 68) {
                        switch (iH) {
                            case 17:
                                if (o(i2, obj)) {
                                    n(i2).c(q.getObject(obj, j2));
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
                                this.l.c(j2, obj);
                                break;
                            case 50:
                                Unsafe unsafe = q;
                                Object object = unsafe.getObject(obj, j2);
                                if (object != null) {
                                    unsafe.putObject(obj, j2, this.o.e(object));
                                }
                                break;
                        }
                    } else if (r(iArr[i2], i2, obj)) {
                        n(i2).c(q.getObject(obj, j2));
                    }
                } else if (o(i2, obj)) {
                    n(i2).c(q.getObject(obj, j2));
                }
            }
            ((UnknownFieldSetLiteSchema) this.m).getClass();
            UnknownFieldSetLite unknownFieldSetLite = ((GeneratedMessageLite) obj).unknownFields;
            if (unknownFieldSetLite.f13016e) {
                unknownFieldSetLite.f13016e = false;
            }
            if (this.f12975f) {
                ((ExtensionSchemaLite) this.n).getClass();
                ((GeneratedMessageLite.ExtendableMessage) obj).extensions.j();
            }
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final boolean d(Object obj) {
        int i2;
        int i3;
        int i4 = 1048575;
        int i5 = 0;
        int i6 = 0;
        while (i6 < this.f12977i) {
            int i7 = this.f12976h[i6];
            int[] iArr = this.f12971a;
            int i8 = iArr[i7];
            int I = I(i7);
            int i9 = iArr[i7 + 2];
            int i10 = i9 & 1048575;
            int i11 = 1 << (i9 >>> 20);
            if (i10 != i4) {
                if (i10 != 1048575) {
                    i5 = q.getInt(obj, i10);
                }
                i3 = i5;
                i2 = i10;
            } else {
                int i12 = i5;
                i2 = i4;
                i3 = i12;
            }
            if ((268435456 & I) == 0 || p(i7, obj, i2, i3, i11)) {
                int iH = H(I);
                if (iH == 9 || iH == 17) {
                    if (p(i7, obj, i2, i3, i11)) {
                        if (!n(i7).d(UnsafeUtil.f13019c.h(I & 1048575, obj))) {
                        }
                    } else {
                        continue;
                    }
                    i6++;
                    i4 = i2;
                    i5 = i3;
                } else {
                    if (iH != 27) {
                        if (iH == 60 || iH == 68) {
                            if (r(i8, i7, obj)) {
                                if (!n(i7).d(UnsafeUtil.f13019c.h(I & 1048575, obj))) {
                                }
                            } else {
                                continue;
                            }
                            i6++;
                            i4 = i2;
                            i5 = i3;
                        } else if (iH != 49) {
                            if (iH != 50) {
                                continue;
                            } else {
                                Object objH = UnsafeUtil.f13019c.h(I & 1048575, obj);
                                MapFieldSchema mapFieldSchema = this.o;
                                MapFieldLite mapFieldLiteD = mapFieldSchema.d(objH);
                                if (!mapFieldLiteD.isEmpty() && mapFieldSchema.b(m(i7)).f12965c.a() == WireFormat$JavaType.MESSAGE) {
                                    Schema schemaA = null;
                                    for (Object obj2 : mapFieldLiteD.values()) {
                                        if (schemaA == null) {
                                            schemaA = Protobuf.f12985c.a(obj2.getClass());
                                        }
                                        if (!schemaA.d(obj2)) {
                                        }
                                    }
                                }
                            }
                            i6++;
                            i4 = i2;
                            i5 = i3;
                        }
                    }
                    List list = (List) UnsafeUtil.f13019c.h(I & 1048575, obj);
                    if (list.isEmpty()) {
                        continue;
                    } else {
                        Schema schemaN = n(i7);
                        for (int i13 = 0; i13 < list.size(); i13++) {
                            if (schemaN.d(list.get(i13))) {
                            }
                        }
                    }
                    i6++;
                    i4 = i2;
                    i5 = i3;
                }
            }
            return false;
        }
        if (this.f12975f) {
            ((ExtensionSchemaLite) this.n).getClass();
            if (!((GeneratedMessageLite.ExtendableMessage) obj).extensions.g()) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:143:0x036a  */
    @Override // androidx.datastore.preferences.protobuf.Schema
    public final int e(AbstractMessageLite abstractMessageLite) {
        int i2;
        int iE;
        int iE2;
        int iG;
        int iE3;
        int iG2;
        int iE4;
        int iE5;
        int iE6;
        int iK;
        int iF;
        int iE7;
        int iC;
        int iE8;
        int iK2;
        int iC2;
        int iE9;
        int size;
        int i3;
        int iE10;
        int iE11;
        int size2;
        int iE12;
        int iF2;
        int iK3;
        int iE13;
        int iE14;
        int iE15;
        int iG3;
        int iE16;
        int iG4;
        int iE17;
        MessageSchema<T> messageSchema = this;
        Unsafe unsafe = q;
        int i4 = 0;
        int i5 = 0;
        int iE18 = 0;
        int i6 = 1048575;
        while (true) {
            int[] iArr = messageSchema.f12971a;
            if (i4 >= iArr.length) {
                ((UnknownFieldSetLiteSchema) messageSchema.m).getClass();
                int iB = ((GeneratedMessageLite) abstractMessageLite).unknownFields.b() + iE18;
                if (!messageSchema.f12975f) {
                    return iB;
                }
                ((ExtensionSchemaLite) messageSchema.n).getClass();
                SmallSortedMap.AnonymousClass1 anonymousClass1 = ((GeneratedMessageLite.ExtendableMessage) abstractMessageLite).extensions.f12936a;
                int size3 = anonymousClass1.f12997b.size();
                int iD = 0;
                for (int i7 = 0; i7 < size3; i7++) {
                    Map.Entry entryD = anonymousClass1.d(i7);
                    iD += FieldSet.d((FieldSet.FieldDescriptorLite) entryD.getKey(), entryD.getValue());
                }
                for (Map.Entry entry : anonymousClass1.e()) {
                    iD += FieldSet.d((FieldSet.FieldDescriptorLite) entry.getKey(), entry.getValue());
                }
                return iB + iD;
            }
            int I = messageSchema.I(i4);
            int iH = H(I);
            int i8 = iArr[i4];
            int i9 = iArr[i4 + 2];
            int i10 = i9 & 1048575;
            if (iH <= 17) {
                if (i10 != i6) {
                    i5 = i10 == 1048575 ? 0 : unsafe.getInt(abstractMessageLite, i10);
                    i6 = i10;
                }
                i2 = 1 << (i9 >>> 20);
            } else {
                i2 = 0;
            }
            long j2 = I & 1048575;
            if (iH >= FieldType.DOUBLE_LIST_PACKED.a()) {
                FieldType.SINT64_LIST_PACKED.a();
            }
            switch (iH) {
                case 0:
                    if (messageSchema.p(i4, abstractMessageLite, i6, i5, i2)) {
                        iE18 += CodedOutputStream.e(i8) + 8;
                    }
                    break;
                case 1:
                    if (messageSchema.p(i4, abstractMessageLite, i6, i5, i2)) {
                        iE = CodedOutputStream.e(i8);
                        iE5 = iE + 4;
                        iE18 += iE5;
                    }
                    messageSchema = this;
                    break;
                case 2:
                    if (messageSchema.p(i4, abstractMessageLite, i6, i5, i2)) {
                        long j3 = unsafe.getLong(abstractMessageLite, j2);
                        iE2 = CodedOutputStream.e(i8);
                        iG = CodedOutputStream.g(j3);
                        iE18 += iG + iE2;
                    }
                    messageSchema = this;
                    break;
                case 3:
                    if (messageSchema.p(i4, abstractMessageLite, i6, i5, i2)) {
                        long j4 = unsafe.getLong(abstractMessageLite, j2);
                        iE2 = CodedOutputStream.e(i8);
                        iG = CodedOutputStream.g(j4);
                        iE18 += iG + iE2;
                    }
                    messageSchema = this;
                    break;
                case 4:
                    if (messageSchema.p(i4, abstractMessageLite, i6, i5, i2)) {
                        int i11 = unsafe.getInt(abstractMessageLite, j2);
                        iE3 = CodedOutputStream.e(i8);
                        iG2 = CodedOutputStream.g(i11);
                        iE5 = iG2 + iE3;
                        iE18 += iE5;
                    }
                    messageSchema = this;
                    break;
                case 5:
                    if (messageSchema.p(i4, abstractMessageLite, i6, i5, i2)) {
                        iE4 = CodedOutputStream.e(i8);
                        iE5 = iE4 + 8;
                        iE18 += iE5;
                    }
                    messageSchema = this;
                    break;
                case 6:
                    if (messageSchema.p(i4, abstractMessageLite, i6, i5, i2)) {
                        iE = CodedOutputStream.e(i8);
                        iE5 = iE + 4;
                        iE18 += iE5;
                    }
                    messageSchema = this;
                    break;
                case 7:
                    if (messageSchema.p(i4, abstractMessageLite, i6, i5, i2)) {
                        iE5 = CodedOutputStream.e(i8) + 1;
                        iE18 += iE5;
                    }
                    messageSchema = this;
                    break;
                case 8:
                    if (messageSchema.p(i4, abstractMessageLite, i6, i5, i2)) {
                        Object object = unsafe.getObject(abstractMessageLite, j2);
                        iE18 = (object instanceof ByteString ? CodedOutputStream.b(i8, (ByteString) object) : CodedOutputStream.d((String) object) + CodedOutputStream.e(i8)) + iE18;
                    }
                    messageSchema = this;
                    break;
                case 9:
                    if (messageSchema.p(i4, abstractMessageLite, i6, i5, i2)) {
                        Object object2 = unsafe.getObject(abstractMessageLite, j2);
                        Schema schemaN = messageSchema.n(i4);
                        Class cls = SchemaUtil.f12993a;
                        if (object2 instanceof LazyFieldLite) {
                            iE7 = CodedOutputStream.e(i8);
                            iC = CodedOutputStream.c((LazyFieldLite) object2);
                            iC2 = iC + iE7;
                            iE18 += iC2;
                        } else {
                            iE6 = CodedOutputStream.e(i8);
                            iK = ((AbstractMessageLite) ((MessageLite) object2)).k(schemaN);
                            iF = CodedOutputStream.f(iK);
                            iC2 = iF + iK + iE6;
                            iE18 += iC2;
                        }
                    }
                    break;
                case 10:
                    if (messageSchema.p(i4, abstractMessageLite, i6, i5, i2)) {
                        iE5 = CodedOutputStream.b(i8, (ByteString) unsafe.getObject(abstractMessageLite, j2));
                        iE18 += iE5;
                    }
                    messageSchema = this;
                    break;
                case 11:
                    if (messageSchema.p(i4, abstractMessageLite, i6, i5, i2)) {
                        int i12 = unsafe.getInt(abstractMessageLite, j2);
                        iE3 = CodedOutputStream.e(i8);
                        iG2 = CodedOutputStream.f(i12);
                        iE5 = iG2 + iE3;
                        iE18 += iE5;
                    }
                    messageSchema = this;
                    break;
                case 12:
                    if (messageSchema.p(i4, abstractMessageLite, i6, i5, i2)) {
                        int i13 = unsafe.getInt(abstractMessageLite, j2);
                        iE3 = CodedOutputStream.e(i8);
                        iG2 = CodedOutputStream.g(i13);
                        iE5 = iG2 + iE3;
                        iE18 += iE5;
                    }
                    messageSchema = this;
                    break;
                case 13:
                    if (messageSchema.p(i4, abstractMessageLite, i6, i5, i2)) {
                        iE = CodedOutputStream.e(i8);
                        iE5 = iE + 4;
                        iE18 += iE5;
                    }
                    messageSchema = this;
                    break;
                case 14:
                    if (messageSchema.p(i4, abstractMessageLite, i6, i5, i2)) {
                        iE4 = CodedOutputStream.e(i8);
                        iE5 = iE4 + 8;
                        iE18 += iE5;
                    }
                    messageSchema = this;
                    break;
                case 15:
                    if (messageSchema.p(i4, abstractMessageLite, i6, i5, i2)) {
                        int i14 = unsafe.getInt(abstractMessageLite, j2);
                        iE3 = CodedOutputStream.e(i8);
                        iG2 = CodedOutputStream.f((i14 >> 31) ^ (i14 << 1));
                        iE5 = iG2 + iE3;
                        iE18 += iE5;
                    }
                    messageSchema = this;
                    break;
                case 16:
                    if (messageSchema.p(i4, abstractMessageLite, i6, i5, i2)) {
                        long j5 = unsafe.getLong(abstractMessageLite, j2);
                        iE2 = CodedOutputStream.e(i8);
                        iG = CodedOutputStream.g((j5 << 1) ^ (j5 >> 63));
                        iE18 += iG + iE2;
                    }
                    messageSchema = this;
                    break;
                case 17:
                    if (messageSchema.p(i4, abstractMessageLite, i6, i5, i2)) {
                        MessageLite messageLite = (MessageLite) unsafe.getObject(abstractMessageLite, j2);
                        Schema schemaN2 = messageSchema.n(i4);
                        iE8 = CodedOutputStream.e(i8) * 2;
                        iK2 = ((AbstractMessageLite) messageLite).k(schemaN2);
                        iE17 = iK2 + iE8;
                        iE18 += iE17;
                    }
                    break;
                case 18:
                    iC2 = SchemaUtil.c(i8, (List) unsafe.getObject(abstractMessageLite, j2));
                    iE18 += iC2;
                    break;
                case 19:
                    iC2 = SchemaUtil.b(i8, (List) unsafe.getObject(abstractMessageLite, j2));
                    iE18 += iC2;
                    break;
                case 20:
                    List list = (List) unsafe.getObject(abstractMessageLite, j2);
                    Class cls2 = SchemaUtil.f12993a;
                    if (list.size() == 0) {
                        iE9 = 0;
                    } else {
                        iE9 = (CodedOutputStream.e(i8) * list.size()) + SchemaUtil.e(list);
                    }
                    iE18 += iE9;
                    break;
                case 21:
                    List list2 = (List) unsafe.getObject(abstractMessageLite, j2);
                    Class cls3 = SchemaUtil.f12993a;
                    size = list2.size();
                    if (size == 0) {
                        iE9 = 0;
                    } else {
                        i3 = SchemaUtil.i(list2);
                        iE10 = CodedOutputStream.e(i8);
                        iE9 = (iE10 * size) + i3;
                    }
                    iE18 += iE9;
                    break;
                case 22:
                    List list3 = (List) unsafe.getObject(abstractMessageLite, j2);
                    Class cls4 = SchemaUtil.f12993a;
                    size = list3.size();
                    if (size == 0) {
                        iE9 = 0;
                    } else {
                        i3 = SchemaUtil.d(list3);
                        iE10 = CodedOutputStream.e(i8);
                        iE9 = (iE10 * size) + i3;
                    }
                    iE18 += iE9;
                    break;
                case 23:
                    iC2 = SchemaUtil.c(i8, (List) unsafe.getObject(abstractMessageLite, j2));
                    iE18 += iC2;
                    break;
                case 24:
                    iC2 = SchemaUtil.b(i8, (List) unsafe.getObject(abstractMessageLite, j2));
                    iE18 += iC2;
                    break;
                case 25:
                    List list4 = (List) unsafe.getObject(abstractMessageLite, j2);
                    Class cls5 = SchemaUtil.f12993a;
                    int size4 = list4.size();
                    iE18 += size4 == 0 ? 0 : (CodedOutputStream.e(i8) + 1) * size4;
                    break;
                case 26:
                    List list5 = (List) unsafe.getObject(abstractMessageLite, j2);
                    Class cls6 = SchemaUtil.f12993a;
                    int size5 = list5.size();
                    if (size5 == 0) {
                        iE9 = 0;
                    } else {
                        iE9 = CodedOutputStream.e(i8) * size5;
                        if (list5 instanceof LazyStringList) {
                            LazyStringList lazyStringList = (LazyStringList) list5;
                            for (int i15 = 0; i15 < size5; i15++) {
                                Object objM0 = lazyStringList.M0();
                                if (objM0 instanceof ByteString) {
                                    int size6 = ((ByteString) objM0).size();
                                    iE9 = CodedOutputStream.f(size6) + size6 + iE9;
                                } else {
                                    iE9 = CodedOutputStream.d((String) objM0) + iE9;
                                }
                            }
                        } else {
                            for (int i16 = 0; i16 < size5; i16++) {
                                Object obj = list5.get(i16);
                                if (obj instanceof ByteString) {
                                    int size7 = ((ByteString) obj).size();
                                    iE9 = CodedOutputStream.f(size7) + size7 + iE9;
                                } else {
                                    iE9 = CodedOutputStream.d((String) obj) + iE9;
                                }
                            }
                        }
                    }
                    iE18 += iE9;
                    break;
                case 27:
                    List list6 = (List) unsafe.getObject(abstractMessageLite, j2);
                    Schema schemaN3 = messageSchema.n(i4);
                    Class cls7 = SchemaUtil.f12993a;
                    int size8 = list6.size();
                    if (size8 == 0) {
                        iE11 = 0;
                    } else {
                        iE11 = CodedOutputStream.e(i8) * size8;
                        for (int i17 = 0; i17 < size8; i17++) {
                            Object obj2 = list6.get(i17);
                            if (obj2 instanceof LazyFieldLite) {
                                iE11 = CodedOutputStream.c((LazyFieldLite) obj2) + iE11;
                            } else {
                                int iK4 = ((AbstractMessageLite) ((MessageLite) obj2)).k(schemaN3);
                                iE11 = CodedOutputStream.f(iK4) + iK4 + iE11;
                            }
                        }
                    }
                    iE18 += iE11;
                    break;
                case 28:
                    List list7 = (List) unsafe.getObject(abstractMessageLite, j2);
                    Class cls8 = SchemaUtil.f12993a;
                    int size9 = list7.size();
                    if (size9 == 0) {
                        iE9 = 0;
                    } else {
                        iE9 = CodedOutputStream.e(i8) * size9;
                        for (int i18 = 0; i18 < list7.size(); i18++) {
                            int size10 = ((ByteString) list7.get(i18)).size();
                            iE9 += CodedOutputStream.f(size10) + size10;
                        }
                    }
                    iE18 += iE9;
                    break;
                case 29:
                    List list8 = (List) unsafe.getObject(abstractMessageLite, j2);
                    Class cls9 = SchemaUtil.f12993a;
                    size = list8.size();
                    if (size == 0) {
                        iE9 = 0;
                    } else {
                        i3 = SchemaUtil.h(list8);
                        iE10 = CodedOutputStream.e(i8);
                        iE9 = (iE10 * size) + i3;
                    }
                    iE18 += iE9;
                    break;
                case 30:
                    List list9 = (List) unsafe.getObject(abstractMessageLite, j2);
                    Class cls10 = SchemaUtil.f12993a;
                    size = list9.size();
                    if (size == 0) {
                        iE9 = 0;
                    } else {
                        i3 = SchemaUtil.a(list9);
                        iE10 = CodedOutputStream.e(i8);
                        iE9 = (iE10 * size) + i3;
                    }
                    iE18 += iE9;
                    break;
                case 31:
                    iC2 = SchemaUtil.b(i8, (List) unsafe.getObject(abstractMessageLite, j2));
                    iE18 += iC2;
                    break;
                case 32:
                    iC2 = SchemaUtil.c(i8, (List) unsafe.getObject(abstractMessageLite, j2));
                    iE18 += iC2;
                    break;
                case 33:
                    List list10 = (List) unsafe.getObject(abstractMessageLite, j2);
                    Class cls11 = SchemaUtil.f12993a;
                    size = list10.size();
                    if (size == 0) {
                        iE9 = 0;
                    } else {
                        i3 = SchemaUtil.f(list10);
                        iE10 = CodedOutputStream.e(i8);
                        iE9 = (iE10 * size) + i3;
                    }
                    iE18 += iE9;
                    break;
                case 34:
                    List list11 = (List) unsafe.getObject(abstractMessageLite, j2);
                    Class cls12 = SchemaUtil.f12993a;
                    size = list11.size();
                    if (size == 0) {
                        iE9 = 0;
                    } else {
                        i3 = SchemaUtil.g(list11);
                        iE10 = CodedOutputStream.e(i8);
                        iE9 = (iE10 * size) + i3;
                    }
                    iE18 += iE9;
                    break;
                case 35:
                    List list12 = (List) unsafe.getObject(abstractMessageLite, j2);
                    Class cls13 = SchemaUtil.f12993a;
                    size2 = list12.size() * 8;
                    if (size2 > 0) {
                        iE12 = CodedOutputStream.e(i8);
                        iF2 = CodedOutputStream.f(size2);
                        iE18 += iF2 + iE12 + size2;
                    }
                    break;
                case 36:
                    List list13 = (List) unsafe.getObject(abstractMessageLite, j2);
                    Class cls14 = SchemaUtil.f12993a;
                    size2 = list13.size() * 4;
                    if (size2 > 0) {
                        iE12 = CodedOutputStream.e(i8);
                        iF2 = CodedOutputStream.f(size2);
                        iE18 += iF2 + iE12 + size2;
                    }
                    break;
                case 37:
                    size2 = SchemaUtil.e((List) unsafe.getObject(abstractMessageLite, j2));
                    if (size2 > 0) {
                        iE12 = CodedOutputStream.e(i8);
                        iF2 = CodedOutputStream.f(size2);
                        iE18 += iF2 + iE12 + size2;
                    }
                    break;
                case 38:
                    size2 = SchemaUtil.i((List) unsafe.getObject(abstractMessageLite, j2));
                    if (size2 > 0) {
                        iE12 = CodedOutputStream.e(i8);
                        iF2 = CodedOutputStream.f(size2);
                        iE18 += iF2 + iE12 + size2;
                    }
                    break;
                case 39:
                    size2 = SchemaUtil.d((List) unsafe.getObject(abstractMessageLite, j2));
                    if (size2 > 0) {
                        iE12 = CodedOutputStream.e(i8);
                        iF2 = CodedOutputStream.f(size2);
                        iE18 += iF2 + iE12 + size2;
                    }
                    break;
                case 40:
                    List list14 = (List) unsafe.getObject(abstractMessageLite, j2);
                    Class cls15 = SchemaUtil.f12993a;
                    size2 = list14.size() * 8;
                    if (size2 > 0) {
                        iE12 = CodedOutputStream.e(i8);
                        iF2 = CodedOutputStream.f(size2);
                        iE18 += iF2 + iE12 + size2;
                    }
                    break;
                case 41:
                    List list15 = (List) unsafe.getObject(abstractMessageLite, j2);
                    Class cls16 = SchemaUtil.f12993a;
                    size2 = list15.size() * 4;
                    if (size2 > 0) {
                        iE12 = CodedOutputStream.e(i8);
                        iF2 = CodedOutputStream.f(size2);
                        iE18 += iF2 + iE12 + size2;
                    }
                    break;
                case EACTags.CURRENCY_CODE /* 42 */:
                    List list16 = (List) unsafe.getObject(abstractMessageLite, j2);
                    Class cls17 = SchemaUtil.f12993a;
                    size2 = list16.size();
                    if (size2 > 0) {
                        iE12 = CodedOutputStream.e(i8);
                        iF2 = CodedOutputStream.f(size2);
                        iE18 += iF2 + iE12 + size2;
                    }
                    break;
                case EACTags.DATE_OF_BIRTH /* 43 */:
                    size2 = SchemaUtil.h((List) unsafe.getObject(abstractMessageLite, j2));
                    if (size2 > 0) {
                        iE12 = CodedOutputStream.e(i8);
                        iF2 = CodedOutputStream.f(size2);
                        iE18 += iF2 + iE12 + size2;
                    }
                    break;
                case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                    size2 = SchemaUtil.a((List) unsafe.getObject(abstractMessageLite, j2));
                    if (size2 > 0) {
                        iE12 = CodedOutputStream.e(i8);
                        iF2 = CodedOutputStream.f(size2);
                        iE18 += iF2 + iE12 + size2;
                    }
                    break;
                case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                    List list17 = (List) unsafe.getObject(abstractMessageLite, j2);
                    Class cls18 = SchemaUtil.f12993a;
                    size2 = list17.size() * 4;
                    if (size2 > 0) {
                        iE12 = CodedOutputStream.e(i8);
                        iF2 = CodedOutputStream.f(size2);
                        iE18 += iF2 + iE12 + size2;
                    }
                    break;
                case 46:
                    List list18 = (List) unsafe.getObject(abstractMessageLite, j2);
                    Class cls19 = SchemaUtil.f12993a;
                    size2 = list18.size() * 8;
                    if (size2 > 0) {
                        iE12 = CodedOutputStream.e(i8);
                        iF2 = CodedOutputStream.f(size2);
                        iE18 += iF2 + iE12 + size2;
                    }
                    break;
                case EACTags.PIN_USAGE_POLICY /* 47 */:
                    size2 = SchemaUtil.f((List) unsafe.getObject(abstractMessageLite, j2));
                    if (size2 > 0) {
                        iE12 = CodedOutputStream.e(i8);
                        iF2 = CodedOutputStream.f(size2);
                        iE18 += iF2 + iE12 + size2;
                    }
                    break;
                case 48:
                    size2 = SchemaUtil.g((List) unsafe.getObject(abstractMessageLite, j2));
                    if (size2 > 0) {
                        iE12 = CodedOutputStream.e(i8);
                        iF2 = CodedOutputStream.f(size2);
                        iE18 += iF2 + iE12 + size2;
                    }
                    break;
                case 49:
                    List list19 = (List) unsafe.getObject(abstractMessageLite, j2);
                    Schema schemaN4 = messageSchema.n(i4);
                    Class cls20 = SchemaUtil.f12993a;
                    int size11 = list19.size();
                    if (size11 == 0) {
                        iK3 = 0;
                    } else {
                        iK3 = 0;
                        for (int i19 = 0; i19 < size11; i19++) {
                            iK3 += ((AbstractMessageLite) ((MessageLite) list19.get(i19))).k(schemaN4) + (CodedOutputStream.e(i8) * 2);
                        }
                    }
                    iE18 += iK3;
                    break;
                case 50:
                    iC2 = messageSchema.o.h(unsafe.getObject(abstractMessageLite, j2), messageSchema.m(i4), i8);
                    iE18 += iC2;
                    break;
                case EACTags.TRANSACTION_DATE /* 51 */:
                    if (messageSchema.r(i8, i4, abstractMessageLite)) {
                        iE13 = CodedOutputStream.e(i8);
                        iE17 = iE13 + 8;
                        iE18 += iE17;
                    }
                    break;
                case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                    if (messageSchema.r(i8, i4, abstractMessageLite)) {
                        iE14 = CodedOutputStream.e(i8);
                        iE17 = iE14 + 4;
                        iE18 += iE17;
                    }
                    break;
                case EACTags.SEX /* 53 */:
                    if (messageSchema.r(i8, i4, abstractMessageLite)) {
                        long jA = A(j2, abstractMessageLite);
                        iE15 = CodedOutputStream.e(i8);
                        iG3 = CodedOutputStream.g(jA);
                        iE18 += iG3 + iE15;
                    }
                    break;
                case EACTags.CURRENCY_EXPONENT /* 54 */:
                    if (messageSchema.r(i8, i4, abstractMessageLite)) {
                        long jA2 = A(j2, abstractMessageLite);
                        iE15 = CodedOutputStream.e(i8);
                        iG3 = CodedOutputStream.g(jA2);
                        iE18 += iG3 + iE15;
                    }
                    break;
                case 55:
                    if (messageSchema.r(i8, i4, abstractMessageLite)) {
                        int iZ = z(j2, abstractMessageLite);
                        iE16 = CodedOutputStream.e(i8);
                        iG4 = CodedOutputStream.g(iZ);
                        iE17 = iG4 + iE16;
                        iE18 += iE17;
                    }
                    break;
                case 56:
                    if (messageSchema.r(i8, i4, abstractMessageLite)) {
                        iE13 = CodedOutputStream.e(i8);
                        iE17 = iE13 + 8;
                        iE18 += iE17;
                    }
                    break;
                case 57:
                    if (messageSchema.r(i8, i4, abstractMessageLite)) {
                        iE14 = CodedOutputStream.e(i8);
                        iE17 = iE14 + 4;
                        iE18 += iE17;
                    }
                    break;
                case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
                    if (messageSchema.r(i8, i4, abstractMessageLite)) {
                        iE17 = CodedOutputStream.e(i8) + 1;
                        iE18 += iE17;
                    }
                    break;
                case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                    if (messageSchema.r(i8, i4, abstractMessageLite)) {
                        Object object3 = unsafe.getObject(abstractMessageLite, j2);
                        iE18 = (object3 instanceof ByteString ? CodedOutputStream.b(i8, (ByteString) object3) : CodedOutputStream.d((String) object3) + CodedOutputStream.e(i8)) + iE18;
                    }
                    break;
                case 60:
                    if (messageSchema.r(i8, i4, abstractMessageLite)) {
                        Object object4 = unsafe.getObject(abstractMessageLite, j2);
                        Schema schemaN5 = messageSchema.n(i4);
                        Class cls21 = SchemaUtil.f12993a;
                        if (object4 instanceof LazyFieldLite) {
                            iE7 = CodedOutputStream.e(i8);
                            iC = CodedOutputStream.c((LazyFieldLite) object4);
                            iC2 = iC + iE7;
                            iE18 += iC2;
                        } else {
                            iE6 = CodedOutputStream.e(i8);
                            iK = ((AbstractMessageLite) ((MessageLite) object4)).k(schemaN5);
                            iF = CodedOutputStream.f(iK);
                            iC2 = iF + iK + iE6;
                            iE18 += iC2;
                        }
                    }
                    break;
                case 61:
                    if (messageSchema.r(i8, i4, abstractMessageLite)) {
                        iE17 = CodedOutputStream.b(i8, (ByteString) unsafe.getObject(abstractMessageLite, j2));
                        iE18 += iE17;
                    }
                    break;
                case 62:
                    if (messageSchema.r(i8, i4, abstractMessageLite)) {
                        int iZ2 = z(j2, abstractMessageLite);
                        iE16 = CodedOutputStream.e(i8);
                        iG4 = CodedOutputStream.f(iZ2);
                        iE17 = iG4 + iE16;
                        iE18 += iE17;
                    }
                    break;
                case 63:
                    if (messageSchema.r(i8, i4, abstractMessageLite)) {
                        int iZ3 = z(j2, abstractMessageLite);
                        iE16 = CodedOutputStream.e(i8);
                        iG4 = CodedOutputStream.g(iZ3);
                        iE17 = iG4 + iE16;
                        iE18 += iE17;
                    }
                    break;
                case 64:
                    if (messageSchema.r(i8, i4, abstractMessageLite)) {
                        iE14 = CodedOutputStream.e(i8);
                        iE17 = iE14 + 4;
                        iE18 += iE17;
                    }
                    break;
                case EACTags.ELEMENT_LIST /* 65 */:
                    if (messageSchema.r(i8, i4, abstractMessageLite)) {
                        iE13 = CodedOutputStream.e(i8);
                        iE17 = iE13 + 8;
                        iE18 += iE17;
                    }
                    break;
                case EACTags.ADDRESS /* 66 */:
                    if (messageSchema.r(i8, i4, abstractMessageLite)) {
                        int iZ4 = z(j2, abstractMessageLite);
                        iE16 = CodedOutputStream.e(i8);
                        iG4 = CodedOutputStream.f((iZ4 >> 31) ^ (iZ4 << 1));
                        iE17 = iG4 + iE16;
                        iE18 += iE17;
                    }
                    break;
                case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                    if (messageSchema.r(i8, i4, abstractMessageLite)) {
                        long jA3 = A(j2, abstractMessageLite);
                        iE15 = CodedOutputStream.e(i8);
                        iG3 = CodedOutputStream.g((jA3 << 1) ^ (jA3 >> 63));
                        iE18 += iG3 + iE15;
                    }
                    break;
                case EACTags.APPLICATION_IMAGE /* 68 */:
                    if (messageSchema.r(i8, i4, abstractMessageLite)) {
                        MessageLite messageLite2 = (MessageLite) unsafe.getObject(abstractMessageLite, j2);
                        Schema schemaN6 = messageSchema.n(i4);
                        iE8 = CodedOutputStream.e(i8) * 2;
                        iK2 = ((AbstractMessageLite) messageLite2).k(schemaN6);
                        iE17 = iK2 + iE8;
                        iE18 += iE17;
                    }
                    break;
            }
            i4 += 3;
        }
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 21201. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    @Override // androidx.datastore.preferences.protobuf.Schema
    public final void f(java.lang.Object r19, androidx.datastore.preferences.protobuf.CodedInputStreamReader r20, androidx.datastore.preferences.protobuf.ExtensionRegistryLite r21) {
        /*
            Method dump skipped, instruction units count: 2120
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.MessageSchema.f(java.lang.Object, androidx.datastore.preferences.protobuf.CodedInputStreamReader, androidx.datastore.preferences.protobuf.ExtensionRegistryLite):void");
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00e4 A[PHI: r3
      0x00e4: PHI (r3v32 int) = (r3v10 int), (r3v33 int) binds: [B:84:0x0219, B:42:0x00e2] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.datastore.preferences.protobuf.Schema
    public final int g(GeneratedMessageLite generatedMessageLite) {
        int i2;
        int iB;
        int i3;
        int iF;
        int i4;
        int[] iArr = this.f12971a;
        int length = iArr.length;
        int i5 = 0;
        for (int i6 = 0; i6 < length; i6 += 3) {
            int I = I(i6);
            int i7 = iArr[i6];
            long j2 = 1048575 & I;
            int i8 = 1237;
            int iHashCode = 37;
            switch (H(I)) {
                case 0:
                    i2 = i5 * 53;
                    iB = Internal.b(Double.doubleToLongBits(UnsafeUtil.f13019c.d(j2, generatedMessageLite)));
                    i5 = iB + i2;
                    break;
                case 1:
                    i2 = i5 * 53;
                    iB = Float.floatToIntBits(UnsafeUtil.f13019c.e(j2, generatedMessageLite));
                    i5 = iB + i2;
                    break;
                case 2:
                    i2 = i5 * 53;
                    iB = Internal.b(UnsafeUtil.f13019c.g(j2, generatedMessageLite));
                    i5 = iB + i2;
                    break;
                case 3:
                    i2 = i5 * 53;
                    iB = Internal.b(UnsafeUtil.f13019c.g(j2, generatedMessageLite));
                    i5 = iB + i2;
                    break;
                case 4:
                    i3 = i5 * 53;
                    iF = UnsafeUtil.f13019c.f(j2, generatedMessageLite);
                    i5 = i3 + iF;
                    break;
                case 5:
                    i2 = i5 * 53;
                    iB = Internal.b(UnsafeUtil.f13019c.g(j2, generatedMessageLite));
                    i5 = iB + i2;
                    break;
                case 6:
                    i3 = i5 * 53;
                    iF = UnsafeUtil.f13019c.f(j2, generatedMessageLite);
                    i5 = i3 + iF;
                    break;
                case 7:
                    i4 = i5 * 53;
                    boolean zC = UnsafeUtil.f13019c.c(j2, generatedMessageLite);
                    Charset charset = Internal.f12947a;
                    if (zC) {
                        i8 = 1231;
                    }
                    i5 = i8 + i4;
                    break;
                case 8:
                    i2 = i5 * 53;
                    iB = ((String) UnsafeUtil.f13019c.h(j2, generatedMessageLite)).hashCode();
                    i5 = iB + i2;
                    break;
                case 9:
                    Object objH = UnsafeUtil.f13019c.h(j2, generatedMessageLite);
                    if (objH != null) {
                        iHashCode = objH.hashCode();
                    }
                    i5 = (i5 * 53) + iHashCode;
                    break;
                case 10:
                    i2 = i5 * 53;
                    iB = UnsafeUtil.f13019c.h(j2, generatedMessageLite).hashCode();
                    i5 = iB + i2;
                    break;
                case 11:
                    i3 = i5 * 53;
                    iF = UnsafeUtil.f13019c.f(j2, generatedMessageLite);
                    i5 = i3 + iF;
                    break;
                case 12:
                    i3 = i5 * 53;
                    iF = UnsafeUtil.f13019c.f(j2, generatedMessageLite);
                    i5 = i3 + iF;
                    break;
                case 13:
                    i3 = i5 * 53;
                    iF = UnsafeUtil.f13019c.f(j2, generatedMessageLite);
                    i5 = i3 + iF;
                    break;
                case 14:
                    i2 = i5 * 53;
                    iB = Internal.b(UnsafeUtil.f13019c.g(j2, generatedMessageLite));
                    i5 = iB + i2;
                    break;
                case 15:
                    i3 = i5 * 53;
                    iF = UnsafeUtil.f13019c.f(j2, generatedMessageLite);
                    i5 = i3 + iF;
                    break;
                case 16:
                    i2 = i5 * 53;
                    iB = Internal.b(UnsafeUtil.f13019c.g(j2, generatedMessageLite));
                    i5 = iB + i2;
                    break;
                case 17:
                    Object objH2 = UnsafeUtil.f13019c.h(j2, generatedMessageLite);
                    if (objH2 != null) {
                        iHashCode = objH2.hashCode();
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
                    iB = UnsafeUtil.f13019c.h(j2, generatedMessageLite).hashCode();
                    i5 = iB + i2;
                    break;
                case 50:
                    i2 = i5 * 53;
                    iB = UnsafeUtil.f13019c.h(j2, generatedMessageLite).hashCode();
                    i5 = iB + i2;
                    break;
                case EACTags.TRANSACTION_DATE /* 51 */:
                    if (r(i7, i6, generatedMessageLite)) {
                        i2 = i5 * 53;
                        iB = Internal.b(Double.doubleToLongBits(((Double) UnsafeUtil.f13019c.h(j2, generatedMessageLite)).doubleValue()));
                        i5 = iB + i2;
                    }
                    break;
                case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                    if (r(i7, i6, generatedMessageLite)) {
                        i2 = i5 * 53;
                        iB = Float.floatToIntBits(((Float) UnsafeUtil.f13019c.h(j2, generatedMessageLite)).floatValue());
                        i5 = iB + i2;
                    }
                    break;
                case EACTags.SEX /* 53 */:
                    if (r(i7, i6, generatedMessageLite)) {
                        i2 = i5 * 53;
                        iB = Internal.b(A(j2, generatedMessageLite));
                        i5 = iB + i2;
                    }
                    break;
                case EACTags.CURRENCY_EXPONENT /* 54 */:
                    if (r(i7, i6, generatedMessageLite)) {
                        i2 = i5 * 53;
                        iB = Internal.b(A(j2, generatedMessageLite));
                        i5 = iB + i2;
                    }
                    break;
                case 55:
                    if (r(i7, i6, generatedMessageLite)) {
                        i3 = i5 * 53;
                        iF = z(j2, generatedMessageLite);
                        i5 = i3 + iF;
                    }
                    break;
                case 56:
                    if (r(i7, i6, generatedMessageLite)) {
                        i2 = i5 * 53;
                        iB = Internal.b(A(j2, generatedMessageLite));
                        i5 = iB + i2;
                    }
                    break;
                case 57:
                    if (r(i7, i6, generatedMessageLite)) {
                        i3 = i5 * 53;
                        iF = z(j2, generatedMessageLite);
                        i5 = i3 + iF;
                    }
                    break;
                case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
                    if (r(i7, i6, generatedMessageLite)) {
                        i4 = i5 * 53;
                        boolean zBooleanValue = ((Boolean) UnsafeUtil.f13019c.h(j2, generatedMessageLite)).booleanValue();
                        Charset charset2 = Internal.f12947a;
                        if (zBooleanValue) {
                            i8 = 1231;
                        }
                        i5 = i8 + i4;
                    }
                    break;
                case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                    if (r(i7, i6, generatedMessageLite)) {
                        i2 = i5 * 53;
                        iB = ((String) UnsafeUtil.f13019c.h(j2, generatedMessageLite)).hashCode();
                        i5 = iB + i2;
                    }
                    break;
                case 60:
                    if (r(i7, i6, generatedMessageLite)) {
                        i2 = i5 * 53;
                        iB = UnsafeUtil.f13019c.h(j2, generatedMessageLite).hashCode();
                        i5 = iB + i2;
                    }
                    break;
                case 61:
                    if (r(i7, i6, generatedMessageLite)) {
                        i2 = i5 * 53;
                        iB = UnsafeUtil.f13019c.h(j2, generatedMessageLite).hashCode();
                        i5 = iB + i2;
                    }
                    break;
                case 62:
                    if (r(i7, i6, generatedMessageLite)) {
                        i3 = i5 * 53;
                        iF = z(j2, generatedMessageLite);
                        i5 = i3 + iF;
                    }
                    break;
                case 63:
                    if (r(i7, i6, generatedMessageLite)) {
                        i3 = i5 * 53;
                        iF = z(j2, generatedMessageLite);
                        i5 = i3 + iF;
                    }
                    break;
                case 64:
                    if (r(i7, i6, generatedMessageLite)) {
                        i3 = i5 * 53;
                        iF = z(j2, generatedMessageLite);
                        i5 = i3 + iF;
                    }
                    break;
                case EACTags.ELEMENT_LIST /* 65 */:
                    if (r(i7, i6, generatedMessageLite)) {
                        i2 = i5 * 53;
                        iB = Internal.b(A(j2, generatedMessageLite));
                        i5 = iB + i2;
                    }
                    break;
                case EACTags.ADDRESS /* 66 */:
                    if (r(i7, i6, generatedMessageLite)) {
                        i3 = i5 * 53;
                        iF = z(j2, generatedMessageLite);
                        i5 = i3 + iF;
                    }
                    break;
                case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                    if (r(i7, i6, generatedMessageLite)) {
                        i2 = i5 * 53;
                        iB = Internal.b(A(j2, generatedMessageLite));
                        i5 = iB + i2;
                    }
                    break;
                case EACTags.APPLICATION_IMAGE /* 68 */:
                    if (r(i7, i6, generatedMessageLite)) {
                        i2 = i5 * 53;
                        iB = UnsafeUtil.f13019c.h(j2, generatedMessageLite).hashCode();
                        i5 = iB + i2;
                    }
                    break;
            }
        }
        ((UnknownFieldSetLiteSchema) this.m).getClass();
        int iHashCode2 = generatedMessageLite.unknownFields.hashCode() + (i5 * 53);
        if (!this.f12975f) {
            return iHashCode2;
        }
        ((ExtensionSchemaLite) this.n).getClass();
        return (iHashCode2 * 53) + ((GeneratedMessageLite.ExtendableMessage) generatedMessageLite).extensions.f12936a.hashCode();
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0071  */
    @Override // androidx.datastore.preferences.protobuf.Schema
    public final void h(Object obj, Writer writer) {
        Map.Entry entry;
        Iterator it;
        if (writer.s() != Writer.FieldOrder.DESCENDING) {
            J(obj, writer);
            return;
        }
        ExtensionSchema extensionSchema = this.n;
        int[] iArr = this.f12971a;
        ((UnknownFieldSetLiteSchema) this.m).getClass();
        ((GeneratedMessageLite) obj).unknownFields.e(writer);
        if (this.f12975f) {
            ((ExtensionSchemaLite) extensionSchema).getClass();
            FieldSet<Object> fieldSet = ((GeneratedMessageLite.ExtendableMessage) obj).extensions;
            if (fieldSet.f12936a.isEmpty()) {
                entry = null;
            } else {
                SmallSortedMap.AnonymousClass1 anonymousClass1 = fieldSet.f12936a;
                if (anonymousClass1.isEmpty()) {
                    it = Collections.emptyIterator();
                } else {
                    boolean z = fieldSet.f12938c;
                    SmallSortedMap.DescendingEntrySet descendingEntrySet = anonymousClass1.g;
                    if (z) {
                        if (descendingEntrySet == null) {
                            anonymousClass1.g = new SmallSortedMap.DescendingEntrySet();
                        }
                        it = new LazyField.LazyIterator(anonymousClass1.g.iterator());
                    } else {
                        if (descendingEntrySet == null) {
                            anonymousClass1.g = new SmallSortedMap.DescendingEntrySet();
                        }
                        it = anonymousClass1.g.iterator();
                    }
                }
                entry = (Map.Entry) it.next();
            }
        } else {
            entry = null;
        }
        for (int length = iArr.length - 3; length >= 0; length -= 3) {
            int I = I(length);
            int i2 = iArr[length];
            if (entry != null) {
                ((ExtensionSchemaLite) extensionSchema).getClass();
                tr.x(entry.getKey());
                throw null;
            }
            switch (H(I)) {
                case 0:
                    if (o(length, obj)) {
                        writer.m(UnsafeUtil.f13019c.d(I & 1048575, obj), i2);
                    }
                    break;
                case 1:
                    if (o(length, obj)) {
                        writer.v(UnsafeUtil.f13019c.e(I & 1048575, obj), i2);
                    }
                    break;
                case 2:
                    if (o(length, obj)) {
                        writer.w(i2, UnsafeUtil.f13019c.g(I & 1048575, obj));
                    }
                    break;
                case 3:
                    if (o(length, obj)) {
                        writer.f(i2, UnsafeUtil.f13019c.g(I & 1048575, obj));
                    }
                    break;
                case 4:
                    if (o(length, obj)) {
                        writer.l(i2, UnsafeUtil.f13019c.f(I & 1048575, obj));
                    }
                    break;
                case 5:
                    if (o(length, obj)) {
                        writer.r(i2, UnsafeUtil.f13019c.g(I & 1048575, obj));
                    }
                    break;
                case 6:
                    if (o(length, obj)) {
                        writer.b(i2, UnsafeUtil.f13019c.f(I & 1048575, obj));
                    }
                    break;
                case 7:
                    if (o(length, obj)) {
                        writer.x(i2, UnsafeUtil.f13019c.c(I & 1048575, obj));
                    }
                    break;
                case 8:
                    if (o(length, obj)) {
                        K(i2, UnsafeUtil.f13019c.h(I & 1048575, obj), writer);
                    }
                    break;
                case 9:
                    if (o(length, obj)) {
                        writer.L(i2, UnsafeUtil.f13019c.h(I & 1048575, obj), n(length));
                    }
                    break;
                case 10:
                    if (o(length, obj)) {
                        writer.K(i2, (ByteString) UnsafeUtil.f13019c.h(I & 1048575, obj));
                    }
                    break;
                case 11:
                    if (o(length, obj)) {
                        writer.q(i2, UnsafeUtil.f13019c.f(I & 1048575, obj));
                    }
                    break;
                case 12:
                    if (o(length, obj)) {
                        writer.F(i2, UnsafeUtil.f13019c.f(I & 1048575, obj));
                    }
                    break;
                case 13:
                    if (o(length, obj)) {
                        writer.y(i2, UnsafeUtil.f13019c.f(I & 1048575, obj));
                    }
                    break;
                case 14:
                    if (o(length, obj)) {
                        writer.o(i2, UnsafeUtil.f13019c.g(I & 1048575, obj));
                    }
                    break;
                case 15:
                    if (o(length, obj)) {
                        writer.H(i2, UnsafeUtil.f13019c.f(I & 1048575, obj));
                    }
                    break;
                case 16:
                    if (o(length, obj)) {
                        writer.p(i2, UnsafeUtil.f13019c.g(I & 1048575, obj));
                    }
                    break;
                case 17:
                    if (o(length, obj)) {
                        writer.N(i2, UnsafeUtil.f13019c.h(I & 1048575, obj), n(length));
                    }
                    break;
                case 18:
                    int i3 = iArr[length];
                    List list = (List) UnsafeUtil.f13019c.h(I & 1048575, obj);
                    Class cls = SchemaUtil.f12993a;
                    if (list != null && !list.isEmpty()) {
                        writer.i(list, i3, false);
                    }
                    break;
                case 19:
                    int i4 = iArr[length];
                    List list2 = (List) UnsafeUtil.f13019c.h(I & 1048575, obj);
                    Class cls2 = SchemaUtil.f12993a;
                    if (list2 != null && !list2.isEmpty()) {
                        writer.G(list2, i4, false);
                    }
                    break;
                case 20:
                    int i5 = iArr[length];
                    List list3 = (List) UnsafeUtil.f13019c.h(I & 1048575, obj);
                    Class cls3 = SchemaUtil.f12993a;
                    if (list3 != null && !list3.isEmpty()) {
                        writer.j(list3, i5, false);
                    }
                    break;
                case 21:
                    int i6 = iArr[length];
                    List list4 = (List) UnsafeUtil.f13019c.h(I & 1048575, obj);
                    Class cls4 = SchemaUtil.f12993a;
                    if (list4 != null && !list4.isEmpty()) {
                        writer.c(list4, i6, false);
                    }
                    break;
                case 22:
                    int i7 = iArr[length];
                    List list5 = (List) UnsafeUtil.f13019c.h(I & 1048575, obj);
                    Class cls5 = SchemaUtil.f12993a;
                    if (list5 != null && !list5.isEmpty()) {
                        writer.h(list5, i7, false);
                    }
                    break;
                case 23:
                    int i8 = iArr[length];
                    List list6 = (List) UnsafeUtil.f13019c.h(I & 1048575, obj);
                    Class cls6 = SchemaUtil.f12993a;
                    if (list6 != null && !list6.isEmpty()) {
                        writer.n(list6, i8, false);
                    }
                    break;
                case 24:
                    int i9 = iArr[length];
                    List list7 = (List) UnsafeUtil.f13019c.h(I & 1048575, obj);
                    Class cls7 = SchemaUtil.f12993a;
                    if (list7 != null && !list7.isEmpty()) {
                        writer.D(list7, i9, false);
                    }
                    break;
                case 25:
                    int i10 = iArr[length];
                    List list8 = (List) UnsafeUtil.f13019c.h(I & 1048575, obj);
                    Class cls8 = SchemaUtil.f12993a;
                    if (list8 != null && !list8.isEmpty()) {
                        writer.C(list8, i10, false);
                    }
                    break;
                case 26:
                    int i11 = iArr[length];
                    List list9 = (List) UnsafeUtil.f13019c.h(I & 1048575, obj);
                    Class cls9 = SchemaUtil.f12993a;
                    if (list9 != null && !list9.isEmpty()) {
                        writer.d(i11, list9);
                    }
                    break;
                case 27:
                    int i12 = iArr[length];
                    List list10 = (List) UnsafeUtil.f13019c.h(I & 1048575, obj);
                    Schema schemaN = n(length);
                    Class cls10 = SchemaUtil.f12993a;
                    if (list10 != null && !list10.isEmpty()) {
                        writer.O(i12, list10, schemaN);
                    }
                    break;
                case 28:
                    int i13 = iArr[length];
                    List list11 = (List) UnsafeUtil.f13019c.h(I & 1048575, obj);
                    Class cls11 = SchemaUtil.f12993a;
                    if (list11 != null && !list11.isEmpty()) {
                        writer.I(i13, list11);
                    }
                    break;
                case 29:
                    int i14 = iArr[length];
                    List list12 = (List) UnsafeUtil.f13019c.h(I & 1048575, obj);
                    Class cls12 = SchemaUtil.f12993a;
                    if (list12 != null && !list12.isEmpty()) {
                        writer.B(list12, i14, false);
                    }
                    break;
                case 30:
                    int i15 = iArr[length];
                    List list13 = (List) UnsafeUtil.f13019c.h(I & 1048575, obj);
                    Class cls13 = SchemaUtil.f12993a;
                    if (list13 != null && !list13.isEmpty()) {
                        writer.t(list13, i15, false);
                    }
                    break;
                case 31:
                    int i16 = iArr[length];
                    List list14 = (List) UnsafeUtil.f13019c.h(I & 1048575, obj);
                    Class cls14 = SchemaUtil.f12993a;
                    if (list14 != null && !list14.isEmpty()) {
                        writer.k(list14, i16, false);
                    }
                    break;
                case 32:
                    int i17 = iArr[length];
                    List list15 = (List) UnsafeUtil.f13019c.h(I & 1048575, obj);
                    Class cls15 = SchemaUtil.f12993a;
                    if (list15 != null && !list15.isEmpty()) {
                        writer.A(list15, i17, false);
                    }
                    break;
                case 33:
                    int i18 = iArr[length];
                    List list16 = (List) UnsafeUtil.f13019c.h(I & 1048575, obj);
                    Class cls16 = SchemaUtil.f12993a;
                    if (list16 != null && !list16.isEmpty()) {
                        writer.u(list16, i18, false);
                    }
                    break;
                case 34:
                    int i19 = iArr[length];
                    List list17 = (List) UnsafeUtil.f13019c.h(I & 1048575, obj);
                    Class cls17 = SchemaUtil.f12993a;
                    if (list17 != null && !list17.isEmpty()) {
                        writer.g(list17, i19, false);
                    }
                    break;
                case 35:
                    int i20 = iArr[length];
                    List list18 = (List) UnsafeUtil.f13019c.h(I & 1048575, obj);
                    Class cls18 = SchemaUtil.f12993a;
                    if (list18 != null && !list18.isEmpty()) {
                        writer.i(list18, i20, true);
                    }
                    break;
                case 36:
                    int i21 = iArr[length];
                    List list19 = (List) UnsafeUtil.f13019c.h(I & 1048575, obj);
                    Class cls19 = SchemaUtil.f12993a;
                    if (list19 != null && !list19.isEmpty()) {
                        writer.G(list19, i21, true);
                    }
                    break;
                case 37:
                    int i22 = iArr[length];
                    List list20 = (List) UnsafeUtil.f13019c.h(I & 1048575, obj);
                    Class cls20 = SchemaUtil.f12993a;
                    if (list20 != null && !list20.isEmpty()) {
                        writer.j(list20, i22, true);
                    }
                    break;
                case 38:
                    int i23 = iArr[length];
                    List list21 = (List) UnsafeUtil.f13019c.h(I & 1048575, obj);
                    Class cls21 = SchemaUtil.f12993a;
                    if (list21 != null && !list21.isEmpty()) {
                        writer.c(list21, i23, true);
                    }
                    break;
                case 39:
                    int i24 = iArr[length];
                    List list22 = (List) UnsafeUtil.f13019c.h(I & 1048575, obj);
                    Class cls22 = SchemaUtil.f12993a;
                    if (list22 != null && !list22.isEmpty()) {
                        writer.h(list22, i24, true);
                    }
                    break;
                case 40:
                    int i25 = iArr[length];
                    List list23 = (List) UnsafeUtil.f13019c.h(I & 1048575, obj);
                    Class cls23 = SchemaUtil.f12993a;
                    if (list23 != null && !list23.isEmpty()) {
                        writer.n(list23, i25, true);
                    }
                    break;
                case 41:
                    int i26 = iArr[length];
                    List list24 = (List) UnsafeUtil.f13019c.h(I & 1048575, obj);
                    Class cls24 = SchemaUtil.f12993a;
                    if (list24 != null && !list24.isEmpty()) {
                        writer.D(list24, i26, true);
                    }
                    break;
                case EACTags.CURRENCY_CODE /* 42 */:
                    int i27 = iArr[length];
                    List list25 = (List) UnsafeUtil.f13019c.h(I & 1048575, obj);
                    Class cls25 = SchemaUtil.f12993a;
                    if (list25 != null && !list25.isEmpty()) {
                        writer.C(list25, i27, true);
                    }
                    break;
                case EACTags.DATE_OF_BIRTH /* 43 */:
                    int i28 = iArr[length];
                    List list26 = (List) UnsafeUtil.f13019c.h(I & 1048575, obj);
                    Class cls26 = SchemaUtil.f12993a;
                    if (list26 != null && !list26.isEmpty()) {
                        writer.B(list26, i28, true);
                    }
                    break;
                case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                    int i29 = iArr[length];
                    List list27 = (List) UnsafeUtil.f13019c.h(I & 1048575, obj);
                    Class cls27 = SchemaUtil.f12993a;
                    if (list27 != null && !list27.isEmpty()) {
                        writer.t(list27, i29, true);
                    }
                    break;
                case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                    int i30 = iArr[length];
                    List list28 = (List) UnsafeUtil.f13019c.h(I & 1048575, obj);
                    Class cls28 = SchemaUtil.f12993a;
                    if (list28 != null && !list28.isEmpty()) {
                        writer.k(list28, i30, true);
                    }
                    break;
                case 46:
                    int i31 = iArr[length];
                    List list29 = (List) UnsafeUtil.f13019c.h(I & 1048575, obj);
                    Class cls29 = SchemaUtil.f12993a;
                    if (list29 != null && !list29.isEmpty()) {
                        writer.A(list29, i31, true);
                    }
                    break;
                case EACTags.PIN_USAGE_POLICY /* 47 */:
                    int i32 = iArr[length];
                    List list30 = (List) UnsafeUtil.f13019c.h(I & 1048575, obj);
                    Class cls30 = SchemaUtil.f12993a;
                    if (list30 != null && !list30.isEmpty()) {
                        writer.u(list30, i32, true);
                    }
                    break;
                case 48:
                    int i33 = iArr[length];
                    List list31 = (List) UnsafeUtil.f13019c.h(I & 1048575, obj);
                    Class cls31 = SchemaUtil.f12993a;
                    if (list31 != null && !list31.isEmpty()) {
                        writer.g(list31, i33, true);
                    }
                    break;
                case 49:
                    int i34 = iArr[length];
                    List list32 = (List) UnsafeUtil.f13019c.h(I & 1048575, obj);
                    Schema schemaN2 = n(length);
                    Class cls32 = SchemaUtil.f12993a;
                    if (list32 != null && !list32.isEmpty()) {
                        writer.J(i34, list32, schemaN2);
                    }
                    break;
                case 50:
                    Object objH = UnsafeUtil.f13019c.h(I & 1048575, obj);
                    MapFieldSchema mapFieldSchema = this.o;
                    if (objH != null) {
                        writer.M(i2, mapFieldSchema.b(m(length)), mapFieldSchema.d(objH));
                    }
                    break;
                case EACTags.TRANSACTION_DATE /* 51 */:
                    if (r(i2, length, obj)) {
                        writer.m(((Double) UnsafeUtil.f13019c.h(I & 1048575, obj)).doubleValue(), i2);
                    }
                    break;
                case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                    if (r(i2, length, obj)) {
                        writer.v(((Float) UnsafeUtil.f13019c.h(I & 1048575, obj)).floatValue(), i2);
                    }
                    break;
                case EACTags.SEX /* 53 */:
                    if (r(i2, length, obj)) {
                        writer.w(i2, A(I & 1048575, obj));
                    }
                    break;
                case EACTags.CURRENCY_EXPONENT /* 54 */:
                    if (r(i2, length, obj)) {
                        writer.f(i2, A(I & 1048575, obj));
                    }
                    break;
                case 55:
                    if (r(i2, length, obj)) {
                        writer.l(i2, z(I & 1048575, obj));
                    }
                    break;
                case 56:
                    if (r(i2, length, obj)) {
                        writer.r(i2, A(I & 1048575, obj));
                    }
                    break;
                case 57:
                    if (r(i2, length, obj)) {
                        writer.b(i2, z(I & 1048575, obj));
                    }
                    break;
                case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
                    if (r(i2, length, obj)) {
                        writer.x(i2, ((Boolean) UnsafeUtil.f13019c.h(I & 1048575, obj)).booleanValue());
                    }
                    break;
                case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                    if (r(i2, length, obj)) {
                        K(i2, UnsafeUtil.f13019c.h(I & 1048575, obj), writer);
                    }
                    break;
                case 60:
                    if (r(i2, length, obj)) {
                        writer.L(i2, UnsafeUtil.f13019c.h(I & 1048575, obj), n(length));
                    }
                    break;
                case 61:
                    if (r(i2, length, obj)) {
                        writer.K(i2, (ByteString) UnsafeUtil.f13019c.h(I & 1048575, obj));
                    }
                    break;
                case 62:
                    if (r(i2, length, obj)) {
                        writer.q(i2, z(I & 1048575, obj));
                    }
                    break;
                case 63:
                    if (r(i2, length, obj)) {
                        writer.F(i2, z(I & 1048575, obj));
                    }
                    break;
                case 64:
                    if (r(i2, length, obj)) {
                        writer.y(i2, z(I & 1048575, obj));
                    }
                    break;
                case EACTags.ELEMENT_LIST /* 65 */:
                    if (r(i2, length, obj)) {
                        writer.o(i2, A(I & 1048575, obj));
                    }
                    break;
                case EACTags.ADDRESS /* 66 */:
                    if (r(i2, length, obj)) {
                        writer.H(i2, z(I & 1048575, obj));
                    }
                    break;
                case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                    if (r(i2, length, obj)) {
                        writer.p(i2, A(I & 1048575, obj));
                    }
                    break;
                case EACTags.APPLICATION_IMAGE /* 68 */:
                    if (r(i2, length, obj)) {
                        writer.N(i2, UnsafeUtil.f13019c.h(I & 1048575, obj), n(length));
                    }
                    break;
            }
        }
        if (entry == null) {
            return;
        }
        ((ExtensionSchemaLite) extensionSchema).getClass();
        tr.x(entry.getKey());
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x003d  */
    @Override // androidx.datastore.preferences.protobuf.Schema
    public final boolean i(GeneratedMessageLite generatedMessageLite, GeneratedMessageLite generatedMessageLite2) {
        int[] iArr = this.f12971a;
        int length = iArr.length;
        int i2 = 0;
        while (true) {
            boolean zM = true;
            if (i2 < length) {
                int I = I(i2);
                long j2 = I & 1048575;
                switch (H(I)) {
                    case 0:
                        if (!j(generatedMessageLite, generatedMessageLite2, i2)) {
                            zM = false;
                        } else {
                            UnsafeUtil.MemoryAccessor memoryAccessor = UnsafeUtil.f13019c;
                            if (Double.doubleToLongBits(memoryAccessor.d(j2, generatedMessageLite)) != Double.doubleToLongBits(memoryAccessor.d(j2, generatedMessageLite2))) {
                                zM = false;
                            }
                        }
                        break;
                    case 1:
                        if (!j(generatedMessageLite, generatedMessageLite2, i2)) {
                            zM = false;
                        } else {
                            UnsafeUtil.MemoryAccessor memoryAccessor2 = UnsafeUtil.f13019c;
                            if (Float.floatToIntBits(memoryAccessor2.e(j2, generatedMessageLite)) != Float.floatToIntBits(memoryAccessor2.e(j2, generatedMessageLite2))) {
                                zM = false;
                            }
                        }
                        break;
                    case 2:
                        if (!j(generatedMessageLite, generatedMessageLite2, i2)) {
                            zM = false;
                        } else {
                            UnsafeUtil.MemoryAccessor memoryAccessor3 = UnsafeUtil.f13019c;
                            if (memoryAccessor3.g(j2, generatedMessageLite) != memoryAccessor3.g(j2, generatedMessageLite2)) {
                                zM = false;
                            }
                        }
                        break;
                    case 3:
                        if (!j(generatedMessageLite, generatedMessageLite2, i2)) {
                            zM = false;
                        } else {
                            UnsafeUtil.MemoryAccessor memoryAccessor4 = UnsafeUtil.f13019c;
                            if (memoryAccessor4.g(j2, generatedMessageLite) != memoryAccessor4.g(j2, generatedMessageLite2)) {
                                zM = false;
                            }
                        }
                        break;
                    case 4:
                        if (!j(generatedMessageLite, generatedMessageLite2, i2)) {
                            zM = false;
                        } else {
                            UnsafeUtil.MemoryAccessor memoryAccessor5 = UnsafeUtil.f13019c;
                            if (memoryAccessor5.f(j2, generatedMessageLite) != memoryAccessor5.f(j2, generatedMessageLite2)) {
                                zM = false;
                            }
                        }
                        break;
                    case 5:
                        if (!j(generatedMessageLite, generatedMessageLite2, i2)) {
                            zM = false;
                        } else {
                            UnsafeUtil.MemoryAccessor memoryAccessor6 = UnsafeUtil.f13019c;
                            if (memoryAccessor6.g(j2, generatedMessageLite) != memoryAccessor6.g(j2, generatedMessageLite2)) {
                                zM = false;
                            }
                        }
                        break;
                    case 6:
                        if (!j(generatedMessageLite, generatedMessageLite2, i2)) {
                            zM = false;
                        } else {
                            UnsafeUtil.MemoryAccessor memoryAccessor7 = UnsafeUtil.f13019c;
                            if (memoryAccessor7.f(j2, generatedMessageLite) != memoryAccessor7.f(j2, generatedMessageLite2)) {
                                zM = false;
                            }
                        }
                        break;
                    case 7:
                        if (!j(generatedMessageLite, generatedMessageLite2, i2)) {
                            zM = false;
                        } else {
                            UnsafeUtil.MemoryAccessor memoryAccessor8 = UnsafeUtil.f13019c;
                            if (memoryAccessor8.c(j2, generatedMessageLite) != memoryAccessor8.c(j2, generatedMessageLite2)) {
                                zM = false;
                            }
                        }
                        break;
                    case 8:
                        if (!j(generatedMessageLite, generatedMessageLite2, i2)) {
                            zM = false;
                        } else {
                            UnsafeUtil.MemoryAccessor memoryAccessor9 = UnsafeUtil.f13019c;
                            if (!SchemaUtil.m(memoryAccessor9.h(j2, generatedMessageLite), memoryAccessor9.h(j2, generatedMessageLite2))) {
                                zM = false;
                            }
                        }
                        break;
                    case 9:
                        if (!j(generatedMessageLite, generatedMessageLite2, i2)) {
                            zM = false;
                        } else {
                            UnsafeUtil.MemoryAccessor memoryAccessor10 = UnsafeUtil.f13019c;
                            if (!SchemaUtil.m(memoryAccessor10.h(j2, generatedMessageLite), memoryAccessor10.h(j2, generatedMessageLite2))) {
                                zM = false;
                            }
                        }
                        break;
                    case 10:
                        if (!j(generatedMessageLite, generatedMessageLite2, i2)) {
                            zM = false;
                        } else {
                            UnsafeUtil.MemoryAccessor memoryAccessor11 = UnsafeUtil.f13019c;
                            if (!SchemaUtil.m(memoryAccessor11.h(j2, generatedMessageLite), memoryAccessor11.h(j2, generatedMessageLite2))) {
                                zM = false;
                            }
                        }
                        break;
                    case 11:
                        if (!j(generatedMessageLite, generatedMessageLite2, i2)) {
                            zM = false;
                        } else {
                            UnsafeUtil.MemoryAccessor memoryAccessor12 = UnsafeUtil.f13019c;
                            if (memoryAccessor12.f(j2, generatedMessageLite) != memoryAccessor12.f(j2, generatedMessageLite2)) {
                                zM = false;
                            }
                        }
                        break;
                    case 12:
                        if (!j(generatedMessageLite, generatedMessageLite2, i2)) {
                            zM = false;
                        } else {
                            UnsafeUtil.MemoryAccessor memoryAccessor13 = UnsafeUtil.f13019c;
                            if (memoryAccessor13.f(j2, generatedMessageLite) != memoryAccessor13.f(j2, generatedMessageLite2)) {
                                zM = false;
                            }
                        }
                        break;
                    case 13:
                        if (!j(generatedMessageLite, generatedMessageLite2, i2)) {
                            zM = false;
                        } else {
                            UnsafeUtil.MemoryAccessor memoryAccessor14 = UnsafeUtil.f13019c;
                            if (memoryAccessor14.f(j2, generatedMessageLite) != memoryAccessor14.f(j2, generatedMessageLite2)) {
                                zM = false;
                            }
                        }
                        break;
                    case 14:
                        if (!j(generatedMessageLite, generatedMessageLite2, i2)) {
                            zM = false;
                        } else {
                            UnsafeUtil.MemoryAccessor memoryAccessor15 = UnsafeUtil.f13019c;
                            if (memoryAccessor15.g(j2, generatedMessageLite) != memoryAccessor15.g(j2, generatedMessageLite2)) {
                                zM = false;
                            }
                        }
                        break;
                    case 15:
                        if (!j(generatedMessageLite, generatedMessageLite2, i2)) {
                            zM = false;
                        } else {
                            UnsafeUtil.MemoryAccessor memoryAccessor16 = UnsafeUtil.f13019c;
                            if (memoryAccessor16.f(j2, generatedMessageLite) != memoryAccessor16.f(j2, generatedMessageLite2)) {
                                zM = false;
                            }
                        }
                        break;
                    case 16:
                        if (!j(generatedMessageLite, generatedMessageLite2, i2)) {
                            zM = false;
                        } else {
                            UnsafeUtil.MemoryAccessor memoryAccessor17 = UnsafeUtil.f13019c;
                            if (memoryAccessor17.g(j2, generatedMessageLite) != memoryAccessor17.g(j2, generatedMessageLite2)) {
                                zM = false;
                            }
                        }
                        break;
                    case 17:
                        if (!j(generatedMessageLite, generatedMessageLite2, i2)) {
                            zM = false;
                        } else {
                            UnsafeUtil.MemoryAccessor memoryAccessor18 = UnsafeUtil.f13019c;
                            if (!SchemaUtil.m(memoryAccessor18.h(j2, generatedMessageLite), memoryAccessor18.h(j2, generatedMessageLite2))) {
                                zM = false;
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
                        UnsafeUtil.MemoryAccessor memoryAccessor19 = UnsafeUtil.f13019c;
                        zM = SchemaUtil.m(memoryAccessor19.h(j2, generatedMessageLite), memoryAccessor19.h(j2, generatedMessageLite2));
                        break;
                    case 50:
                        UnsafeUtil.MemoryAccessor memoryAccessor20 = UnsafeUtil.f13019c;
                        zM = SchemaUtil.m(memoryAccessor20.h(j2, generatedMessageLite), memoryAccessor20.h(j2, generatedMessageLite2));
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
                        UnsafeUtil.MemoryAccessor memoryAccessor21 = UnsafeUtil.f13019c;
                        if (memoryAccessor21.f(j3, generatedMessageLite) != memoryAccessor21.f(j3, generatedMessageLite2) || !SchemaUtil.m(memoryAccessor21.h(j2, generatedMessageLite), memoryAccessor21.h(j2, generatedMessageLite2))) {
                            zM = false;
                        }
                        break;
                }
                if (zM) {
                    i2 += 3;
                }
            } else {
                UnknownFieldSetLiteSchema unknownFieldSetLiteSchema = (UnknownFieldSetLiteSchema) this.m;
                unknownFieldSetLiteSchema.getClass();
                UnknownFieldSetLite unknownFieldSetLite = generatedMessageLite.unknownFields;
                unknownFieldSetLiteSchema.getClass();
                if (unknownFieldSetLite.equals(generatedMessageLite2.unknownFields)) {
                    if (!this.f12975f) {
                        return true;
                    }
                    ExtensionSchemaLite extensionSchemaLite = (ExtensionSchemaLite) this.n;
                    extensionSchemaLite.getClass();
                    FieldSet<Object> fieldSet = ((GeneratedMessageLite.ExtendableMessage) generatedMessageLite).extensions;
                    extensionSchemaLite.getClass();
                    return fieldSet.equals(((GeneratedMessageLite.ExtendableMessage) generatedMessageLite2).extensions);
                }
            }
        }
        return false;
    }

    public final boolean j(GeneratedMessageLite generatedMessageLite, GeneratedMessageLite generatedMessageLite2, int i2) {
        return o(i2, generatedMessageLite) == o(i2, generatedMessageLite2);
    }

    public final Object k(Object obj, int i2, Object obj2, UnknownFieldSchema unknownFieldSchema, Object obj3) {
        Internal.EnumVerifier enumVerifierL;
        int i3 = this.f12971a[i2];
        Object objH = UnsafeUtil.f13019c.h(I(i2) & 1048575, obj);
        if (objH == null || (enumVerifierL = l(i2)) == null) {
            return obj2;
        }
        MapFieldSchema mapFieldSchema = this.o;
        MapFieldLite mapFieldLiteC = mapFieldSchema.c(objH);
        MapEntryLite.Metadata metadataB = mapFieldSchema.b(m(i2));
        Iterator it = mapFieldLiteC.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            ((Integer) entry.getValue()).getClass();
            if (!enumVerifierL.a()) {
                if (obj2 == null) {
                    obj2 = unknownFieldSchema.a(obj3);
                }
                ByteString.CodedBuilder codedBuilder = new ByteString.CodedBuilder(MapEntryLite.a(metadataB, entry.getKey(), entry.getValue()));
                CodedOutputStream codedOutputStream = codedBuilder.f12900a;
                try {
                    MapEntryLite.b(codedOutputStream, metadataB, entry.getKey(), entry.getValue());
                    CodedOutputStream.ArrayEncoder arrayEncoder = (CodedOutputStream.ArrayEncoder) codedOutputStream;
                    if (arrayEncoder.f12925e - arrayEncoder.f12926f != 0) {
                        md.k("Did not write as much data as expected.");
                        return null;
                    }
                    ByteString.LiteralByteString literalByteString = new ByteString.LiteralByteString(codedBuilder.f12901b);
                    ((UnknownFieldSetLiteSchema) unknownFieldSchema).getClass();
                    ((UnknownFieldSetLite) obj2).c((i3 << 3) | 2, literalByteString);
                    it.remove();
                } catch (IOException e2) {
                    x1.m(e2);
                    return null;
                }
            }
        }
        return obj2;
    }

    public final Internal.EnumVerifier l(int i2) {
        return (Internal.EnumVerifier) this.f12972b[((i2 / 3) * 2) + 1];
    }

    public final Object m(int i2) {
        return this.f12972b[(i2 / 3) * 2];
    }

    public final Schema n(int i2) {
        int i3 = (i2 / 3) * 2;
        Object[] objArr = this.f12972b;
        Schema schema = (Schema) objArr[i3];
        if (schema != null) {
            return schema;
        }
        Schema schemaA = Protobuf.f12985c.a((Class) objArr[i3 + 1]);
        objArr[i3] = schemaA;
        return schemaA;
    }

    /* JADX WARN: Code duplicated, block: B:69:0x0110 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:70:0x0111 A[RETURN] */
    public final boolean o(int i2, Object obj) {
        int i3 = this.f12971a[i2 + 2];
        long j2 = i3 & 1048575;
        if (j2 != 1048575) {
            if (((1 << (i3 >>> 20)) & UnsafeUtil.f13019c.f(j2, obj)) != 0) {
                return true;
            }
            return false;
        }
        int I = I(i2);
        long j3 = I & 1048575;
        switch (H(I)) {
            case 0:
                if (Double.doubleToRawLongBits(UnsafeUtil.f13019c.d(j3, obj)) != 0) {
                    return true;
                }
                return false;
            case 1:
                if (Float.floatToRawIntBits(UnsafeUtil.f13019c.e(j3, obj)) != 0) {
                    return true;
                }
                return false;
            case 2:
                if (UnsafeUtil.f13019c.g(j3, obj) != 0) {
                    return true;
                }
                return false;
            case 3:
                if (UnsafeUtil.f13019c.g(j3, obj) != 0) {
                    return true;
                }
                return false;
            case 4:
                if (UnsafeUtil.f13019c.f(j3, obj) != 0) {
                    return true;
                }
                return false;
            case 5:
                if (UnsafeUtil.f13019c.g(j3, obj) != 0) {
                    return true;
                }
                return false;
            case 6:
                if (UnsafeUtil.f13019c.f(j3, obj) != 0) {
                    return true;
                }
                return false;
            case 7:
                return UnsafeUtil.f13019c.c(j3, obj);
            case 8:
                Object objH = UnsafeUtil.f13019c.h(j3, obj);
                if (objH instanceof String) {
                    return !((String) objH).isEmpty();
                }
                if (objH instanceof ByteString) {
                    return !ByteString.f12895c.equals(objH);
                }
                ct0.c();
                return false;
            case 9:
                if (UnsafeUtil.f13019c.h(j3, obj) != null) {
                    return true;
                }
                return false;
            case 10:
                return !ByteString.f12895c.equals(UnsafeUtil.f13019c.h(j3, obj));
            case 11:
                if (UnsafeUtil.f13019c.f(j3, obj) != 0) {
                    return true;
                }
                return false;
            case 12:
                if (UnsafeUtil.f13019c.f(j3, obj) != 0) {
                    return true;
                }
                return false;
            case 13:
                if (UnsafeUtil.f13019c.f(j3, obj) != 0) {
                    return true;
                }
                return false;
            case 14:
                if (UnsafeUtil.f13019c.g(j3, obj) != 0) {
                    return true;
                }
                return false;
            case 15:
                if (UnsafeUtil.f13019c.f(j3, obj) != 0) {
                    return true;
                }
                return false;
            case 16:
                if (UnsafeUtil.f13019c.g(j3, obj) != 0) {
                    return true;
                }
                return false;
            case 17:
                if (UnsafeUtil.f13019c.h(j3, obj) != null) {
                    return true;
                }
                return false;
            default:
                ct0.c();
                return false;
        }
    }

    public final boolean p(int i2, Object obj, int i3, int i4, int i5) {
        if (i3 == 1048575) {
            return o(i2, obj);
        }
        return (i4 & i5) != 0;
    }

    public final boolean r(int i2, int i3, Object obj) {
        return UnsafeUtil.f13019c.f((long) (this.f12971a[i3 + 2] & 1048575), obj) == i2;
    }

    public final void s(Object obj, int i2, Object obj2, ExtensionRegistryLite extensionRegistryLite, Reader reader) {
        long jI = I(i2) & 1048575;
        Object objH = UnsafeUtil.f13019c.h(jI, obj);
        MapFieldSchema mapFieldSchema = this.o;
        if (objH == null) {
            objH = mapFieldSchema.f();
            UnsafeUtil.o(jI, obj, objH);
        } else if (mapFieldSchema.g(objH)) {
            MapFieldLite mapFieldLiteF = mapFieldSchema.f();
            mapFieldSchema.a(mapFieldLiteF, objH);
            UnsafeUtil.o(jI, obj, mapFieldLiteF);
            objH = mapFieldLiteF;
        }
        reader.j(mapFieldSchema.c(objH), mapFieldSchema.b(obj2), extensionRegistryLite);
    }

    public final void t(Object obj, Object obj2, int i2) {
        if (o(i2, obj2)) {
            long jI = I(i2) & 1048575;
            Unsafe unsafe = q;
            Object object = unsafe.getObject(obj2, jI);
            if (object == null) {
                lc0.h(this.f12971a[i2], obj2);
                return;
            }
            Schema schemaN = n(i2);
            if (!o(i2, obj)) {
                if (q(object)) {
                    Object objB = schemaN.b();
                    schemaN.a(objB, object);
                    unsafe.putObject(obj, jI, objB);
                } else {
                    unsafe.putObject(obj, jI, object);
                }
                D(i2, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, jI);
            if (!q(object2)) {
                Object objB2 = schemaN.b();
                schemaN.a(objB2, object2);
                unsafe.putObject(obj, jI, objB2);
                object2 = objB2;
            }
            schemaN.a(object2, object);
        }
    }

    public final void u(Object obj, Object obj2, int i2) {
        int[] iArr = this.f12971a;
        int i3 = iArr[i2];
        if (r(i3, i2, obj2)) {
            long jI = I(i2) & 1048575;
            Unsafe unsafe = q;
            Object object = unsafe.getObject(obj2, jI);
            if (object == null) {
                lc0.h(iArr[i2], obj2);
                return;
            }
            Schema schemaN = n(i2);
            if (!r(i3, i2, obj)) {
                if (q(object)) {
                    Object objB = schemaN.b();
                    schemaN.a(objB, object);
                    unsafe.putObject(obj, jI, objB);
                } else {
                    unsafe.putObject(obj, jI, object);
                }
                E(i3, i2, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, jI);
            if (!q(object2)) {
                Object objB2 = schemaN.b();
                schemaN.a(objB2, object2);
                unsafe.putObject(obj, jI, objB2);
                object2 = objB2;
            }
            schemaN.a(object2, object);
        }
    }

    public final Object v(int i2, Object obj) {
        Schema schemaN = n(i2);
        long jI = I(i2) & 1048575;
        if (!o(i2, obj)) {
            return schemaN.b();
        }
        Object object = q.getObject(obj, jI);
        if (q(object)) {
            return object;
        }
        Object objB = schemaN.b();
        if (object != null) {
            schemaN.a(objB, object);
        }
        return objB;
    }

    public final Object w(int i2, int i3, Object obj) {
        Schema schemaN = n(i3);
        if (!r(i2, i3, obj)) {
            return schemaN.b();
        }
        Object object = q.getObject(obj, I(i3) & 1048575);
        if (q(object)) {
            return object;
        }
        Object objB = schemaN.b();
        if (object != null) {
            schemaN.a(objB, object);
        }
        return objB;
    }
}
