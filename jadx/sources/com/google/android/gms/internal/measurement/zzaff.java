package com.google.android.gms.internal.measurement;

import defpackage.cj;
import defpackage.ct0;
import defpackage.md;
import defpackage.n00;
import defpackage.r81;
import defpackage.tr;
import defpackage.v7;
import defpackage.x1;
import defpackage.z81;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.asn1.eac.EACTags;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes2.dex */
final class zzaff<T> implements zzafp<T> {
    public static final int[] m = new int[0];
    public static final Unsafe n = zzagg.l();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f30435a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object[] f30436b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f30437c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final zzafc f30438e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f30439f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int[] f30440h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f30441i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f30442j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final zzafz f30443k;
    public final zzadg l;

    public zzaff(int[] iArr, Object[] objArr, int i2, int i3, zzafc zzafcVar, int[] iArr2, int i4, int i5, zzafz zzafzVar, zzadg zzadgVar) {
        this.f30435a = iArr;
        this.f30436b = objArr;
        this.f30437c = i2;
        this.d = i3;
        this.g = zzafcVar instanceof zzadu;
        boolean z = false;
        if (zzadgVar != null && (zzafcVar instanceof zzadr)) {
            z = true;
        }
        this.f30439f = z;
        this.f30440h = iArr2;
        this.f30441i = i4;
        this.f30442j = i5;
        this.f30443k = zzafzVar;
        this.l = zzadgVar;
        this.f30438e = zzafcVar;
    }

    public static Field A(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException e2) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String string = Arrays.toString(declaredFields);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 11 + name.length() + 29 + String.valueOf(string).length());
            cj.C(sb, "Field ", str, " for ", name);
            r81.g(n00.r(" not found. Known fields are ", string, sb), e2);
            return null;
        }
    }

    public static int k(int i2) {
        return (i2 >>> 20) & 255;
    }

    public static boolean l(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzadu) {
            return ((zzadu) obj).m();
        }
        return true;
    }

    public static void m(Object obj) {
        if (l(obj)) {
            return;
        }
        md.n("Mutating immutable message: ".concat(String.valueOf(obj)));
    }

    public static int n(long j2, Object obj) {
        return ((Integer) zzagg.i(j2, obj)).intValue();
    }

    public static long o(long j2, Object obj) {
        return ((Long) zzagg.i(j2, obj)).longValue();
    }

    public static final int w(byte[] bArr, int i2, int i3, zzagm zzagmVar, Class cls, zzacg zzacgVar) throws zzaeh {
        zzagm zzagmVar2 = zzagm.zza;
        switch (zzagmVar.ordinal()) {
            case 0:
                int i4 = i2 + 8;
                zzacgVar.f30361c = Double.valueOf(Double.longBitsToDouble(zzach.e(i2, bArr)));
                return i4;
            case 1:
                int i5 = i2 + 4;
                zzacgVar.f30361c = Float.valueOf(Float.intBitsToFloat(zzach.d(i2, bArr)));
                return i5;
            case 2:
            case 3:
                int iC = zzach.c(bArr, i2, zzacgVar);
                zzacgVar.f30361c = Long.valueOf(zzacgVar.f30360b);
                return iC;
            case 4:
            case 12:
            case 13:
                int iA = zzach.a(bArr, i2, zzacgVar);
                zzacgVar.f30361c = Integer.valueOf(zzacgVar.f30359a);
                return iA;
            case 5:
            case 15:
                int i6 = i2 + 8;
                zzacgVar.f30361c = Long.valueOf(zzach.e(i2, bArr));
                return i6;
            case 6:
            case 14:
                int i7 = i2 + 4;
                zzacgVar.f30361c = Integer.valueOf(zzach.d(i2, bArr));
                return i7;
            case 7:
                int iC2 = zzach.c(bArr, i2, zzacgVar);
                zzacgVar.f30361c = Boolean.valueOf(zzacgVar.f30360b != 0);
                return iC2;
            case 8:
                return zzach.f(bArr, i2, zzacgVar);
            case 9:
            default:
                v7.h("unsupported field type.");
                return 0;
            case 10:
                zzafp zzafpVarA = zzafl.f30448c.a(cls);
                Object objD0 = zzafpVarA.d0();
                int iH = zzach.h(objD0, zzafpVarA, bArr, i2, i3, zzacgVar);
                zzafpVarA.g(objD0);
                zzacgVar.f30361c = objD0;
                return iH;
            case 11:
                return zzach.g(bArr, i2, zzacgVar);
            case 16:
                int iA2 = zzach.a(bArr, i2, zzacgVar);
                zzacgVar.f30361c = Integer.valueOf(zzacv.j(zzacgVar.f30359a));
                return iA2;
            case 17:
                int iC3 = zzach.c(bArr, i2, zzacgVar);
                zzacgVar.f30361c = Long.valueOf(zzacv.k(zzacgVar.f30360b));
                return iC3;
        }
    }

    public static zzaga x(Object obj) {
        zzadu zzaduVar = (zzadu) obj;
        zzaga zzagaVar = zzaduVar.zzc;
        if (zzagaVar != zzaga.f30470f) {
            return zzagaVar;
        }
        zzaga zzagaVarA = zzaga.a();
        zzaduVar.zzc = zzagaVarA;
        return zzagaVarA;
    }

    /* JADX WARN: Code duplicated, block: B:124:0x0264  */
    /* JADX WARN: Code duplicated, block: B:125:0x0267  */
    /* JADX WARN: Code duplicated, block: B:128:0x0286  */
    /* JADX WARN: Code duplicated, block: B:129:0x0289  */
    /* JADX WARN: Code duplicated, block: B:169:0x0356  */
    /* JADX WARN: Code duplicated, block: B:184:0x03ad  */
    public static zzaff z(zzaez zzaezVar, zzafz zzafzVar, zzadh zzadhVar) {
        int i2;
        int iCharAt;
        int i3;
        int i4;
        int[] iArr;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        char cCharAt;
        int i10;
        int i11;
        char cCharAt2;
        int i12;
        char cCharAt3;
        int i13;
        char cCharAt4;
        int i14;
        char cCharAt5;
        int i15;
        char cCharAt6;
        int i16;
        char cCharAt7;
        int i17;
        int i18;
        Object[] objArr;
        int iObjectFieldOffset;
        int iObjectFieldOffset2;
        int i19;
        int i20;
        int i21;
        int i22;
        Field fieldA;
        int i23;
        char cCharAt8;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        Object obj;
        Field fieldA2;
        int i29;
        Object obj2;
        Field fieldA3;
        int i30;
        char cCharAt9;
        int i31;
        char cCharAt10;
        int i32;
        char cCharAt11;
        int i33;
        char cCharAt12;
        if (!(zzaezVar instanceof zzafn)) {
            r81.h();
            return null;
        }
        zzafn zzafnVar = (zzafn) zzaezVar;
        String str = zzafnVar.f30455b;
        int length = str.length();
        int i34 = 55296;
        if (str.charAt(0) >= 55296) {
            int i35 = 1;
            while (true) {
                i2 = i35 + 1;
                if (str.charAt(i35) < 55296) {
                    break;
                }
                i35 = i2;
            }
        } else {
            i2 = 1;
        }
        int i36 = i2 + 1;
        int iCharAt2 = str.charAt(i2);
        if (iCharAt2 >= 55296) {
            int i37 = iCharAt2 & 8191;
            int i38 = 13;
            while (true) {
                i33 = i36 + 1;
                cCharAt12 = str.charAt(i36);
                if (cCharAt12 < 55296) {
                    break;
                }
                i37 |= (cCharAt12 & 8191) << i38;
                i38 += 13;
                i36 = i33;
            }
            iCharAt2 = i37 | (cCharAt12 << i38);
            i36 = i33;
        }
        if (iCharAt2 == 0) {
            i4 = 0;
            i7 = 0;
            iCharAt = 0;
            i3 = 0;
            i6 = 0;
            i8 = 0;
            iArr = m;
            i5 = 0;
        } else {
            int i39 = i36 + 1;
            int iCharAt3 = str.charAt(i36);
            if (iCharAt3 >= 55296) {
                int i40 = iCharAt3 & 8191;
                int i41 = 13;
                while (true) {
                    i16 = i39 + 1;
                    cCharAt7 = str.charAt(i39);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i40 |= (cCharAt7 & 8191) << i41;
                    i41 += 13;
                    i39 = i16;
                }
                iCharAt3 = i40 | (cCharAt7 << i41);
                i39 = i16;
            }
            int i42 = i39 + 1;
            int iCharAt4 = str.charAt(i39);
            if (iCharAt4 >= 55296) {
                int i43 = iCharAt4 & 8191;
                int i44 = 13;
                while (true) {
                    i15 = i42 + 1;
                    cCharAt6 = str.charAt(i42);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i43 |= (cCharAt6 & 8191) << i44;
                    i44 += 13;
                    i42 = i15;
                }
                iCharAt4 = i43 | (cCharAt6 << i44);
                i42 = i15;
            }
            int i45 = i42 + 1;
            int iCharAt5 = str.charAt(i42);
            if (iCharAt5 >= 55296) {
                int i46 = iCharAt5 & 8191;
                int i47 = 13;
                while (true) {
                    i14 = i45 + 1;
                    cCharAt5 = str.charAt(i45);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i46 |= (cCharAt5 & 8191) << i47;
                    i47 += 13;
                    i45 = i14;
                }
                iCharAt5 = i46 | (cCharAt5 << i47);
                i45 = i14;
            }
            int i48 = i45 + 1;
            int iCharAt6 = str.charAt(i45);
            if (iCharAt6 >= 55296) {
                int i49 = iCharAt6 & 8191;
                int i50 = 13;
                while (true) {
                    i13 = i48 + 1;
                    cCharAt4 = str.charAt(i48);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i49 |= (cCharAt4 & 8191) << i50;
                    i50 += 13;
                    i48 = i13;
                }
                iCharAt6 = i49 | (cCharAt4 << i50);
                i48 = i13;
            }
            int i51 = i48 + 1;
            iCharAt = str.charAt(i48);
            if (iCharAt >= 55296) {
                int i52 = iCharAt & 8191;
                int i53 = 13;
                while (true) {
                    i12 = i51 + 1;
                    cCharAt3 = str.charAt(i51);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i52 |= (cCharAt3 & 8191) << i53;
                    i53 += 13;
                    i51 = i12;
                }
                iCharAt = i52 | (cCharAt3 << i53);
                i51 = i12;
            }
            int i54 = i51 + 1;
            int iCharAt7 = str.charAt(i51);
            if (iCharAt7 >= 55296) {
                int i55 = iCharAt7 & 8191;
                int i56 = 13;
                while (true) {
                    i11 = i54 + 1;
                    cCharAt2 = str.charAt(i54);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i55 |= (cCharAt2 & 8191) << i56;
                    i56 += 13;
                    i54 = i11;
                }
                iCharAt7 = i55 | (cCharAt2 << i56);
                i54 = i11;
            }
            int i57 = i54 + 1;
            if (str.charAt(i54) >= 55296) {
                while (true) {
                    i10 = i57 + 1;
                    if (str.charAt(i57) < 55296) {
                        break;
                    }
                    i57 = i10;
                }
                i57 = i10;
            }
            int i58 = i57 + 1;
            int iCharAt8 = str.charAt(i57);
            if (iCharAt8 >= 55296) {
                int i59 = iCharAt8 & 8191;
                int i60 = 13;
                while (true) {
                    i9 = i58 + 1;
                    cCharAt = str.charAt(i58);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i59 |= (cCharAt & 8191) << i60;
                    i60 += 13;
                    i58 = i9;
                }
                iCharAt8 = i59 | (cCharAt << i60);
                i58 = i9;
            }
            int i61 = iCharAt3 + iCharAt3 + iCharAt4;
            int[] iArr2 = new int[iCharAt8 + iCharAt7 + iCharAt3];
            int i62 = iCharAt7;
            i3 = iCharAt5;
            i4 = i62;
            iArr = iArr2;
            i5 = iCharAt3;
            i36 = i58;
            i6 = iCharAt6;
            i7 = i61;
            i8 = iCharAt8;
        }
        Unsafe unsafe = n;
        Object[] objArr2 = zzafnVar.f30456c;
        Class<?> cls = zzafnVar.f30454a.getClass();
        int i63 = i8 + i4;
        int i64 = iCharAt + iCharAt;
        int[] iArr3 = new int[iCharAt * 3];
        Object[] objArr3 = new Object[i64];
        int i65 = i63;
        int i66 = i8;
        int i67 = 0;
        int i68 = 0;
        while (i36 < length) {
            int i69 = i36 + 1;
            int iCharAt9 = str.charAt(i36);
            if (iCharAt9 >= i34) {
                int i70 = iCharAt9 & 8191;
                int i71 = i69;
                int i72 = 13;
                while (true) {
                    i32 = i71 + 1;
                    cCharAt11 = str.charAt(i71);
                    i17 = length;
                    if (cCharAt11 < 55296) {
                        break;
                    }
                    i70 |= (cCharAt11 & 8191) << i72;
                    i72 += 13;
                    i71 = i32;
                    length = i17;
                }
                iCharAt9 = i70 | (cCharAt11 << i72);
                i18 = i32;
            } else {
                i17 = length;
                i18 = i69;
            }
            int i73 = i18 + 1;
            int iCharAt10 = str.charAt(i18);
            Object[] objArr4 = objArr2;
            char c2 = 55296;
            if (iCharAt10 >= 55296) {
                int i74 = iCharAt10 & 8191;
                int i75 = 13;
                while (true) {
                    i31 = i73 + 1;
                    cCharAt10 = str.charAt(i73);
                    if (cCharAt10 < c2) {
                        break;
                    }
                    i74 |= (cCharAt10 & 8191) << i75;
                    i75 += 13;
                    i73 = i31;
                    c2 = 55296;
                }
                iCharAt10 = i74 | (cCharAt10 << i75);
                i73 = i31;
            }
            if ((iCharAt10 & 1024) != 0) {
                iArr[i67] = i68;
                i67++;
            }
            int i76 = iCharAt10 & 255;
            int i77 = iCharAt9;
            int i78 = iCharAt10 & 2048;
            if (i76 >= 51) {
                int i79 = i73 + 1;
                int iCharAt11 = str.charAt(i73);
                char c3 = 55296;
                if (iCharAt11 >= 55296) {
                    int i80 = iCharAt11 & 8191;
                    int i81 = i79;
                    int i82 = 13;
                    while (true) {
                        i30 = i81 + 1;
                        cCharAt9 = str.charAt(i81);
                        if (cCharAt9 < c3) {
                            break;
                        }
                        i80 |= (cCharAt9 & 8191) << i82;
                        i82 += 13;
                        i81 = i30;
                        c3 = 55296;
                    }
                    iCharAt11 = i80 | (cCharAt9 << i82);
                    i25 = i30;
                } else {
                    i25 = i79;
                }
                int i83 = i25;
                int i84 = i76 - 51;
                int i85 = iCharAt11;
                if (i84 == 9 || i84 == 17) {
                    i26 = i7 + 1;
                    int i86 = i68 / 3;
                    objArr3[i86 + i86 + 1] = objArr4[i7];
                } else {
                    if (i84 != 12) {
                        i27 = i78;
                    } else if (zzafnVar.f0() == 1 || i78 != 0) {
                        i26 = i7 + 1;
                        int i87 = i68 / 3;
                        objArr3[i87 + i87 + 1] = objArr4[i7];
                    } else {
                        i27 = 0;
                    }
                    i28 = i85 + i85;
                    int i88 = i27;
                    obj = objArr4[i28];
                    if (obj instanceof Field) {
                        fieldA2 = (Field) obj;
                    } else {
                        fieldA2 = A(cls, (String) obj);
                        objArr4[i28] = fieldA2;
                        iArr[i65] = i68;
                        i65++;
                    }
                    int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldA2);
                    i29 = i28 + 1;
                    obj2 = objArr4[i29];
                    if (obj2 instanceof Field) {
                        fieldA3 = (Field) obj2;
                    } else {
                        fieldA3 = A(cls, (String) obj2);
                        objArr4[i29] = fieldA3;
                    }
                    i73 = i83;
                    i19 = iObjectFieldOffset3;
                    i22 = 0;
                    i20 = 55296;
                    objArr = objArr3;
                    i5 = i5;
                    cls = cls;
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldA3);
                    i21 = i88;
                }
                i7 = i26;
                i27 = i78;
                i28 = i85 + i85;
                int i89 = i27;
                obj = objArr4[i28];
                if (obj instanceof Field) {
                    fieldA2 = (Field) obj;
                } else {
                    fieldA2 = A(cls, (String) obj);
                    objArr4[i28] = fieldA2;
                    iArr[i65] = i68;
                    i65++;
                }
                int iObjectFieldOffset4 = (int) unsafe.objectFieldOffset(fieldA2);
                i29 = i28 + 1;
                obj2 = objArr4[i29];
                if (obj2 instanceof Field) {
                    fieldA3 = (Field) obj2;
                } else {
                    fieldA3 = A(cls, (String) obj2);
                    objArr4[i29] = fieldA3;
                }
                i73 = i83;
                i19 = iObjectFieldOffset4;
                i22 = 0;
                i20 = 55296;
                objArr = objArr3;
                i5 = i5;
                cls = cls;
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldA3);
                i21 = i89;
            } else {
                int i90 = i7 + 1;
                Field fieldA4 = A(cls, (String) objArr4[i7]);
                objArr = objArr3;
                if (i76 == 9 || i76 == 17) {
                    int i91 = i68 / 3;
                    objArr[i91 + i91 + 1] = fieldA4.getType();
                } else {
                    if (i76 != 27) {
                        if (i76 == 49) {
                            i7 += 2;
                            i24 = 1;
                        } else if (i76 == 12 || i76 == 30 || i76 == 44) {
                            i5 = i5;
                            if (zzafnVar.f0() == 1 || i78 != 0) {
                                i7 += 2;
                                int i92 = i68 / 3;
                                objArr[i92 + i92 + 1] = objArr4[i90];
                                cls = cls;
                            } else {
                                cls = cls;
                                i7 = i90;
                                i78 = 0;
                            }
                        } else if (i76 == 50) {
                            int i93 = i7 + 2;
                            i66++;
                            iArr[i66] = i68;
                            int i94 = i68 / 3;
                            int i95 = i94 + i94;
                            objArr[i95] = objArr4[i90];
                            if (i78 != 0) {
                                i7 += 3;
                                objArr[i95 + 1] = objArr4[i93];
                            } else {
                                i7 = i93;
                                i78 = 0;
                            }
                            i5 = i5;
                        }
                        iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldA4);
                        iObjectFieldOffset2 = 1048575;
                        if ((iCharAt10 & 4096) != 0 || i76 > 17) {
                            i19 = iObjectFieldOffset;
                            i20 = 55296;
                            i21 = i78;
                            i22 = 0;
                        } else {
                            int i96 = i73 + 1;
                            int iCharAt12 = str.charAt(i73);
                            if (iCharAt12 >= 55296) {
                                int i97 = iCharAt12 & 8191;
                                int i98 = 13;
                                while (true) {
                                    i23 = i96 + 1;
                                    cCharAt8 = str.charAt(i96);
                                    if (cCharAt8 < 55296) {
                                        break;
                                    }
                                    i97 |= (cCharAt8 & 8191) << i98;
                                    i98 += 13;
                                    i96 = i23;
                                }
                                iCharAt12 = i97 | (cCharAt8 << i98);
                                i96 = i23;
                            }
                            int i99 = (iCharAt12 / 32) + i5 + i5;
                            Object obj3 = objArr4[i99];
                            if (obj3 instanceof Field) {
                                fieldA = (Field) obj3;
                            } else {
                                fieldA = A(cls, (String) obj3);
                                objArr4[i99] = fieldA;
                            }
                            i19 = iObjectFieldOffset;
                            iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldA);
                            i22 = iCharAt12 % 32;
                            i73 = i96;
                            i21 = i78;
                            i20 = 55296;
                        }
                    } else {
                        i24 = 1;
                        i7 += 2;
                    }
                    int i100 = i68 / 3;
                    objArr[i100 + i100 + i24] = objArr4[i90];
                    cls = cls;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldA4);
                    iObjectFieldOffset2 = 1048575;
                    if ((iCharAt10 & 4096) != 0) {
                        i19 = iObjectFieldOffset;
                        i20 = 55296;
                        i21 = i78;
                        i22 = 0;
                    } else {
                        i19 = iObjectFieldOffset;
                        i20 = 55296;
                        i21 = i78;
                        i22 = 0;
                    }
                }
                cls = cls;
                i7 = i90;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldA4);
                iObjectFieldOffset2 = 1048575;
                if ((iCharAt10 & 4096) != 0) {
                    i19 = iObjectFieldOffset;
                    i20 = 55296;
                    i21 = i78;
                    i22 = 0;
                } else {
                    i19 = iObjectFieldOffset;
                    i20 = 55296;
                    i21 = i78;
                    i22 = 0;
                }
            }
            int i101 = i68 + 1;
            iArr3[i68] = i77;
            int i102 = i68 + 2;
            iArr3[i101] = ((iCharAt10 & 512) != 0 ? PKIFailureInfo.duplicateCertReq : 0) | ((iCharAt10 & 256) != 0 ? 268435456 : 0) | (i21 != 0 ? Integer.MIN_VALUE : 0) | (i76 << 20) | i19;
            i68 += 3;
            iArr3[i102] = (i22 << 20) | iObjectFieldOffset2;
            i36 = i73;
            cls = cls;
            objArr2 = objArr4;
            i34 = i20;
            length = i17;
            objArr3 = objArr;
            i5 = i5;
            str = str;
        }
        return new zzaff(iArr3, objArr3, i3, i6, zzafnVar.f30454a, iArr, i8, i63, zzafzVar, zzadhVar);
    }

    public final void B(Object obj, Object obj2, int i2) {
        if (r(i2, obj2)) {
            int iJ = j(i2) & 1048575;
            Unsafe unsafe = n;
            long j2 = iJ;
            Object object = unsafe.getObject(obj2, j2);
            if (object == null) {
                int i3 = this.f30435a[i2];
                String string = obj2.toString();
                StringBuilder sb = new StringBuilder(String.valueOf(i3).length() + 38 + string.length());
                sb.append("Source subfield ");
                sb.append(i3);
                sb.append(" is present but null: ");
                sb.append(string);
                throw new IllegalStateException(sb.toString());
            }
            zzafp zzafpVarD = D(i2);
            if (!r(i2, obj)) {
                if (l(object)) {
                    Object objD0 = zzafpVarD.d0();
                    zzafpVarD.d(objD0, object);
                    unsafe.putObject(obj, j2, objD0);
                } else {
                    unsafe.putObject(obj, j2, object);
                }
                s(i2, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, j2);
            if (!l(object2)) {
                Object objD1 = zzafpVarD.d0();
                zzafpVarD.d(objD1, object2);
                unsafe.putObject(obj, j2, objD1);
                object2 = objD1;
            }
            zzafpVarD.d(object2, object);
        }
    }

    public final void C(Object obj, Object obj2, int i2) {
        int[] iArr = this.f30435a;
        int i3 = iArr[i2];
        if (t(i3, i2, obj2)) {
            int iJ = j(i2) & 1048575;
            Unsafe unsafe = n;
            long j2 = iJ;
            Object object = unsafe.getObject(obj2, j2);
            if (object == null) {
                int i4 = iArr[i2];
                String string = obj2.toString();
                StringBuilder sb = new StringBuilder(String.valueOf(i4).length() + 38 + string.length());
                sb.append("Source subfield ");
                sb.append(i4);
                sb.append(" is present but null: ");
                sb.append(string);
                throw new IllegalStateException(sb.toString());
            }
            zzafp zzafpVarD = D(i2);
            if (!t(i3, i2, obj)) {
                if (l(object)) {
                    Object objD0 = zzafpVarD.d0();
                    zzafpVarD.d(objD0, object);
                    unsafe.putObject(obj, j2, objD0);
                } else {
                    unsafe.putObject(obj, j2, object);
                }
                u(i3, i2, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, j2);
            if (!l(object2)) {
                Object objD1 = zzafpVarD.d0();
                zzafpVarD.d(objD1, object2);
                unsafe.putObject(obj, j2, objD1);
                object2 = objD1;
            }
            zzafpVarD.d(object2, object);
        }
    }

    public final zzafp D(int i2) {
        int i3 = i2 / 3;
        int i4 = i3 + i3;
        Object[] objArr = this.f30436b;
        zzafp zzafpVar = (zzafp) objArr[i4];
        if (zzafpVar != null) {
            return zzafpVar;
        }
        zzafp zzafpVarA = zzafl.f30448c.a((Class) objArr[i4 + 1]);
        objArr[i4] = zzafpVarA;
        return zzafpVarA;
    }

    public final Object E(int i2) {
        int i3 = i2 / 3;
        return this.f30436b[i3 + i3];
    }

    public final zzadz F(int i2) {
        int i3 = i2 / 3;
        return (zzadz) this.f30436b[i3 + i3 + 1];
    }

    public final Object G(int i2, Object obj) {
        zzafp zzafpVarD = D(i2);
        int iJ = j(i2) & 1048575;
        if (!r(i2, obj)) {
            return zzafpVarD.d0();
        }
        Object object = n.getObject(obj, iJ);
        if (l(object)) {
            return object;
        }
        Object objD0 = zzafpVarD.d0();
        if (object != null) {
            zzafpVarD.d(objD0, object);
        }
        return objD0;
    }

    public final void H(Object obj, Object obj2, int i2) {
        n.putObject(obj, j(i2) & 1048575, obj2);
        s(i2, obj);
    }

    public final Object I(int i2, int i3, Object obj) {
        zzafp zzafpVarD = D(i3);
        if (!t(i2, i3, obj)) {
            return zzafpVarD.d0();
        }
        Object object = n.getObject(obj, j(i3) & 1048575);
        if (l(object)) {
            return object;
        }
        Object objD0 = zzafpVarD.d0();
        if (object != null) {
            zzafpVarD.d(objD0, object);
        }
        return objD0;
    }

    public final void J(Object obj, int i2, Object obj2, int i3) {
        n.putObject(obj, j(i3) & 1048575, obj2);
        u(i2, i3, obj);
    }

    public final Object K(Object obj, int i2, Object obj2, zzafz zzafzVar, Object obj3) {
        zzadz zzadzVarF;
        int i3 = this.f30435a[i2];
        Object objI = zzagg.i(j(i2) & 1048575, obj);
        if (objI == null || (zzadzVarF = F(i2)) == null) {
            return obj2;
        }
        zzaeu zzaeuVar = ((zzaev) E(i2)).f30429a;
        Iterator it = ((zzaew) objI).entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (!zzadzVarF.e(((Integer) entry.getValue()).intValue())) {
                if (obj2 == null) {
                    obj2 = zzafzVar.a(obj3);
                }
                int iB = zzaev.b(zzaeuVar, entry.getKey(), entry.getValue());
                zzacr zzacrVar = zzacr.f30367c;
                byte[] bArr = new byte[iB];
                boolean z = zzada.f30392b;
                zzacx zzacxVar = new zzacx(bArr, iB);
                try {
                    zzaev.a(zzacxVar, zzaeuVar, entry.getKey(), entry.getValue());
                    zzacxVar.e();
                    zzacq zzacqVar = new zzacq(bArr);
                    ((zzagb) zzafzVar).getClass();
                    ((zzaga) obj2).d((i3 << 3) | 2, zzacqVar);
                    it.remove();
                } catch (IOException e2) {
                    x1.m(e2);
                    return null;
                }
            }
        }
        return obj2;
    }

    public final void L(int i2, zzacw zzacwVar, Object obj) {
        long j2 = i2 & 1048575;
        if ((536870912 & i2) != 0) {
            zzagg.j(j2, obj, zzacwVar.H());
        } else if (this.g) {
            zzagg.j(j2, obj, zzacwVar.G());
        } else {
            zzagg.j(j2, obj, zzacwVar.K());
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0025  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.google.android.gms.internal.measurement.zzafp
    public final void a(Object obj, zzadb zzadbVar) {
        Map.Entry entry;
        int i2;
        zzaff<T> zzaffVar = this;
        zzada zzadaVar = zzadbVar.f30394a;
        if (zzaffVar.f30439f) {
            zzadk zzadkVar = ((zzadr) obj).zzb;
            if (zzadkVar.f30402a.isEmpty()) {
                entry = null;
            } else {
                entry = (Map.Entry) zzadkVar.b().next();
            }
        } else {
            entry = null;
        }
        Unsafe unsafe = n;
        int i3 = 1048575;
        int i4 = 1048575;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            int[] iArr = zzaffVar.f30435a;
            if (i5 >= iArr.length) {
                if (entry == null) {
                    ((zzadu) obj).zzc.b(zzadbVar);
                    return;
                } else {
                    tr.x(entry.getKey());
                    throw null;
                }
            }
            int iJ = zzaffVar.j(i5);
            int iK = k(iJ);
            int i7 = iArr[i5];
            if (iK <= 17) {
                int i8 = iArr[i5 + 2];
                int i9 = i8 & i3;
                if (i9 != i4) {
                    i6 = i9 == i3 ? 0 : unsafe.getInt(obj, i9);
                    i4 = i9;
                }
                i2 = 1 << (i8 >>> 20);
            } else {
                i2 = 0;
            }
            if (entry != null) {
                tr.x(entry.getKey());
                throw null;
            }
            long j2 = iJ & i3;
            switch (iK) {
                case 0:
                    if (zzaffVar.q(i5, obj, i4, i6, i2)) {
                        zzadbVar.g(zzagg.f30478c.f(j2, obj), i7);
                    }
                    break;
                case 1:
                    if (zzaffVar.q(i5, obj, i4, i6, i2)) {
                        zzadbVar.f(zzagg.f30478c.d(j2, obj), i7);
                    }
                    break;
                case 2:
                    if (zzaffVar.q(i5, obj, i4, i6, i2)) {
                        zzadbVar.d(i7, unsafe.getLong(obj, j2));
                    }
                    break;
                case 3:
                    if (zzaffVar.q(i5, obj, i4, i6, i2)) {
                        zzadbVar.i(i7, unsafe.getLong(obj, j2));
                    }
                    break;
                case 4:
                    if (zzaffVar.q(i5, obj, i4, i6, i2)) {
                        zzadbVar.j(i7, unsafe.getInt(obj, j2));
                    }
                    break;
                case 5:
                    if (zzaffVar.q(i5, obj, i4, i6, i2)) {
                        zzadbVar.k(i7, unsafe.getLong(obj, j2));
                    }
                    break;
                case 6:
                    if (zzaffVar.q(i5, obj, i4, i6, i2)) {
                        zzadbVar.l(i7, unsafe.getInt(obj, j2));
                    }
                    break;
                case 7:
                    if (zzaffVar.q(i5, obj, i4, i6, i2)) {
                        zzadbVar.m(i7, zzagg.f30478c.b(j2, obj));
                    }
                    break;
                case 8:
                    if (zzaffVar.q(i5, obj, i4, i6, i2)) {
                        Object object = unsafe.getObject(obj, j2);
                        if (object instanceof String) {
                            zzadaVar.m(i7, (String) object);
                        } else {
                            zzadbVar.n(i7, (zzacr) object);
                        }
                    }
                    break;
                case 9:
                    if (zzaffVar.q(i5, obj, i4, i6, i2)) {
                        zzadbVar.r(i7, unsafe.getObject(obj, j2), zzaffVar.D(i5));
                    }
                    break;
                case 10:
                    if (zzaffVar.q(i5, obj, i4, i6, i2)) {
                        zzadbVar.n(i7, (zzacr) unsafe.getObject(obj, j2));
                    }
                    break;
                case 11:
                    if (zzaffVar.q(i5, obj, i4, i6, i2)) {
                        zzadbVar.o(i7, unsafe.getInt(obj, j2));
                    }
                    break;
                case 12:
                    if (zzaffVar.q(i5, obj, i4, i6, i2)) {
                        zzadbVar.h(i7, unsafe.getInt(obj, j2));
                    }
                    break;
                case 13:
                    if (zzaffVar.q(i5, obj, i4, i6, i2)) {
                        zzadbVar.c(i7, unsafe.getInt(obj, j2));
                    }
                    break;
                case 14:
                    if (zzaffVar.q(i5, obj, i4, i6, i2)) {
                        zzadbVar.e(i7, unsafe.getLong(obj, j2));
                    }
                    break;
                case 15:
                    if (zzaffVar.q(i5, obj, i4, i6, i2)) {
                        zzadbVar.p(i7, unsafe.getInt(obj, j2));
                    }
                    break;
                case 16:
                    if (zzaffVar.q(i5, obj, i4, i6, i2)) {
                        zzadbVar.q(i7, unsafe.getLong(obj, j2));
                    }
                    break;
                case 17:
                    if (zzaffVar.q(i5, obj, i4, i6, i2)) {
                        zzadbVar.s(i7, unsafe.getObject(obj, j2), zzaffVar.D(i5));
                    }
                    break;
                case 18:
                    int i10 = iArr[i5];
                    List list = (List) unsafe.getObject(obj, j2);
                    zzagb zzagbVar = zzafq.f30457a;
                    if (list != null && !list.isEmpty()) {
                        if (list instanceof zzadc) {
                            r81.h();
                            return;
                        } else {
                            for (int i11 = 0; i11 < list.size(); i11++) {
                                zzadaVar.k(i10, Double.doubleToRawLongBits(((Double) list.get(i11)).doubleValue()));
                            }
                        }
                    }
                    break;
                case 19:
                    int i12 = iArr[i5];
                    List list2 = (List) unsafe.getObject(obj, j2);
                    zzagb zzagbVar2 = zzafq.f30457a;
                    if (list2 != null && !list2.isEmpty()) {
                        if (list2 instanceof zzadm) {
                            r81.h();
                            return;
                        } else {
                            for (int i13 = 0; i13 < list2.size(); i13++) {
                                zzadaVar.i(i12, Float.floatToRawIntBits(((Float) list2.get(i13)).floatValue()));
                            }
                        }
                    }
                    break;
                case 20:
                    int i14 = iArr[i5];
                    List list3 = (List) unsafe.getObject(obj, j2);
                    zzagb zzagbVar3 = zzafq.f30457a;
                    if (list3 != null && !list3.isEmpty()) {
                        if (list3 instanceof zzaeq) {
                            zzaeq zzaeqVar = (zzaeq) list3;
                            for (int i15 = 0; i15 < zzaeqVar.d; i15++) {
                                zzadaVar.j(i14, zzaeqVar.C(i15));
                            }
                        } else {
                            for (int i16 = 0; i16 < list3.size(); i16++) {
                                zzadaVar.j(i14, ((Long) list3.get(i16)).longValue());
                            }
                        }
                    }
                    break;
                case 21:
                    int i17 = iArr[i5];
                    List list4 = (List) unsafe.getObject(obj, j2);
                    zzagb zzagbVar4 = zzafq.f30457a;
                    if (list4 != null && !list4.isEmpty()) {
                        if (list4 instanceof zzaeq) {
                            zzaeq zzaeqVar2 = (zzaeq) list4;
                            for (int i18 = 0; i18 < zzaeqVar2.d; i18++) {
                                zzadaVar.j(i17, zzaeqVar2.C(i18));
                            }
                        } else {
                            for (int i19 = 0; i19 < list4.size(); i19++) {
                                zzadaVar.j(i17, ((Long) list4.get(i19)).longValue());
                            }
                        }
                    }
                    break;
                case 22:
                    int i20 = iArr[i5];
                    List list5 = (List) unsafe.getObject(obj, j2);
                    zzagb zzagbVar5 = zzafq.f30457a;
                    if (list5 != null && !list5.isEmpty()) {
                        if (list5 instanceof zzadv) {
                            zzadv zzadvVar = (zzadv) list5;
                            for (int i21 = 0; i21 < zzadvVar.d; i21++) {
                                zzadaVar.g(i20, zzadvVar.y(i21));
                            }
                        } else {
                            for (int i22 = 0; i22 < list5.size(); i22++) {
                                zzadaVar.g(i20, ((Integer) list5.get(i22)).intValue());
                            }
                        }
                    }
                    break;
                case 23:
                    int i23 = iArr[i5];
                    List list6 = (List) unsafe.getObject(obj, j2);
                    zzagb zzagbVar6 = zzafq.f30457a;
                    if (list6 != null && !list6.isEmpty()) {
                        if (list6 instanceof zzaeq) {
                            zzaeq zzaeqVar3 = (zzaeq) list6;
                            for (int i24 = 0; i24 < zzaeqVar3.d; i24++) {
                                zzadaVar.k(i23, zzaeqVar3.C(i24));
                            }
                        } else {
                            for (int i25 = 0; i25 < list6.size(); i25++) {
                                zzadaVar.k(i23, ((Long) list6.get(i25)).longValue());
                            }
                        }
                    }
                    break;
                case 24:
                    int i26 = iArr[i5];
                    List list7 = (List) unsafe.getObject(obj, j2);
                    zzagb zzagbVar7 = zzafq.f30457a;
                    if (list7 != null && !list7.isEmpty()) {
                        if (list7 instanceof zzadv) {
                            zzadv zzadvVar2 = (zzadv) list7;
                            for (int i27 = 0; i27 < zzadvVar2.d; i27++) {
                                zzadaVar.i(i26, zzadvVar2.y(i27));
                            }
                        } else {
                            for (int i28 = 0; i28 < list7.size(); i28++) {
                                zzadaVar.i(i26, ((Integer) list7.get(i28)).intValue());
                            }
                        }
                    }
                    break;
                case 25:
                    int i29 = iArr[i5];
                    List list8 = (List) unsafe.getObject(obj, j2);
                    zzagb zzagbVar8 = zzafq.f30457a;
                    if (list8 != null && !list8.isEmpty()) {
                        if (list8 instanceof zzaci) {
                            r81.h();
                            return;
                        } else {
                            for (int i30 = 0; i30 < list8.size(); i30++) {
                                zzadaVar.l(i29, ((Boolean) list8.get(i30)).booleanValue());
                            }
                        }
                    }
                    break;
                case 26:
                    int i31 = iArr[i5];
                    List list9 = (List) unsafe.getObject(obj, j2);
                    zzagb zzagbVar9 = zzafq.f30457a;
                    if (list9 != null && !list9.isEmpty()) {
                        zzadbVar.a(i31, list9);
                    }
                    break;
                case 27:
                    int i32 = iArr[i5];
                    List list10 = (List) unsafe.getObject(obj, j2);
                    zzafp zzafpVarD = zzaffVar.D(i5);
                    zzagb zzagbVar10 = zzafq.f30457a;
                    if (list10 != null && !list10.isEmpty()) {
                        for (int i33 = 0; i33 < list10.size(); i33++) {
                            zzadbVar.r(i32, list10.get(i33), zzafpVarD);
                        }
                    }
                    break;
                case 28:
                    int i34 = iArr[i5];
                    List list11 = (List) unsafe.getObject(obj, j2);
                    zzagb zzagbVar11 = zzafq.f30457a;
                    if (list11 != null && !list11.isEmpty()) {
                        zzadbVar.b(i34, list11);
                    }
                    break;
                case 29:
                    int i35 = iArr[i5];
                    List list12 = (List) unsafe.getObject(obj, j2);
                    zzagb zzagbVar12 = zzafq.f30457a;
                    if (list12 != null && !list12.isEmpty()) {
                        if (list12 instanceof zzadv) {
                            zzadv zzadvVar3 = (zzadv) list12;
                            for (int i36 = 0; i36 < zzadvVar3.d; i36++) {
                                zzadaVar.h(i35, zzadvVar3.y(i36));
                            }
                        } else {
                            for (int i37 = 0; i37 < list12.size(); i37++) {
                                zzadaVar.h(i35, ((Integer) list12.get(i37)).intValue());
                            }
                        }
                    }
                    break;
                case 30:
                    int i38 = iArr[i5];
                    List list13 = (List) unsafe.getObject(obj, j2);
                    zzagb zzagbVar13 = zzafq.f30457a;
                    if (list13 != null && !list13.isEmpty()) {
                        if (list13 instanceof zzadv) {
                            zzadv zzadvVar4 = (zzadv) list13;
                            for (int i39 = 0; i39 < zzadvVar4.d; i39++) {
                                zzadaVar.g(i38, zzadvVar4.y(i39));
                            }
                        } else {
                            for (int i40 = 0; i40 < list13.size(); i40++) {
                                zzadaVar.g(i38, ((Integer) list13.get(i40)).intValue());
                            }
                        }
                    }
                    break;
                case 31:
                    int i41 = iArr[i5];
                    List list14 = (List) unsafe.getObject(obj, j2);
                    zzagb zzagbVar14 = zzafq.f30457a;
                    if (list14 != null && !list14.isEmpty()) {
                        if (list14 instanceof zzadv) {
                            zzadv zzadvVar5 = (zzadv) list14;
                            for (int i42 = 0; i42 < zzadvVar5.d; i42++) {
                                zzadaVar.i(i41, zzadvVar5.y(i42));
                            }
                        } else {
                            for (int i43 = 0; i43 < list14.size(); i43++) {
                                zzadaVar.i(i41, ((Integer) list14.get(i43)).intValue());
                            }
                        }
                    }
                    break;
                case 32:
                    int i44 = iArr[i5];
                    List list15 = (List) unsafe.getObject(obj, j2);
                    zzagb zzagbVar15 = zzafq.f30457a;
                    if (list15 != null && !list15.isEmpty()) {
                        if (list15 instanceof zzaeq) {
                            zzaeq zzaeqVar4 = (zzaeq) list15;
                            for (int i45 = 0; i45 < zzaeqVar4.d; i45++) {
                                zzadaVar.k(i44, zzaeqVar4.C(i45));
                            }
                        } else {
                            for (int i46 = 0; i46 < list15.size(); i46++) {
                                zzadaVar.k(i44, ((Long) list15.get(i46)).longValue());
                            }
                        }
                    }
                    break;
                case 33:
                    int i47 = iArr[i5];
                    List list16 = (List) unsafe.getObject(obj, j2);
                    zzagb zzagbVar16 = zzafq.f30457a;
                    if (list16 != null && !list16.isEmpty()) {
                        if (list16 instanceof zzadv) {
                            zzadv zzadvVar6 = (zzadv) list16;
                            for (int i48 = 0; i48 < zzadvVar6.d; i48++) {
                                int iY = zzadvVar6.y(i48);
                                zzadaVar.h(i47, (iY >> 31) ^ (iY + iY));
                            }
                        } else {
                            for (int i49 = 0; i49 < list16.size(); i49++) {
                                int iIntValue = ((Integer) list16.get(i49)).intValue();
                                zzadaVar.h(i47, (iIntValue >> 31) ^ (iIntValue + iIntValue));
                            }
                        }
                    }
                    break;
                case 34:
                    int i50 = iArr[i5];
                    List list17 = (List) unsafe.getObject(obj, j2);
                    zzagb zzagbVar17 = zzafq.f30457a;
                    if (list17 != null && !list17.isEmpty()) {
                        if (list17 instanceof zzaeq) {
                            zzaeq zzaeqVar5 = (zzaeq) list17;
                            for (int i51 = 0; i51 < zzaeqVar5.d; i51++) {
                                long jC = zzaeqVar5.C(i51);
                                zzadaVar.j(i50, (jC >> 63) ^ (jC + jC));
                            }
                        } else {
                            for (int i52 = 0; i52 < list17.size(); i52++) {
                                long jLongValue = ((Long) list17.get(i52)).longValue();
                                zzadaVar.j(i50, (jLongValue >> 63) ^ (jLongValue + jLongValue));
                            }
                        }
                    }
                    break;
                case 35:
                    int i53 = iArr[i5];
                    List list18 = (List) unsafe.getObject(obj, j2);
                    zzagb zzagbVar18 = zzafq.f30457a;
                    if (list18 != null && !list18.isEmpty()) {
                        if (list18 instanceof zzadc) {
                            r81.h();
                            return;
                        }
                        zzadaVar.f(i53, 2);
                        int i54 = 0;
                        for (int i55 = 0; i55 < list18.size(); i55++) {
                            ((Double) list18.get(i55)).getClass();
                            i54 += 8;
                        }
                        zzadaVar.v(i54);
                        for (int i56 = 0; i56 < list18.size(); i56++) {
                            zzadaVar.y(Double.doubleToRawLongBits(((Double) list18.get(i56)).doubleValue()));
                        }
                    }
                    break;
                case 36:
                    int i57 = iArr[i5];
                    List list19 = (List) unsafe.getObject(obj, j2);
                    zzagb zzagbVar19 = zzafq.f30457a;
                    if (list19 != null && !list19.isEmpty()) {
                        if (list19 instanceof zzadm) {
                            r81.h();
                            return;
                        }
                        zzadaVar.f(i57, 2);
                        int i58 = 0;
                        for (int i59 = 0; i59 < list19.size(); i59++) {
                            ((Float) list19.get(i59)).getClass();
                            i58 += 4;
                        }
                        zzadaVar.v(i58);
                        for (int i60 = 0; i60 < list19.size(); i60++) {
                            zzadaVar.w(Float.floatToRawIntBits(((Float) list19.get(i60)).floatValue()));
                        }
                    }
                    break;
                case 37:
                    int i61 = iArr[i5];
                    List list20 = (List) unsafe.getObject(obj, j2);
                    zzagb zzagbVar20 = zzafq.f30457a;
                    if (list20 != null && !list20.isEmpty()) {
                        if (list20 instanceof zzaeq) {
                            zzaeq zzaeqVar6 = (zzaeq) list20;
                            zzadaVar.f(i61, 2);
                            int iC = 0;
                            for (int i62 = 0; i62 < zzaeqVar6.d; i62++) {
                                iC += zzada.c(zzaeqVar6.C(i62));
                            }
                            zzadaVar.v(iC);
                            for (int i63 = 0; i63 < zzaeqVar6.d; i63++) {
                                zzadaVar.x(zzaeqVar6.C(i63));
                            }
                        } else {
                            zzadaVar.f(i61, 2);
                            int iC2 = 0;
                            for (int i64 = 0; i64 < list20.size(); i64++) {
                                iC2 += zzada.c(((Long) list20.get(i64)).longValue());
                            }
                            zzadaVar.v(iC2);
                            for (int i65 = 0; i65 < list20.size(); i65++) {
                                zzadaVar.x(((Long) list20.get(i65)).longValue());
                            }
                        }
                    }
                    break;
                case 38:
                    int i66 = iArr[i5];
                    List list21 = (List) unsafe.getObject(obj, j2);
                    zzagb zzagbVar21 = zzafq.f30457a;
                    if (list21 != null && !list21.isEmpty()) {
                        if (list21 instanceof zzaeq) {
                            zzaeq zzaeqVar7 = (zzaeq) list21;
                            zzadaVar.f(i66, 2);
                            int iC3 = 0;
                            for (int i67 = 0; i67 < zzaeqVar7.d; i67++) {
                                iC3 += zzada.c(zzaeqVar7.C(i67));
                            }
                            zzadaVar.v(iC3);
                            for (int i68 = 0; i68 < zzaeqVar7.d; i68++) {
                                zzadaVar.x(zzaeqVar7.C(i68));
                            }
                        } else {
                            zzadaVar.f(i66, 2);
                            int iC4 = 0;
                            for (int i69 = 0; i69 < list21.size(); i69++) {
                                iC4 += zzada.c(((Long) list21.get(i69)).longValue());
                            }
                            zzadaVar.v(iC4);
                            for (int i70 = 0; i70 < list21.size(); i70++) {
                                zzadaVar.x(((Long) list21.get(i70)).longValue());
                            }
                        }
                    }
                    break;
                case 39:
                    int i71 = iArr[i5];
                    List list22 = (List) unsafe.getObject(obj, j2);
                    zzagb zzagbVar22 = zzafq.f30457a;
                    if (list22 != null && !list22.isEmpty()) {
                        if (list22 instanceof zzadv) {
                            zzadv zzadvVar7 = (zzadv) list22;
                            zzadaVar.f(i71, 2);
                            int iC5 = 0;
                            for (int i72 = 0; i72 < zzadvVar7.d; i72++) {
                                iC5 += zzada.c(zzadvVar7.y(i72));
                            }
                            zzadaVar.v(iC5);
                            for (int i73 = 0; i73 < zzadvVar7.d; i73++) {
                                zzadaVar.u(zzadvVar7.y(i73));
                            }
                        } else {
                            zzadaVar.f(i71, 2);
                            int iC6 = 0;
                            for (int i74 = 0; i74 < list22.size(); i74++) {
                                iC6 += zzada.c(((Integer) list22.get(i74)).intValue());
                            }
                            zzadaVar.v(iC6);
                            for (int i75 = 0; i75 < list22.size(); i75++) {
                                zzadaVar.u(((Integer) list22.get(i75)).intValue());
                            }
                        }
                    }
                    break;
                case 40:
                    int i76 = iArr[i5];
                    List list23 = (List) unsafe.getObject(obj, j2);
                    zzagb zzagbVar23 = zzafq.f30457a;
                    if (list23 != null && !list23.isEmpty()) {
                        if (list23 instanceof zzaeq) {
                            zzaeq zzaeqVar8 = (zzaeq) list23;
                            zzadaVar.f(i76, 2);
                            int i77 = 0;
                            for (int i78 = 0; i78 < zzaeqVar8.d; i78++) {
                                zzaeqVar8.C(i78);
                                i77 += 8;
                            }
                            zzadaVar.v(i77);
                            for (int i79 = 0; i79 < zzaeqVar8.d; i79++) {
                                zzadaVar.y(zzaeqVar8.C(i79));
                            }
                        } else {
                            zzadaVar.f(i76, 2);
                            int i80 = 0;
                            for (int i81 = 0; i81 < list23.size(); i81++) {
                                ((Long) list23.get(i81)).getClass();
                                i80 += 8;
                            }
                            zzadaVar.v(i80);
                            for (int i82 = 0; i82 < list23.size(); i82++) {
                                zzadaVar.y(((Long) list23.get(i82)).longValue());
                            }
                        }
                    }
                    break;
                case 41:
                    int i83 = iArr[i5];
                    List list24 = (List) unsafe.getObject(obj, j2);
                    zzagb zzagbVar24 = zzafq.f30457a;
                    if (list24 != null && !list24.isEmpty()) {
                        if (list24 instanceof zzadv) {
                            zzadv zzadvVar8 = (zzadv) list24;
                            zzadaVar.f(i83, 2);
                            int i84 = 0;
                            for (int i85 = 0; i85 < zzadvVar8.d; i85++) {
                                zzadvVar8.y(i85);
                                i84 += 4;
                            }
                            zzadaVar.v(i84);
                            for (int i86 = 0; i86 < zzadvVar8.d; i86++) {
                                zzadaVar.w(zzadvVar8.y(i86));
                            }
                        } else {
                            zzadaVar.f(i83, 2);
                            int i87 = 0;
                            for (int i88 = 0; i88 < list24.size(); i88++) {
                                ((Integer) list24.get(i88)).getClass();
                                i87 += 4;
                            }
                            zzadaVar.v(i87);
                            for (int i89 = 0; i89 < list24.size(); i89++) {
                                zzadaVar.w(((Integer) list24.get(i89)).intValue());
                            }
                        }
                    }
                    break;
                case EACTags.CURRENCY_CODE /* 42 */:
                    int i90 = iArr[i5];
                    List list25 = (List) unsafe.getObject(obj, j2);
                    zzagb zzagbVar25 = zzafq.f30457a;
                    if (list25 != null && !list25.isEmpty()) {
                        if (list25 instanceof zzaci) {
                            r81.h();
                            return;
                        }
                        zzadaVar.f(i90, 2);
                        int i91 = 0;
                        for (int i92 = 0; i92 < list25.size(); i92++) {
                            ((Boolean) list25.get(i92)).getClass();
                            i91++;
                        }
                        zzadaVar.v(i91);
                        for (int i93 = 0; i93 < list25.size(); i93++) {
                            zzadaVar.t(((Boolean) list25.get(i93)).booleanValue() ? (byte) 1 : (byte) 0);
                        }
                    }
                    break;
                case EACTags.DATE_OF_BIRTH /* 43 */:
                    int i94 = iArr[i5];
                    List list26 = (List) unsafe.getObject(obj, j2);
                    zzagb zzagbVar26 = zzafq.f30457a;
                    if (list26 != null && !list26.isEmpty()) {
                        if (list26 instanceof zzadv) {
                            zzadv zzadvVar9 = (zzadv) list26;
                            zzadaVar.f(i94, 2);
                            int iB = 0;
                            for (int i95 = 0; i95 < zzadvVar9.d; i95++) {
                                iB += zzada.b(zzadvVar9.y(i95));
                            }
                            zzadaVar.v(iB);
                            for (int i96 = 0; i96 < zzadvVar9.d; i96++) {
                                zzadaVar.v(zzadvVar9.y(i96));
                            }
                        } else {
                            zzadaVar.f(i94, 2);
                            int iB2 = 0;
                            for (int i97 = 0; i97 < list26.size(); i97++) {
                                iB2 += zzada.b(((Integer) list26.get(i97)).intValue());
                            }
                            zzadaVar.v(iB2);
                            for (int i98 = 0; i98 < list26.size(); i98++) {
                                zzadaVar.v(((Integer) list26.get(i98)).intValue());
                            }
                        }
                    }
                    break;
                case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                    int i99 = iArr[i5];
                    List list27 = (List) unsafe.getObject(obj, j2);
                    zzagb zzagbVar27 = zzafq.f30457a;
                    if (list27 != null && !list27.isEmpty()) {
                        if (list27 instanceof zzadv) {
                            zzadv zzadvVar10 = (zzadv) list27;
                            zzadaVar.f(i99, 2);
                            int iC7 = 0;
                            for (int i100 = 0; i100 < zzadvVar10.d; i100++) {
                                iC7 += zzada.c(zzadvVar10.y(i100));
                            }
                            zzadaVar.v(iC7);
                            for (int i101 = 0; i101 < zzadvVar10.d; i101++) {
                                zzadaVar.u(zzadvVar10.y(i101));
                            }
                        } else {
                            zzadaVar.f(i99, 2);
                            int iC8 = 0;
                            for (int i102 = 0; i102 < list27.size(); i102++) {
                                iC8 += zzada.c(((Integer) list27.get(i102)).intValue());
                            }
                            zzadaVar.v(iC8);
                            for (int i103 = 0; i103 < list27.size(); i103++) {
                                zzadaVar.u(((Integer) list27.get(i103)).intValue());
                            }
                        }
                    }
                    break;
                case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                    int i104 = iArr[i5];
                    List list28 = (List) unsafe.getObject(obj, j2);
                    zzagb zzagbVar28 = zzafq.f30457a;
                    if (list28 != null && !list28.isEmpty()) {
                        if (list28 instanceof zzadv) {
                            zzadv zzadvVar11 = (zzadv) list28;
                            zzadaVar.f(i104, 2);
                            int i105 = 0;
                            for (int i106 = 0; i106 < zzadvVar11.d; i106++) {
                                zzadvVar11.y(i106);
                                i105 += 4;
                            }
                            zzadaVar.v(i105);
                            for (int i107 = 0; i107 < zzadvVar11.d; i107++) {
                                zzadaVar.w(zzadvVar11.y(i107));
                            }
                        } else {
                            zzadaVar.f(i104, 2);
                            int i108 = 0;
                            for (int i109 = 0; i109 < list28.size(); i109++) {
                                ((Integer) list28.get(i109)).getClass();
                                i108 += 4;
                            }
                            zzadaVar.v(i108);
                            for (int i110 = 0; i110 < list28.size(); i110++) {
                                zzadaVar.w(((Integer) list28.get(i110)).intValue());
                            }
                        }
                    }
                    break;
                case 46:
                    int i111 = iArr[i5];
                    List list29 = (List) unsafe.getObject(obj, j2);
                    zzagb zzagbVar29 = zzafq.f30457a;
                    if (list29 != null && !list29.isEmpty()) {
                        if (list29 instanceof zzaeq) {
                            zzaeq zzaeqVar9 = (zzaeq) list29;
                            zzadaVar.f(i111, 2);
                            int i112 = 0;
                            for (int i113 = 0; i113 < zzaeqVar9.d; i113++) {
                                zzaeqVar9.C(i113);
                                i112 += 8;
                            }
                            zzadaVar.v(i112);
                            for (int i114 = 0; i114 < zzaeqVar9.d; i114++) {
                                zzadaVar.y(zzaeqVar9.C(i114));
                            }
                        } else {
                            zzadaVar.f(i111, 2);
                            int i115 = 0;
                            for (int i116 = 0; i116 < list29.size(); i116++) {
                                ((Long) list29.get(i116)).getClass();
                                i115 += 8;
                            }
                            zzadaVar.v(i115);
                            for (int i117 = 0; i117 < list29.size(); i117++) {
                                zzadaVar.y(((Long) list29.get(i117)).longValue());
                            }
                        }
                    }
                    break;
                case EACTags.PIN_USAGE_POLICY /* 47 */:
                    int i118 = iArr[i5];
                    List list30 = (List) unsafe.getObject(obj, j2);
                    zzagb zzagbVar30 = zzafq.f30457a;
                    if (list30 != null && !list30.isEmpty()) {
                        if (list30 instanceof zzadv) {
                            zzadv zzadvVar12 = (zzadv) list30;
                            zzadaVar.f(i118, 2);
                            int iB3 = 0;
                            for (int i119 = 0; i119 < zzadvVar12.d; i119++) {
                                int iY2 = zzadvVar12.y(i119);
                                iB3 += zzada.b((iY2 >> 31) ^ (iY2 + iY2));
                            }
                            zzadaVar.v(iB3);
                            for (int i120 = 0; i120 < zzadvVar12.d; i120++) {
                                int iY3 = zzadvVar12.y(i120);
                                zzadaVar.v((iY3 >> 31) ^ (iY3 + iY3));
                            }
                        } else {
                            zzadaVar.f(i118, 2);
                            int iB4 = 0;
                            for (int i121 = 0; i121 < list30.size(); i121++) {
                                int iIntValue2 = ((Integer) list30.get(i121)).intValue();
                                iB4 += zzada.b((iIntValue2 >> 31) ^ (iIntValue2 + iIntValue2));
                            }
                            zzadaVar.v(iB4);
                            for (int i122 = 0; i122 < list30.size(); i122++) {
                                int iIntValue3 = ((Integer) list30.get(i122)).intValue();
                                zzadaVar.v((iIntValue3 >> 31) ^ (iIntValue3 + iIntValue3));
                            }
                        }
                    }
                    break;
                case 48:
                    int i123 = iArr[i5];
                    List list31 = (List) unsafe.getObject(obj, j2);
                    zzagb zzagbVar31 = zzafq.f30457a;
                    if (list31 != null && !list31.isEmpty()) {
                        if (list31 instanceof zzaeq) {
                            zzaeq zzaeqVar10 = (zzaeq) list31;
                            zzadaVar.f(i123, 2);
                            int iC9 = 0;
                            for (int i124 = 0; i124 < zzaeqVar10.d; i124++) {
                                long jC2 = zzaeqVar10.C(i124);
                                iC9 += zzada.c((jC2 >> 63) ^ (jC2 + jC2));
                            }
                            zzadaVar.v(iC9);
                            for (int i125 = 0; i125 < zzaeqVar10.d; i125++) {
                                long jC3 = zzaeqVar10.C(i125);
                                zzadaVar.x((jC3 >> 63) ^ (jC3 + jC3));
                            }
                        } else {
                            zzadaVar.f(i123, 2);
                            int iC10 = 0;
                            for (int i126 = 0; i126 < list31.size(); i126++) {
                                long jLongValue2 = ((Long) list31.get(i126)).longValue();
                                iC10 += zzada.c((jLongValue2 >> 63) ^ (jLongValue2 + jLongValue2));
                            }
                            zzadaVar.v(iC10);
                            for (int i127 = 0; i127 < list31.size(); i127++) {
                                long jLongValue3 = ((Long) list31.get(i127)).longValue();
                                zzadaVar.x((jLongValue3 >> 63) ^ (jLongValue3 + jLongValue3));
                            }
                        }
                    }
                    break;
                case 49:
                    int i128 = iArr[i5];
                    List list32 = (List) unsafe.getObject(obj, j2);
                    zzafp zzafpVarD2 = zzaffVar.D(i5);
                    zzagb zzagbVar32 = zzafq.f30457a;
                    if (list32 != null && !list32.isEmpty()) {
                        for (int i129 = 0; i129 < list32.size(); i129++) {
                            zzadbVar.s(i128, list32.get(i129), zzafpVarD2);
                        }
                    }
                    break;
                case 50:
                    Object object2 = unsafe.getObject(obj, j2);
                    if (object2 != null) {
                        zzaeu zzaeuVar = ((zzaev) zzaffVar.E(i5)).f30429a;
                        for (Map.Entry entry2 : ((zzaew) object2).entrySet()) {
                            zzadaVar.f(i7, 2);
                            zzadaVar.v(zzaev.b(zzaeuVar, entry2.getKey(), entry2.getValue()));
                            zzaev.a(zzadaVar, zzaeuVar, entry2.getKey(), entry2.getValue());
                        }
                    }
                    break;
                case EACTags.TRANSACTION_DATE /* 51 */:
                    if (zzaffVar.t(i7, i5, obj)) {
                        zzadbVar.g(((Double) zzagg.i(j2, obj)).doubleValue(), i7);
                    }
                    break;
                case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                    if (zzaffVar.t(i7, i5, obj)) {
                        zzadbVar.f(((Float) zzagg.i(j2, obj)).floatValue(), i7);
                    }
                    break;
                case EACTags.SEX /* 53 */:
                    if (zzaffVar.t(i7, i5, obj)) {
                        zzadbVar.d(i7, o(j2, obj));
                    }
                    break;
                case EACTags.CURRENCY_EXPONENT /* 54 */:
                    if (zzaffVar.t(i7, i5, obj)) {
                        zzadbVar.i(i7, o(j2, obj));
                    }
                    break;
                case 55:
                    if (zzaffVar.t(i7, i5, obj)) {
                        zzadbVar.j(i7, n(j2, obj));
                    }
                    break;
                case 56:
                    if (zzaffVar.t(i7, i5, obj)) {
                        zzadbVar.k(i7, o(j2, obj));
                    }
                    break;
                case 57:
                    if (zzaffVar.t(i7, i5, obj)) {
                        zzadbVar.l(i7, n(j2, obj));
                    }
                    break;
                case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
                    if (zzaffVar.t(i7, i5, obj)) {
                        zzadbVar.m(i7, ((Boolean) zzagg.i(j2, obj)).booleanValue());
                    }
                    break;
                case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                    if (zzaffVar.t(i7, i5, obj)) {
                        Object object3 = unsafe.getObject(obj, j2);
                        if (object3 instanceof String) {
                            zzadaVar.m(i7, (String) object3);
                        } else {
                            zzadbVar.n(i7, (zzacr) object3);
                        }
                    }
                    break;
                case 60:
                    if (zzaffVar.t(i7, i5, obj)) {
                        zzadbVar.r(i7, unsafe.getObject(obj, j2), zzaffVar.D(i5));
                    }
                    break;
                case 61:
                    if (zzaffVar.t(i7, i5, obj)) {
                        zzadbVar.n(i7, (zzacr) unsafe.getObject(obj, j2));
                    }
                    break;
                case 62:
                    if (zzaffVar.t(i7, i5, obj)) {
                        zzadbVar.o(i7, n(j2, obj));
                    }
                    break;
                case 63:
                    if (zzaffVar.t(i7, i5, obj)) {
                        zzadbVar.h(i7, n(j2, obj));
                    }
                    break;
                case 64:
                    if (zzaffVar.t(i7, i5, obj)) {
                        zzadbVar.c(i7, n(j2, obj));
                    }
                    break;
                case EACTags.ELEMENT_LIST /* 65 */:
                    if (zzaffVar.t(i7, i5, obj)) {
                        zzadbVar.e(i7, o(j2, obj));
                    }
                    break;
                case EACTags.ADDRESS /* 66 */:
                    if (zzaffVar.t(i7, i5, obj)) {
                        zzadbVar.p(i7, n(j2, obj));
                    }
                    break;
                case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                    if (zzaffVar.t(i7, i5, obj)) {
                        zzadbVar.q(i7, o(j2, obj));
                    }
                    break;
                case EACTags.APPLICATION_IMAGE /* 68 */:
                    if (zzaffVar.t(i7, i5, obj)) {
                        zzadbVar.s(i7, unsafe.getObject(obj, j2), zzaffVar.D(i5));
                    }
                    break;
            }
            i5 += 3;
            i3 = 1048575;
            zzaffVar = this;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzafp
    public final void b(Object obj, byte[] bArr, int i2, int i3, zzacg zzacgVar) {
        y(obj, bArr, i2, i3, 0, zzacgVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzafp
    public final int c(zzadu zzaduVar) {
        int i2;
        long jDoubleToLongBits;
        int i3;
        int iFloatToIntBits;
        int iE;
        int i4;
        int iHashCode = 0;
        for (int i5 = 0; i5 < this.f30435a.length; i5 += 3) {
            int iJ = j(i5);
            int iK = k(iJ);
            if (iK <= 50 || iK >= 69) {
                long j2 = iJ & 1048575;
                int iHashCode2 = 37;
                switch (iK) {
                    case 0:
                        i2 = iHashCode * 53;
                        jDoubleToLongBits = Double.doubleToLongBits(zzagg.f30478c.f(j2, zzaduVar));
                        byte[] bArr = zzaed.f30413a;
                        iE = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        iHashCode = i2 + iE;
                        break;
                    case 1:
                        i3 = iHashCode * 53;
                        iFloatToIntBits = Float.floatToIntBits(zzagg.f30478c.d(j2, zzaduVar));
                        iHashCode = i3 + iFloatToIntBits;
                        break;
                    case 2:
                        i2 = iHashCode * 53;
                        jDoubleToLongBits = zzagg.g(j2, zzaduVar);
                        byte[] bArr2 = zzaed.f30413a;
                        iE = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        iHashCode = i2 + iE;
                        break;
                    case 3:
                        i2 = iHashCode * 53;
                        jDoubleToLongBits = zzagg.g(j2, zzaduVar);
                        byte[] bArr3 = zzaed.f30413a;
                        iE = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        iHashCode = i2 + iE;
                        break;
                    case 4:
                        i2 = iHashCode * 53;
                        iE = zzagg.e(j2, zzaduVar);
                        iHashCode = i2 + iE;
                        break;
                    case 5:
                        i2 = iHashCode * 53;
                        jDoubleToLongBits = zzagg.g(j2, zzaduVar);
                        byte[] bArr4 = zzaed.f30413a;
                        iE = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        iHashCode = i2 + iE;
                        break;
                    case 6:
                        i2 = iHashCode * 53;
                        iE = zzagg.e(j2, zzaduVar);
                        iHashCode = i2 + iE;
                        break;
                    case 7:
                        i2 = iHashCode * 53;
                        boolean zB = zzagg.f30478c.b(j2, zzaduVar);
                        byte[] bArr5 = zzaed.f30413a;
                        iE = zB ? 1231 : 1237;
                        iHashCode = i2 + iE;
                        break;
                    case 8:
                        i3 = iHashCode * 53;
                        iFloatToIntBits = ((String) zzagg.i(j2, zzaduVar)).hashCode();
                        iHashCode = i3 + iFloatToIntBits;
                        break;
                    case 9:
                        i4 = iHashCode * 53;
                        Object objI = zzagg.i(j2, zzaduVar);
                        if (objI != null) {
                            iHashCode2 = objI.hashCode();
                        }
                        iHashCode = i4 + iHashCode2;
                        break;
                    case 10:
                        i3 = iHashCode * 53;
                        iFloatToIntBits = zzagg.i(j2, zzaduVar).hashCode();
                        iHashCode = i3 + iFloatToIntBits;
                        break;
                    case 11:
                        i2 = iHashCode * 53;
                        iE = zzagg.e(j2, zzaduVar);
                        iHashCode = i2 + iE;
                        break;
                    case 12:
                        i2 = iHashCode * 53;
                        iE = zzagg.e(j2, zzaduVar);
                        iHashCode = i2 + iE;
                        break;
                    case 13:
                        i2 = iHashCode * 53;
                        iE = zzagg.e(j2, zzaduVar);
                        iHashCode = i2 + iE;
                        break;
                    case 14:
                        i2 = iHashCode * 53;
                        jDoubleToLongBits = zzagg.g(j2, zzaduVar);
                        byte[] bArr6 = zzaed.f30413a;
                        iE = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        iHashCode = i2 + iE;
                        break;
                    case 15:
                        i2 = iHashCode * 53;
                        iE = zzagg.e(j2, zzaduVar);
                        iHashCode = i2 + iE;
                        break;
                    case 16:
                        i2 = iHashCode * 53;
                        jDoubleToLongBits = zzagg.g(j2, zzaduVar);
                        byte[] bArr7 = zzaed.f30413a;
                        iE = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        iHashCode = i2 + iE;
                        break;
                    case 17:
                        i4 = iHashCode * 53;
                        Object objI2 = zzagg.i(j2, zzaduVar);
                        if (objI2 != null) {
                            iHashCode2 = objI2.hashCode();
                        }
                        iHashCode = i4 + iHashCode2;
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
                        i3 = iHashCode * 53;
                        iFloatToIntBits = zzagg.i(j2, zzaduVar).hashCode();
                        iHashCode = i3 + iFloatToIntBits;
                        break;
                    case 50:
                        i3 = iHashCode * 53;
                        iFloatToIntBits = zzagg.i(j2, zzaduVar).hashCode();
                        iHashCode = i3 + iFloatToIntBits;
                        break;
                }
            }
        }
        int i6 = this.f30442j;
        while (true) {
            int[] iArr = this.f30440h;
            if (i6 >= iArr.length) {
                int iHashCode3 = zzaduVar.zzc.hashCode() + (iHashCode * 53);
                return this.f30439f ? (iHashCode3 * 53) + ((zzadr) zzaduVar).zzb.f30402a.hashCode() : iHashCode3;
            }
            int i7 = iArr[i6];
            if (!t(0, i7, zzaduVar)) {
                iHashCode = zzagg.i(j(i7) & 1048575, zzaduVar).hashCode() + (iHashCode * 53);
            }
            i6++;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:7:0x001e  */
    @Override // com.google.android.gms.internal.measurement.zzafp
    public final void d(Object obj, Object obj2) {
        Object obj3;
        m(obj);
        obj2.getClass();
        int i2 = 0;
        while (true) {
            int[] iArr = this.f30435a;
            if (i2 >= iArr.length) {
                Object obj4 = obj;
                zzafq.b(obj4, obj2);
                if (!this.f30439f || ((zzadr) obj2).zzb.f30402a.isEmpty()) {
                    return;
                }
                throw null;
            }
            int iJ = j(i2);
            int i3 = 1048575 & iJ;
            int iK = k(iJ);
            int i4 = iArr[i2];
            long j2 = i3;
            switch (iK) {
                case 0:
                    if (!r(i2, obj2)) {
                        obj3 = obj;
                    } else {
                        zzagf zzagfVar = zzagg.f30478c;
                        obj3 = obj;
                        zzagfVar.g(obj3, j2, zzagfVar.f(j2, obj2));
                        s(i2, obj3);
                    }
                    break;
                case 1:
                    if (r(i2, obj2)) {
                        zzagf zzagfVar2 = zzagg.f30478c;
                        zzagfVar2.e(obj, j2, zzagfVar2.d(j2, obj2));
                        s(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 2:
                    if (r(i2, obj2)) {
                        zzagg.h(j2, obj, zzagg.g(j2, obj2));
                        s(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 3:
                    if (r(i2, obj2)) {
                        zzagg.h(j2, obj, zzagg.g(j2, obj2));
                        s(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 4:
                    if (r(i2, obj2)) {
                        zzagg.f(obj, j2, zzagg.e(j2, obj2));
                        s(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 5:
                    if (r(i2, obj2)) {
                        zzagg.h(j2, obj, zzagg.g(j2, obj2));
                        s(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 6:
                    if (r(i2, obj2)) {
                        zzagg.f(obj, j2, zzagg.e(j2, obj2));
                        s(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 7:
                    if (r(i2, obj2)) {
                        zzagf zzagfVar3 = zzagg.f30478c;
                        zzagfVar3.c(obj, j2, zzagfVar3.b(j2, obj2));
                        s(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 8:
                    if (r(i2, obj2)) {
                        zzagg.j(j2, obj, zzagg.i(j2, obj2));
                        s(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 9:
                    B(obj, obj2, i2);
                    obj3 = obj;
                    break;
                case 10:
                    if (r(i2, obj2)) {
                        zzagg.j(j2, obj, zzagg.i(j2, obj2));
                        s(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 11:
                    if (r(i2, obj2)) {
                        zzagg.f(obj, j2, zzagg.e(j2, obj2));
                        s(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 12:
                    if (r(i2, obj2)) {
                        zzagg.f(obj, j2, zzagg.e(j2, obj2));
                        s(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 13:
                    if (r(i2, obj2)) {
                        zzagg.f(obj, j2, zzagg.e(j2, obj2));
                        s(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 14:
                    if (r(i2, obj2)) {
                        zzagg.h(j2, obj, zzagg.g(j2, obj2));
                        s(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 15:
                    if (r(i2, obj2)) {
                        zzagg.f(obj, j2, zzagg.e(j2, obj2));
                        s(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 16:
                    if (r(i2, obj2)) {
                        zzagg.h(j2, obj, zzagg.g(j2, obj2));
                        s(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 17:
                    B(obj, obj2, i2);
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
                    zzaef zzaefVarD = (zzaef) zzagg.i(j2, obj);
                    zzaef zzaefVar = (zzaef) zzagg.i(j2, obj2);
                    int size = zzaefVarD.size();
                    int size2 = zzaefVar.size();
                    if (size > 0 && size2 > 0) {
                        if (!zzaefVarD.d0()) {
                            zzaefVarD = zzaefVarD.d(size2 + size);
                        }
                        zzaefVarD.addAll(zzaefVar);
                    }
                    if (size > 0) {
                        zzaefVar = zzaefVarD;
                    }
                    zzagg.j(j2, obj, zzaefVar);
                    obj3 = obj;
                    break;
                case 50:
                    zzagb zzagbVar = zzafq.f30457a;
                    zzagg.j(j2, obj, zzaex.a(zzagg.i(j2, obj), zzagg.i(j2, obj2)));
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
                    if (t(i4, i2, obj2)) {
                        zzagg.j(j2, obj, zzagg.i(j2, obj2));
                        u(i4, i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 60:
                    C(obj, obj2, i2);
                    obj3 = obj;
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case EACTags.ELEMENT_LIST /* 65 */:
                case EACTags.ADDRESS /* 66 */:
                case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                    if (t(i4, i2, obj2)) {
                        zzagg.j(j2, obj, zzagg.i(j2, obj2));
                        u(i4, i2, obj);
                    }
                    obj3 = obj;
                    break;
                case EACTags.APPLICATION_IMAGE /* 68 */:
                    C(obj, obj2, i2);
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

    @Override // com.google.android.gms.internal.measurement.zzafp
    public final Object d0() {
        return ((zzadu) this.f30438e).o();
    }

    /* JADX WARN: Code duplicated, block: B:202:0x0536  */
    /* JADX WARN: Code duplicated, block: B:82:0x01f1  */
    @Override // com.google.android.gms.internal.measurement.zzafp
    public final int e(zzadu zzaduVar) {
        int i2;
        int iB;
        int iC;
        int iM;
        int i3;
        int iJ;
        int iB2;
        int size;
        int iE;
        int iB3;
        int iB4;
        int iB5;
        int iJ2;
        int iB6;
        int iC2;
        zzaff<T> zzaffVar = this;
        zzadu zzaduVar2 = zzaduVar;
        Unsafe unsafe = n;
        int i4 = 1048575;
        int i5 = 1048575;
        int i6 = 0;
        int i7 = 0;
        int iA = 0;
        while (true) {
            int[] iArr = zzaffVar.f30435a;
            if (i6 >= iArr.length) {
                int iC3 = zzaduVar2.zzc.c() + iA;
                if (!zzaffVar.f30439f) {
                    return iC3;
                }
                zzafr zzafrVar = ((zzadr) zzaduVar2).zzb.f30402a;
                int i8 = zzafrVar.f30465c;
                int iH = 0;
                for (int i9 = 0; i9 < i8; i9++) {
                    zzafs zzafsVar = (zzafs) zzafrVar.a(i9);
                    iH += zzadk.h((zzadj) zzafsVar.f30458b, zzafsVar.f30459c);
                }
                for (Map.Entry entry : zzafrVar.c()) {
                    iH += zzadk.h((zzadj) entry.getKey(), entry.getValue());
                }
                return iC3 + iH;
            }
            int iJ3 = zzaffVar.j(i6);
            int iK = k(iJ3);
            int i10 = iArr[i6];
            int i11 = iArr[i6 + 2];
            int i12 = i11 & i4;
            if (iK <= 17) {
                if (i12 != i5) {
                    i7 = i12 == i4 ? 0 : unsafe.getInt(zzaduVar2, i12);
                    i5 = i12;
                }
                i2 = 1 << (i11 >>> 20);
            } else {
                i2 = 0;
            }
            int i13 = iJ3 & i4;
            if (iK >= zzadl.zzJ.d0()) {
                zzadl.zzW.getClass();
            }
            long j2 = i13;
            switch (iK) {
                case 0:
                    if (zzaffVar.q(i6, zzaduVar2, i5, i7, i2)) {
                        iA = z81.a(i10 << 3, 8, iA);
                    }
                    break;
                case 1:
                    if (zzaffVar.q(i6, zzaduVar2, i5, i7, i2)) {
                        iA = z81.a(i10 << 3, 4, iA);
                    }
                    zzaffVar = this;
                    zzaduVar2 = zzaduVar;
                    break;
                case 2:
                    if (zzaffVar.q(i6, zzaduVar2, i5, i7, i2)) {
                        long j3 = unsafe.getLong(zzaduVar2, j2);
                        iB = zzada.b(i10 << 3);
                        iC = zzada.c(j3);
                        iA += iC + iB;
                    }
                    zzaffVar = this;
                    break;
                case 3:
                    if (zzaffVar.q(i6, zzaduVar2, i5, i7, i2)) {
                        long j4 = unsafe.getLong(zzaduVar2, j2);
                        iB = zzada.b(i10 << 3);
                        iC = zzada.c(j4);
                        iA += iC + iB;
                    }
                    zzaffVar = this;
                    break;
                case 4:
                    if (zzaffVar.q(i6, zzaduVar2, i5, i7, i2)) {
                        long j5 = unsafe.getInt(zzaduVar2, j2);
                        iB = zzada.b(i10 << 3);
                        iC = zzada.c(j5);
                        iA += iC + iB;
                    }
                    zzaffVar = this;
                    break;
                case 5:
                    if (zzaffVar.q(i6, zzaduVar2, i5, i7, i2)) {
                        iA = z81.a(i10 << 3, 8, iA);
                    }
                    zzaffVar = this;
                    zzaduVar2 = zzaduVar;
                    break;
                case 6:
                    if (zzaffVar.q(i6, zzaduVar2, i5, i7, i2)) {
                        iA = z81.a(i10 << 3, 4, iA);
                    }
                    zzaffVar = this;
                    zzaduVar2 = zzaduVar;
                    break;
                case 7:
                    if (zzaffVar.q(i6, zzaduVar2, i5, i7, i2)) {
                        iA = z81.a(i10 << 3, 1, iA);
                    }
                    zzaffVar = this;
                    zzaduVar2 = zzaduVar;
                    break;
                case 8:
                    if (zzaffVar.q(i6, zzaduVar2, i5, i7, i2)) {
                        int i14 = i10 << 3;
                        Object object = unsafe.getObject(zzaduVar2, j2);
                        if (object instanceof zzacr) {
                            int iB7 = zzada.b(i14);
                            int iF = ((zzacr) object).f();
                            iA = z81.b(iF, iF, iB7, iA);
                        } else {
                            int iB8 = zzada.b(i14);
                            int iB9 = zzagl.b((String) object);
                            iA = z81.b(iB9, iB9, iB8, iA);
                        }
                    }
                    zzaffVar = this;
                    break;
                case 9:
                    if (zzaffVar.q(i6, zzaduVar2, i5, i7, i2)) {
                        iM = zzafq.m(i10, unsafe.getObject(zzaduVar2, j2), zzaffVar.D(i6));
                        iA += iM;
                    }
                    break;
                case 10:
                    if (zzaffVar.q(i6, zzaduVar2, i5, i7, i2)) {
                        zzacr zzacrVar = (zzacr) unsafe.getObject(zzaduVar2, j2);
                        int iB10 = zzada.b(i10 << 3);
                        int iF2 = zzacrVar.f();
                        iA = z81.b(iF2, iF2, iB10, iA);
                    }
                    zzaffVar = this;
                    break;
                case 11:
                    if (zzaffVar.q(i6, zzaduVar2, i5, i7, i2)) {
                        iA = z81.a(unsafe.getInt(zzaduVar2, j2), zzada.b(i10 << 3), iA);
                    }
                    zzaffVar = this;
                    break;
                case 12:
                    if (zzaffVar.q(i6, zzaduVar2, i5, i7, i2)) {
                        long j6 = unsafe.getInt(zzaduVar2, j2);
                        iB = zzada.b(i10 << 3);
                        iC = zzada.c(j6);
                        iA += iC + iB;
                    }
                    zzaffVar = this;
                    break;
                case 13:
                    if (zzaffVar.q(i6, zzaduVar2, i5, i7, i2)) {
                        iA = z81.a(i10 << 3, 4, iA);
                    }
                    zzaffVar = this;
                    zzaduVar2 = zzaduVar;
                    break;
                case 14:
                    if (zzaffVar.q(i6, zzaduVar2, i5, i7, i2)) {
                        iA = z81.a(i10 << 3, 8, iA);
                    }
                    zzaffVar = this;
                    zzaduVar2 = zzaduVar;
                    break;
                case 15:
                    if (zzaffVar.q(i6, zzaduVar2, i5, i7, i2)) {
                        int i15 = unsafe.getInt(zzaduVar2, j2);
                        iA = z81.a((i15 >> 31) ^ (i15 + i15), zzada.b(i10 << 3), iA);
                    }
                    zzaffVar = this;
                    break;
                case 16:
                    if (zzaffVar.q(i6, zzaduVar2, i5, i7, i2)) {
                        long j7 = unsafe.getLong(zzaduVar2, j2);
                        iB = zzada.b(i10 << 3);
                        iC = zzada.c((j7 >> 63) ^ (j7 + j7));
                        iA += iC + iB;
                    }
                    zzaffVar = this;
                    break;
                case 17:
                    if (zzaffVar.q(i6, zzaduVar2, i5, i7, i2)) {
                        zzafc zzafcVar = (zzafc) unsafe.getObject(zzaduVar2, j2);
                        zzafp zzafpVarD = zzaffVar.D(i6);
                        zzagb zzagbVar = zzafq.f30457a;
                        int iB11 = zzada.b(i10 << 3);
                        i3 = iB11 + iB11;
                        iJ = ((zzacb) zzafcVar).j(zzafpVarD);
                        iA += iJ + i3;
                    }
                    break;
                case 18:
                    iM = zzafq.l(i10, (List) unsafe.getObject(zzaduVar2, j2));
                    iA += iM;
                    break;
                case 19:
                    iM = zzafq.k(i10, (List) unsafe.getObject(zzaduVar2, j2));
                    iA += iM;
                    break;
                case 20:
                    List list = (List) unsafe.getObject(zzaduVar2, j2);
                    zzagb zzagbVar2 = zzafq.f30457a;
                    if (list.size() == 0) {
                        iB2 = 0;
                    } else {
                        iB2 = (zzada.b(i10 << 3) * list.size()) + zzafq.d(list);
                    }
                    iA += iB2;
                    break;
                case 21:
                    List list2 = (List) unsafe.getObject(zzaduVar2, j2);
                    zzagb zzagbVar3 = zzafq.f30457a;
                    size = list2.size();
                    if (size == 0) {
                        iB4 = 0;
                    } else {
                        iE = zzafq.e(list2);
                        iB3 = zzada.b(i10 << 3);
                        iB4 = (iB3 * size) + iE;
                    }
                    iA += iB4;
                    break;
                case 22:
                    List list3 = (List) unsafe.getObject(zzaduVar2, j2);
                    zzagb zzagbVar4 = zzafq.f30457a;
                    size = list3.size();
                    if (size == 0) {
                        iB4 = 0;
                    } else {
                        iE = zzafq.h(list3);
                        iB3 = zzada.b(i10 << 3);
                        iB4 = (iB3 * size) + iE;
                    }
                    iA += iB4;
                    break;
                case 23:
                    iM = zzafq.l(i10, (List) unsafe.getObject(zzaduVar2, j2));
                    iA += iM;
                    break;
                case 24:
                    iM = zzafq.k(i10, (List) unsafe.getObject(zzaduVar2, j2));
                    iA += iM;
                    break;
                case 25:
                    List list4 = (List) unsafe.getObject(zzaduVar2, j2);
                    zzagb zzagbVar5 = zzafq.f30457a;
                    int size2 = list4.size();
                    if (size2 == 0) {
                        iB2 = 0;
                    } else {
                        iB2 = (zzada.b(i10 << 3) + 1) * size2;
                    }
                    iA += iB2;
                    break;
                case 26:
                    List list5 = (List) unsafe.getObject(zzaduVar2, j2);
                    zzagb zzagbVar6 = zzafq.f30457a;
                    int size3 = list5.size();
                    if (size3 == 0) {
                        iB4 = 0;
                    } else {
                        iB4 = zzada.b(i10 << 3) * size3;
                        if (list5 instanceof zzaen) {
                            zzaen zzaenVar = (zzaen) list5;
                            for (int i16 = 0; i16 < size3; i16++) {
                                Object objF0 = zzaenVar.f0();
                                if (objF0 instanceof zzacr) {
                                    int iF3 = ((zzacr) objF0).f();
                                    iB4 = z81.a(iF3, iF3, iB4);
                                } else {
                                    int iB12 = zzagl.b((String) objF0);
                                    iB4 = z81.a(iB12, iB12, iB4);
                                }
                            }
                        } else {
                            for (int i17 = 0; i17 < size3; i17++) {
                                Object obj = list5.get(i17);
                                if (obj instanceof zzacr) {
                                    int iF4 = ((zzacr) obj).f();
                                    iB4 = z81.a(iF4, iF4, iB4);
                                } else {
                                    int iB13 = zzagl.b((String) obj);
                                    iB4 = z81.a(iB13, iB13, iB4);
                                }
                            }
                        }
                    }
                    iA += iB4;
                    break;
                case 27:
                    List list6 = (List) unsafe.getObject(zzaduVar2, j2);
                    zzafp zzafpVarD2 = zzaffVar.D(i6);
                    zzagb zzagbVar7 = zzafq.f30457a;
                    int size4 = list6.size();
                    if (size4 == 0) {
                        iB5 = 0;
                    } else {
                        iB5 = zzada.b(i10 << 3) * size4;
                        for (int i18 = 0; i18 < size4; i18++) {
                            Object obj2 = list6.get(i18);
                            if (obj2 instanceof zzaem) {
                                zzaem zzaemVar = (zzaem) obj2;
                                int iF5 = zzaemVar.f30418b != null ? zzaemVar.f30418b.f() : zzaemVar.f30417a != null ? zzaemVar.f30417a.e() : 0;
                                iB5 = z81.a(iF5, iF5, iB5);
                            } else {
                                int iJ4 = ((zzacb) obj2).j(zzafpVarD2);
                                iB5 = z81.a(iJ4, iJ4, iB5);
                            }
                        }
                    }
                    iA += iB5;
                    break;
                case 28:
                    List list7 = (List) unsafe.getObject(zzaduVar2, j2);
                    zzagb zzagbVar8 = zzafq.f30457a;
                    int size5 = list7.size();
                    if (size5 == 0) {
                        iB4 = 0;
                    } else {
                        iB4 = zzada.b(i10 << 3) * size5;
                        for (int i19 = 0; i19 < list7.size(); i19++) {
                            int iF6 = ((zzacr) list7.get(i19)).f();
                            iB4 = z81.a(iF6, iF6, iB4);
                        }
                    }
                    iA += iB4;
                    break;
                case 29:
                    List list8 = (List) unsafe.getObject(zzaduVar2, j2);
                    zzagb zzagbVar9 = zzafq.f30457a;
                    size = list8.size();
                    if (size == 0) {
                        iB4 = 0;
                    } else {
                        iE = zzafq.i(list8);
                        iB3 = zzada.b(i10 << 3);
                        iB4 = (iB3 * size) + iE;
                    }
                    iA += iB4;
                    break;
                case 30:
                    List list9 = (List) unsafe.getObject(zzaduVar2, j2);
                    zzagb zzagbVar10 = zzafq.f30457a;
                    size = list9.size();
                    if (size == 0) {
                        iB4 = 0;
                    } else {
                        iE = zzafq.g(list9);
                        iB3 = zzada.b(i10 << 3);
                        iB4 = (iB3 * size) + iE;
                    }
                    iA += iB4;
                    break;
                case 31:
                    iM = zzafq.k(i10, (List) unsafe.getObject(zzaduVar2, j2));
                    iA += iM;
                    break;
                case 32:
                    iM = zzafq.l(i10, (List) unsafe.getObject(zzaduVar2, j2));
                    iA += iM;
                    break;
                case 33:
                    List list10 = (List) unsafe.getObject(zzaduVar2, j2);
                    zzagb zzagbVar11 = zzafq.f30457a;
                    size = list10.size();
                    if (size == 0) {
                        iB4 = 0;
                    } else {
                        iE = zzafq.j(list10);
                        iB3 = zzada.b(i10 << 3);
                        iB4 = (iB3 * size) + iE;
                    }
                    iA += iB4;
                    break;
                case 34:
                    List list11 = (List) unsafe.getObject(zzaduVar2, j2);
                    zzagb zzagbVar12 = zzafq.f30457a;
                    size = list11.size();
                    if (size == 0) {
                        iB4 = 0;
                    } else {
                        iE = zzafq.f(list11);
                        iB3 = zzada.b(i10 << 3);
                        iB4 = (iB3 * size) + iE;
                    }
                    iA += iB4;
                    break;
                case 35:
                    List list12 = (List) unsafe.getObject(zzaduVar2, j2);
                    zzagb zzagbVar13 = zzafq.f30457a;
                    int size6 = list12.size() * 8;
                    if (size6 > 0) {
                        iA = z81.b(size6, zzada.b(i10 << 3), size6, iA);
                    }
                    break;
                case 36:
                    List list13 = (List) unsafe.getObject(zzaduVar2, j2);
                    zzagb zzagbVar14 = zzafq.f30457a;
                    int size7 = list13.size() * 4;
                    if (size7 > 0) {
                        iA = z81.b(size7, zzada.b(i10 << 3), size7, iA);
                    }
                    break;
                case 37:
                    int iD = zzafq.d((List) unsafe.getObject(zzaduVar2, j2));
                    if (iD > 0) {
                        iA = z81.b(iD, zzada.b(i10 << 3), iD, iA);
                    }
                    break;
                case 38:
                    int iE2 = zzafq.e((List) unsafe.getObject(zzaduVar2, j2));
                    if (iE2 > 0) {
                        iA = z81.b(iE2, zzada.b(i10 << 3), iE2, iA);
                    }
                    break;
                case 39:
                    int iH2 = zzafq.h((List) unsafe.getObject(zzaduVar2, j2));
                    if (iH2 > 0) {
                        iA = z81.b(iH2, zzada.b(i10 << 3), iH2, iA);
                    }
                    break;
                case 40:
                    List list14 = (List) unsafe.getObject(zzaduVar2, j2);
                    zzagb zzagbVar15 = zzafq.f30457a;
                    int size8 = list14.size() * 8;
                    if (size8 > 0) {
                        iA = z81.b(size8, zzada.b(i10 << 3), size8, iA);
                    }
                    break;
                case 41:
                    List list15 = (List) unsafe.getObject(zzaduVar2, j2);
                    zzagb zzagbVar16 = zzafq.f30457a;
                    int size9 = list15.size() * 4;
                    if (size9 > 0) {
                        iA = z81.b(size9, zzada.b(i10 << 3), size9, iA);
                    }
                    break;
                case EACTags.CURRENCY_CODE /* 42 */:
                    List list16 = (List) unsafe.getObject(zzaduVar2, j2);
                    zzagb zzagbVar17 = zzafq.f30457a;
                    int size10 = list16.size();
                    if (size10 > 0) {
                        iA = z81.b(size10, zzada.b(i10 << 3), size10, iA);
                    }
                    break;
                case EACTags.DATE_OF_BIRTH /* 43 */:
                    int i20 = zzafq.i((List) unsafe.getObject(zzaduVar2, j2));
                    if (i20 > 0) {
                        iA = z81.b(i20, zzada.b(i10 << 3), i20, iA);
                    }
                    break;
                case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                    int iG = zzafq.g((List) unsafe.getObject(zzaduVar2, j2));
                    if (iG > 0) {
                        iA = z81.b(iG, zzada.b(i10 << 3), iG, iA);
                    }
                    break;
                case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                    List list17 = (List) unsafe.getObject(zzaduVar2, j2);
                    zzagb zzagbVar18 = zzafq.f30457a;
                    int size11 = list17.size() * 4;
                    if (size11 > 0) {
                        iA = z81.b(size11, zzada.b(i10 << 3), size11, iA);
                    }
                    break;
                case 46:
                    List list18 = (List) unsafe.getObject(zzaduVar2, j2);
                    zzagb zzagbVar19 = zzafq.f30457a;
                    int size12 = list18.size() * 8;
                    if (size12 > 0) {
                        iA = z81.b(size12, zzada.b(i10 << 3), size12, iA);
                    }
                    break;
                case EACTags.PIN_USAGE_POLICY /* 47 */:
                    int iJ5 = zzafq.j((List) unsafe.getObject(zzaduVar2, j2));
                    if (iJ5 > 0) {
                        iA = z81.b(iJ5, zzada.b(i10 << 3), iJ5, iA);
                    }
                    break;
                case 48:
                    int iF7 = zzafq.f((List) unsafe.getObject(zzaduVar2, j2));
                    if (iF7 > 0) {
                        iA = z81.b(iF7, zzada.b(i10 << 3), iF7, iA);
                    }
                    break;
                case 49:
                    List list19 = (List) unsafe.getObject(zzaduVar2, j2);
                    zzafp zzafpVarD3 = zzaffVar.D(i6);
                    zzagb zzagbVar20 = zzafq.f30457a;
                    int size13 = list19.size();
                    if (size13 == 0) {
                        iJ2 = 0;
                    } else {
                        iJ2 = 0;
                        for (int i21 = 0; i21 < size13; i21++) {
                            zzafc zzafcVar2 = (zzafc) list19.get(i21);
                            int iB14 = zzada.b(i10 << 3);
                            iJ2 += ((zzacb) zzafcVar2).j(zzafpVarD3) + iB14 + iB14;
                        }
                    }
                    iA += iJ2;
                    break;
                case 50:
                    zzaew zzaewVar = (zzaew) unsafe.getObject(zzaduVar2, j2);
                    zzaev zzaevVar = (zzaev) zzaffVar.E(i6);
                    if (zzaewVar.isEmpty()) {
                        iB4 = 0;
                    } else {
                        iB4 = 0;
                        for (Map.Entry entry2 : zzaewVar.entrySet()) {
                            Object key = entry2.getKey();
                            Object value = entry2.getValue();
                            zzaeu zzaeuVar = zzaevVar.f30429a;
                            int iB15 = zzada.b(i10 << 3);
                            int iB16 = zzaev.b(zzaeuVar, key, value);
                            iB4 = z81.b(iB16, iB16, iB15, iB4);
                        }
                    }
                    iA += iB4;
                    break;
                case EACTags.TRANSACTION_DATE /* 51 */:
                    if (zzaffVar.t(i10, i6, zzaduVar2)) {
                        iA = z81.a(i10 << 3, 8, iA);
                    }
                    break;
                case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                    if (zzaffVar.t(i10, i6, zzaduVar2)) {
                        iA = z81.a(i10 << 3, 4, iA);
                    }
                    break;
                case EACTags.SEX /* 53 */:
                    if (zzaffVar.t(i10, i6, zzaduVar2)) {
                        long jO = o(j2, zzaduVar2);
                        iB6 = zzada.b(i10 << 3);
                        iC2 = zzada.c(jO);
                        iA += iC2 + iB6;
                    }
                    break;
                case EACTags.CURRENCY_EXPONENT /* 54 */:
                    if (zzaffVar.t(i10, i6, zzaduVar2)) {
                        long jO2 = o(j2, zzaduVar2);
                        iB6 = zzada.b(i10 << 3);
                        iC2 = zzada.c(jO2);
                        iA += iC2 + iB6;
                    }
                    break;
                case 55:
                    if (zzaffVar.t(i10, i6, zzaduVar2)) {
                        long jN = n(j2, zzaduVar2);
                        iB6 = zzada.b(i10 << 3);
                        iC2 = zzada.c(jN);
                        iA += iC2 + iB6;
                    }
                    break;
                case 56:
                    if (zzaffVar.t(i10, i6, zzaduVar2)) {
                        iA = z81.a(i10 << 3, 8, iA);
                    }
                    break;
                case 57:
                    if (zzaffVar.t(i10, i6, zzaduVar2)) {
                        iA = z81.a(i10 << 3, 4, iA);
                    }
                    break;
                case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
                    if (zzaffVar.t(i10, i6, zzaduVar2)) {
                        iA = z81.a(i10 << 3, 1, iA);
                    }
                    break;
                case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                    if (zzaffVar.t(i10, i6, zzaduVar2)) {
                        int i22 = i10 << 3;
                        Object object2 = unsafe.getObject(zzaduVar2, j2);
                        if (object2 instanceof zzacr) {
                            int iB17 = zzada.b(i22);
                            int iF8 = ((zzacr) object2).f();
                            iA = z81.b(iF8, iF8, iB17, iA);
                        } else {
                            int iB18 = zzada.b(i22);
                            int iB19 = zzagl.b((String) object2);
                            iA = z81.b(iB19, iB19, iB18, iA);
                        }
                    }
                    break;
                case 60:
                    if (zzaffVar.t(i10, i6, zzaduVar2)) {
                        iM = zzafq.m(i10, unsafe.getObject(zzaduVar2, j2), zzaffVar.D(i6));
                        iA += iM;
                    }
                    break;
                case 61:
                    if (zzaffVar.t(i10, i6, zzaduVar2)) {
                        zzacr zzacrVar2 = (zzacr) unsafe.getObject(zzaduVar2, j2);
                        int iB20 = zzada.b(i10 << 3);
                        int iF9 = zzacrVar2.f();
                        iA = z81.b(iF9, iF9, iB20, iA);
                    }
                    break;
                case 62:
                    if (zzaffVar.t(i10, i6, zzaduVar2)) {
                        iA = z81.a(n(j2, zzaduVar2), zzada.b(i10 << 3), iA);
                    }
                    break;
                case 63:
                    if (zzaffVar.t(i10, i6, zzaduVar2)) {
                        long jN2 = n(j2, zzaduVar2);
                        iB6 = zzada.b(i10 << 3);
                        iC2 = zzada.c(jN2);
                        iA += iC2 + iB6;
                    }
                    break;
                case 64:
                    if (zzaffVar.t(i10, i6, zzaduVar2)) {
                        iA = z81.a(i10 << 3, 4, iA);
                    }
                    break;
                case EACTags.ELEMENT_LIST /* 65 */:
                    if (zzaffVar.t(i10, i6, zzaduVar2)) {
                        iA = z81.a(i10 << 3, 8, iA);
                    }
                    break;
                case EACTags.ADDRESS /* 66 */:
                    if (zzaffVar.t(i10, i6, zzaduVar2)) {
                        int iN = n(j2, zzaduVar2);
                        iA = z81.a((iN >> 31) ^ (iN + iN), zzada.b(i10 << 3), iA);
                    }
                    break;
                case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                    if (zzaffVar.t(i10, i6, zzaduVar2)) {
                        long jO3 = o(j2, zzaduVar2);
                        iB6 = zzada.b(i10 << 3);
                        iC2 = zzada.c((jO3 >> 63) ^ (jO3 + jO3));
                        iA += iC2 + iB6;
                    }
                    break;
                case EACTags.APPLICATION_IMAGE /* 68 */:
                    if (zzaffVar.t(i10, i6, zzaduVar2)) {
                        zzafc zzafcVar3 = (zzafc) unsafe.getObject(zzaduVar2, j2);
                        zzafp zzafpVarD4 = zzaffVar.D(i6);
                        zzagb zzagbVar21 = zzafq.f30457a;
                        int iB21 = zzada.b(i10 << 3);
                        i3 = iB21 + iB21;
                        iJ = ((zzacb) zzafcVar3).j(zzafpVarD4);
                        iA += iJ + i3;
                    }
                    break;
            }
            i6 += 3;
            i4 = 1048575;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzafp
    public final boolean f(Object obj) {
        int i2;
        int i3;
        int i4 = 0;
        int i5 = 0;
        int i6 = 1048575;
        while (i4 < this.f30441i) {
            int i7 = this.f30440h[i4];
            int iJ = this.j(i7);
            int[] iArr = this.f30435a;
            int i8 = iArr[i7 + 2];
            int i9 = i8 & 1048575;
            int i10 = 1 << (i8 >>> 20);
            if (i9 != i6) {
                if (i9 != 1048575) {
                    i5 = n.getInt(obj, i9);
                }
                i3 = i5;
                i2 = i9;
            } else {
                i2 = i6;
                i3 = i5;
            }
            zzaff<T> zzaffVar = this;
            Object obj2 = obj;
            if ((268435456 & iJ) == 0 || zzaffVar.q(i7, obj2, i2, i3, i10)) {
                int iK = k(iJ);
                if (iK != 9 && iK != 17) {
                    if (iK != 27) {
                        if (iK == 60 || iK == 68) {
                            if (!zzaffVar.t(iArr[i7], i7, obj2) || zzaffVar.D(i7).f(zzagg.i(iJ & 1048575, obj2))) {
                                i4++;
                                this = zzaffVar;
                                obj = obj2;
                                i6 = i2;
                                i5 = i3;
                            }
                        } else if (iK != 49) {
                            if (iK != 50) {
                                continue;
                            } else {
                                zzaew zzaewVar = (zzaew) zzagg.i(iJ & 1048575, obj2);
                                if (!zzaewVar.isEmpty() && ((zzaev) zzaffVar.E(i7)).f30429a.f30427b.a() == zzagn.zzi) {
                                    zzafp zzafpVarA = null;
                                    for (Object obj3 : zzaewVar.values()) {
                                        if (zzafpVarA == null) {
                                            zzafpVarA = zzafl.f30448c.a(obj3.getClass());
                                        }
                                        if (!zzafpVarA.f(obj3)) {
                                        }
                                    }
                                }
                            }
                            i4++;
                            this = zzaffVar;
                            obj = obj2;
                            i6 = i2;
                            i5 = i3;
                        }
                    }
                    List list = (List) zzagg.i(iJ & 1048575, obj2);
                    if (list.isEmpty()) {
                        continue;
                    } else {
                        zzafp zzafpVarD = zzaffVar.D(i7);
                        for (int i11 = 0; i11 < list.size(); i11++) {
                            if (zzafpVarD.f(list.get(i11))) {
                            }
                        }
                    }
                    i4++;
                    this = zzaffVar;
                    obj = obj2;
                    i6 = i2;
                    i5 = i3;
                } else if (!zzaffVar.q(i7, obj2, i2, i3, i10) || zzaffVar.D(i7).f(zzagg.i(iJ & 1048575, obj2))) {
                    i4++;
                    this = zzaffVar;
                    obj = obj2;
                    i6 = i2;
                    i5 = i3;
                }
            }
        }
        return !this.f30439f || ((zzadr) obj).zzb.d();
    }

    /* JADX WARN: Code duplicated, block: B:26:0x006c  */
    /* JADX WARN: Code duplicated, block: B:28:0x0072  */
    /* JADX WARN: Code duplicated, block: B:44:0x007f A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.measurement.zzafp
    public final void g(Object obj) {
        if (!l(obj)) {
            return;
        }
        if (obj instanceof zzadu) {
            zzadu zzaduVar = (zzadu) obj;
            zzaduVar.s();
            zzaduVar.zza = 0;
            zzaduVar.n();
        }
        int i2 = 0;
        while (true) {
            int[] iArr = this.f30435a;
            if (i2 >= iArr.length) {
                ((zzagb) this.f30443k).getClass();
                zzaga zzagaVar = ((zzadu) obj).zzc;
                if (zzagaVar.f30474e) {
                    zzagaVar.f30474e = false;
                }
                if (this.f30439f) {
                    ((zzadh) this.l).getClass();
                    ((zzadr) obj).zzb.a();
                    return;
                }
                return;
            }
            int iJ = j(i2);
            int i3 = 1048575 & iJ;
            int iK = k(iJ);
            long j2 = i3;
            if (iK != 9) {
                if (iK != 60 && iK != 68) {
                    switch (iK) {
                        case 17:
                            if (r(i2, obj)) {
                                D(i2).g(n.getObject(obj, j2));
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
                            ((zzaef) zzagg.i(j2, obj)).e0();
                            break;
                        case 50:
                            Unsafe unsafe = n;
                            Object object = unsafe.getObject(obj, j2);
                            if (object != null) {
                                ((zzaew) object).f30431b = false;
                                unsafe.putObject(obj, j2, object);
                            }
                            break;
                    }
                } else if (t(iArr[i2], i2, obj)) {
                    D(i2).g(n.getObject(obj, j2));
                }
            } else if (r(i2, obj)) {
                D(i2).g(n.getObject(obj, j2));
            }
            i2 += 3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:138:0x0218 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:175:0x01d1 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.measurement.zzafp
    public final boolean h(zzadu zzaduVar, zzadu zzaduVar2) {
        boolean zA;
        int i2 = 0;
        while (true) {
            int[] iArr = this.f30435a;
            if (i2 < iArr.length) {
                int iJ = j(i2);
                int iK = k(iJ);
                if (iK <= 50 || iK >= 69) {
                    long j2 = iJ & 1048575;
                    switch (iK) {
                        case 0:
                            if (p(zzaduVar, zzaduVar2, i2)) {
                                zzagf zzagfVar = zzagg.f30478c;
                                if (Double.doubleToLongBits(zzagfVar.f(j2, zzaduVar)) != Double.doubleToLongBits(zzagfVar.f(j2, zzaduVar2))) {
                                }
                            }
                            break;
                        case 1:
                            if (p(zzaduVar, zzaduVar2, i2)) {
                                zzagf zzagfVar2 = zzagg.f30478c;
                                if (Float.floatToIntBits(zzagfVar2.d(j2, zzaduVar)) != Float.floatToIntBits(zzagfVar2.d(j2, zzaduVar2))) {
                                }
                            }
                            break;
                        case 2:
                            if (!p(zzaduVar, zzaduVar2, i2) || zzagg.g(j2, zzaduVar) != zzagg.g(j2, zzaduVar2)) {
                            }
                            break;
                        case 3:
                            if (!p(zzaduVar, zzaduVar2, i2) || zzagg.g(j2, zzaduVar) != zzagg.g(j2, zzaduVar2)) {
                            }
                            break;
                        case 4:
                            if (!p(zzaduVar, zzaduVar2, i2) || zzagg.e(j2, zzaduVar) != zzagg.e(j2, zzaduVar2)) {
                            }
                            break;
                        case 5:
                            if (!p(zzaduVar, zzaduVar2, i2) || zzagg.g(j2, zzaduVar) != zzagg.g(j2, zzaduVar2)) {
                            }
                            break;
                        case 6:
                            if (!p(zzaduVar, zzaduVar2, i2) || zzagg.e(j2, zzaduVar) != zzagg.e(j2, zzaduVar2)) {
                            }
                            break;
                        case 7:
                            if (p(zzaduVar, zzaduVar2, i2)) {
                                zzagf zzagfVar3 = zzagg.f30478c;
                                if (zzagfVar3.b(j2, zzaduVar) != zzagfVar3.b(j2, zzaduVar2)) {
                                }
                            }
                            break;
                        case 8:
                            if (!p(zzaduVar, zzaduVar2, i2) || !zzafq.a(zzagg.i(j2, zzaduVar), zzagg.i(j2, zzaduVar2))) {
                            }
                            break;
                        case 9:
                            if (!p(zzaduVar, zzaduVar2, i2) || !zzafq.a(zzagg.i(j2, zzaduVar), zzagg.i(j2, zzaduVar2))) {
                            }
                            break;
                        case 10:
                            if (!p(zzaduVar, zzaduVar2, i2) || !zzafq.a(zzagg.i(j2, zzaduVar), zzagg.i(j2, zzaduVar2))) {
                            }
                            break;
                        case 11:
                            if (!p(zzaduVar, zzaduVar2, i2) || zzagg.e(j2, zzaduVar) != zzagg.e(j2, zzaduVar2)) {
                            }
                            break;
                        case 12:
                            if (!p(zzaduVar, zzaduVar2, i2) || zzagg.e(j2, zzaduVar) != zzagg.e(j2, zzaduVar2)) {
                            }
                            break;
                        case 13:
                            if (!p(zzaduVar, zzaduVar2, i2) || zzagg.e(j2, zzaduVar) != zzagg.e(j2, zzaduVar2)) {
                            }
                            break;
                        case 14:
                            if (!p(zzaduVar, zzaduVar2, i2) || zzagg.g(j2, zzaduVar) != zzagg.g(j2, zzaduVar2)) {
                            }
                            break;
                        case 15:
                            if (!p(zzaduVar, zzaduVar2, i2) || zzagg.e(j2, zzaduVar) != zzagg.e(j2, zzaduVar2)) {
                            }
                            break;
                        case 16:
                            if (!p(zzaduVar, zzaduVar2, i2) || zzagg.g(j2, zzaduVar) != zzagg.g(j2, zzaduVar2)) {
                            }
                            break;
                        case 17:
                            if (!p(zzaduVar, zzaduVar2, i2) || !zzafq.a(zzagg.i(j2, zzaduVar), zzagg.i(j2, zzaduVar2))) {
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
                            zA = zzafq.a(zzagg.i(j2, zzaduVar), zzagg.i(j2, zzaduVar2));
                            if (zA) {
                            }
                            break;
                        case 50:
                            zA = zzafq.a(zzagg.i(j2, zzaduVar), zzagg.i(j2, zzaduVar2));
                            if (zA) {
                            }
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
                            if (zzagg.e(j3, zzaduVar) == zzagg.e(j3, zzaduVar2) && zzafq.a(zzagg.i(j2, zzaduVar), zzagg.i(j2, zzaduVar2))) {
                            }
                            break;
                        default:
                            continue;
                    }
                }
                i2 += 3;
            } else {
                int i3 = this.f30442j;
                while (true) {
                    int[] iArr2 = this.f30440h;
                    if (i3 < iArr2.length) {
                        int i4 = iArr2[i3];
                        long j4 = iArr[i4 + 2] & 1048575;
                        if (zzagg.e(j4, zzaduVar) != zzagg.e(j4, zzaduVar2)) {
                            return false;
                        }
                        if (!t(0, i4, zzaduVar)) {
                            long j5 = j(i4) & 1048575;
                            if (!zzafq.a(zzagg.i(j5, zzaduVar), zzagg.i(j5, zzaduVar2))) {
                            }
                        }
                        i3++;
                    } else if (zzaduVar.zzc.equals(zzaduVar2.zzc)) {
                        if (this.f30439f) {
                            return ((zzadr) zzaduVar).zzb.equals(((zzadr) zzaduVar2).zzb);
                        }
                        return true;
                    }
                }
            }
        }
        return false;
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 19101. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    @Override // com.google.android.gms.internal.measurement.zzafp
    public final void i(java.lang.Object r18, com.google.android.gms.internal.measurement.zzacw r19, com.google.android.gms.internal.measurement.zzadf r20) {
        /*
            Method dump skipped, instruction units count: 1910
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzaff.i(java.lang.Object, com.google.android.gms.internal.measurement.zzacw, com.google.android.gms.internal.measurement.zzadf):void");
    }

    public final int j(int i2) {
        return this.f30435a[i2 + 1];
    }

    public final boolean p(zzadu zzaduVar, zzadu zzaduVar2, int i2) {
        return r(i2, zzaduVar) == r(i2, zzaduVar2);
    }

    public final boolean q(int i2, Object obj, int i3, int i4, int i5) {
        if (i3 == 1048575) {
            return r(i2, obj);
        }
        return (i4 & i5) != 0;
    }

    /* JADX WARN: Code duplicated, block: B:72:0x00f5 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:73:0x00f6 A[RETURN] */
    public final boolean r(int i2, Object obj) {
        int i3 = this.f30435a[i2 + 2];
        long j2 = i3 & 1048575;
        if (j2 != 1048575) {
            if (((1 << (i3 >>> 20)) & zzagg.e(j2, obj)) != 0) {
                return true;
            }
            return false;
        }
        int iJ = j(i2);
        long j3 = iJ & 1048575;
        switch (k(iJ)) {
            case 0:
                if (Double.doubleToRawLongBits(zzagg.f30478c.f(j3, obj)) != 0) {
                    return true;
                }
                return false;
            case 1:
                if (Float.floatToRawIntBits(zzagg.f30478c.d(j3, obj)) != 0) {
                    return true;
                }
                return false;
            case 2:
                if (zzagg.g(j3, obj) != 0) {
                    return true;
                }
                return false;
            case 3:
                if (zzagg.g(j3, obj) != 0) {
                    return true;
                }
                return false;
            case 4:
                if (zzagg.e(j3, obj) != 0) {
                    return true;
                }
                return false;
            case 5:
                if (zzagg.g(j3, obj) != 0) {
                    return true;
                }
                return false;
            case 6:
                if (zzagg.e(j3, obj) != 0) {
                    return true;
                }
                return false;
            case 7:
                return zzagg.f30478c.b(j3, obj);
            case 8:
                Object objI = zzagg.i(j3, obj);
                if (objI instanceof String) {
                    if (((String) objI).isEmpty()) {
                        return false;
                    }
                    return true;
                }
                if (!(objI instanceof zzacr)) {
                    ct0.c();
                    return false;
                }
                if (zzacr.f30367c.equals(objI)) {
                    return false;
                }
                return true;
            case 9:
                if (zzagg.i(j3, obj) != null) {
                    return true;
                }
                return false;
            case 10:
                if (zzacr.f30367c.equals(zzagg.i(j3, obj))) {
                    return false;
                }
                return true;
            case 11:
                if (zzagg.e(j3, obj) != 0) {
                    return true;
                }
                return false;
            case 12:
                if (zzagg.e(j3, obj) != 0) {
                    return true;
                }
                return false;
            case 13:
                if (zzagg.e(j3, obj) != 0) {
                    return true;
                }
                return false;
            case 14:
                if (zzagg.g(j3, obj) != 0) {
                    return true;
                }
                return false;
            case 15:
                if (zzagg.e(j3, obj) != 0) {
                    return true;
                }
                return false;
            case 16:
                if (zzagg.g(j3, obj) != 0) {
                    return true;
                }
                return false;
            case 17:
                if (zzagg.i(j3, obj) != null) {
                    return true;
                }
                return false;
            default:
                ct0.c();
                return false;
        }
    }

    public final void s(int i2, Object obj) {
        int i3 = this.f30435a[i2 + 2];
        long j2 = 1048575 & i3;
        if (j2 == 1048575) {
            return;
        }
        zzagg.f(obj, j2, (1 << (i3 >>> 20)) | zzagg.e(j2, obj));
    }

    public final boolean t(int i2, int i3, Object obj) {
        return zzagg.e((long) (this.f30435a[i3 + 2] & 1048575), obj) == i2;
    }

    public final void u(int i2, int i3, Object obj) {
        zzagg.f(obj, this.f30435a[i3 + 2] & 1048575, i2);
    }

    public final int v(int i2, int i3) {
        int[] iArr = this.f30435a;
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

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 39401. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    public final int y(java.lang.Object r39, byte[] r40, int r41, int r42, int r43, com.google.android.gms.internal.measurement.zzacg r44) {
        /*
            Method dump skipped, instruction units count: 3940
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzaff.y(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.measurement.zzacg):int");
    }
}
