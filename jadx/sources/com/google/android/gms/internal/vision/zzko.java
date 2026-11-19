package com.google.android.gms.internal.vision;

import defpackage.ct0;
import defpackage.n00;
import defpackage.r81;
import defpackage.tr;
import defpackage.v7;
import defpackage.z81;
import java.lang.reflect.Field;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.asn1.eac.EACTags;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes2.dex */
final class zzko<T> implements zzlc<T> {
    public static final int[] p = new int[0];
    public static final Unsafe q = zzma.h();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f31242a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object[] f31243b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f31244c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final zzkk f31245e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f31246f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int[] f31247h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f31248i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f31249j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final zzks f31250k;
    public final zzju l;
    public final zzlu m;
    public final zziq n;
    public final zzkh o;

    public zzko(int[] iArr, Object[] objArr, int i2, int i3, zzkk zzkkVar, boolean z, int[] iArr2, int i4, int i5, zzks zzksVar, zzju zzjuVar, zzlu zzluVar, zziq zziqVar, zzkh zzkhVar) {
        this.f31242a = iArr;
        this.f31243b = objArr;
        this.f31244c = i2;
        this.d = i3;
        this.g = z;
        this.f31246f = zziqVar != null && (zzkkVar instanceof zzjb.zzc);
        this.f31247h = iArr2;
        this.f31248i = i4;
        this.f31249j = i5;
        this.f31250k = zzksVar;
        this.l = zzjuVar;
        this.m = zzluVar;
        this.n = zziqVar;
        this.f31245e = zzkkVar;
        this.o = zzkhVar;
    }

    public static int D(long j2, Object obj) {
        return ((Integer) zzma.m(j2, obj)).intValue();
    }

    public static long E(long j2, Object obj) {
        return ((Long) zzma.m(j2, obj)).longValue();
    }

    public static zzlx F(Object obj) {
        zzjb zzjbVar = (zzjb) obj;
        zzlx zzlxVar = zzjbVar.zzb;
        if (zzlxVar != zzlx.f31280f) {
            return zzlxVar;
        }
        zzlx zzlxVarB = zzlx.b();
        zzjbVar.zzb = zzlxVarB;
        return zzlxVarB;
    }

    /* JADX WARN: Code duplicated, block: B:125:0x026f  */
    /* JADX WARN: Code duplicated, block: B:127:0x0273  */
    /* JADX WARN: Code duplicated, block: B:130:0x028d  */
    /* JADX WARN: Code duplicated, block: B:131:0x0290  */
    /* JADX WARN: Code duplicated, block: B:179:0x037a  */
    public static zzko l(zzki zzkiVar, zzks zzksVar, zzju zzjuVar, zzlu zzluVar, zziq zziqVar, zzkh zzkhVar) {
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
        if (!(zzkiVar instanceof zzla)) {
            r81.h();
            return null;
        }
        zzla zzlaVar = (zzla) zzkiVar;
        int i25 = 0;
        boolean z = zzlaVar.d0() == 2;
        String str = zzlaVar.f31260b;
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
            iArr = p;
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
            i3 = (iCharAt6 << 1) + iCharAt7;
            i4 = iCharAt8;
            iArr = iArr3;
            i25 = iCharAt6;
            i27 = i51;
        }
        Unsafe unsafe = q;
        Object[] objArr = zzlaVar.f31261c;
        Class<?> cls = zzlaVar.f31259a.getClass();
        int i55 = i25;
        int[] iArr4 = new int[i4 * 3];
        Object[] objArr2 = new Object[i4 << 1];
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
                    objArr3[((i60 / 3) << 1) + 1] = objArr4[i3];
                } else {
                    if (i75 == 12 && !z) {
                        i17 = i3 + 1;
                        objArr3[((i60 / 3) << 1) + 1] = objArr4[i3];
                    }
                    i18 = i76 << 1;
                    obj = objArr4[i18];
                    if (obj instanceof Field) {
                        fieldN2 = (Field) obj;
                    } else {
                        fieldN2 = n(cls, (String) obj);
                        objArr4[i18] = fieldN2;
                    }
                    int i77 = i72;
                    int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldN2);
                    i19 = i18 + 1;
                    obj2 = objArr4[i19];
                    if (obj2 instanceof Field) {
                        fieldN3 = (Field) obj2;
                    } else {
                        fieldN3 = n(cls, (String) obj2);
                        objArr4[i19] = fieldN3;
                    }
                    i15 = i77;
                    iObjectFieldOffset = iObjectFieldOffset3;
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldN3);
                    i16 = 0;
                }
                i3 = i17;
                i18 = i76 << 1;
                obj = objArr4[i18];
                if (obj instanceof Field) {
                    fieldN2 = (Field) obj;
                } else {
                    fieldN2 = n(cls, (String) obj);
                    objArr4[i18] = fieldN2;
                }
                int i78 = i72;
                int iObjectFieldOffset4 = (int) unsafe.objectFieldOffset(fieldN2);
                i19 = i18 + 1;
                obj2 = objArr4[i19];
                if (obj2 instanceof Field) {
                    fieldN3 = (Field) obj2;
                } else {
                    fieldN3 = n(cls, (String) obj2);
                    objArr4[i19] = fieldN3;
                }
                i15 = i78;
                iObjectFieldOffset = iObjectFieldOffset4;
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldN3);
                i16 = 0;
            } else {
                int i79 = i3 + 1;
                Field fieldN4 = n(cls, (String) objArr4[i3]);
                if (i71 == 9 || i71 == 17) {
                    objArr3[((i60 / 3) << 1) + 1] = fieldN4.getType();
                } else {
                    if (i71 == 27 || i71 == 49) {
                        i3 += 2;
                        objArr3[((i60 / 3) << 1) + 1] = objArr4[i79];
                    } else if (i71 == 12 || i71 == 30 || i71 == 44) {
                        if (!z) {
                            i3 += 2;
                            objArr3[((i60 / 3) << 1) + 1] = objArr4[i79];
                        }
                    } else if (i71 == 50) {
                        int i80 = i58 + 1;
                        iArr[i58] = i60;
                        int i81 = (i60 / 3) << 1;
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
                        int i86 = (iCharAt13 / 32) + (i55 << 1);
                        Object obj3 = objArr4[i86];
                        if (obj3 instanceof Field) {
                            fieldN = (Field) obj3;
                        } else {
                            fieldN = n(cls, (String) obj3);
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
        return new zzko(iArr4, objArr2, iCharAt, iCharAt2, zzlaVar.f31259a, z, iArr, iCharAt4, i56, zzksVar, zzjuVar, zzluVar, zziqVar, zzkhVar);
    }

    public static Field n(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String string = Arrays.toString(declaredFields);
            StringBuilder sb = new StringBuilder(String.valueOf(string).length() + name.length() + String.valueOf(str).length() + 40);
            sb.append("Field ");
            sb.append(str);
            sb.append(" for ");
            sb.append(name);
            v7.h(n00.r(" not found. Known fields are ", string, sb));
            return null;
        }
    }

    public static void o(int i2, Object obj, zzmr zzmrVar) {
        if (obj instanceof String) {
            zzmrVar.C(i2, (String) obj);
        } else {
            zzmrVar.A(i2, (zzht) obj);
        }
    }

    public final zzjg A(int i2) {
        return (zzjg) this.f31243b[((i2 / 3) << 1) + 1];
    }

    public final boolean B(zzjb zzjbVar, zzjb zzjbVar2, int i2) {
        return t(i2, zzjbVar) == t(i2, zzjbVar2);
    }

    public final int C(int i2) {
        return this.f31242a[i2 + 1];
    }

    @Override // com.google.android.gms.internal.vision.zzlc
    public final void a(Object obj) {
        int[] iArr;
        int i2;
        int i3 = this.f31248i;
        while (true) {
            iArr = this.f31247h;
            i2 = this.f31249j;
            if (i3 >= i2) {
                break;
            }
            long jC = C(iArr[i3]) & 1048575;
            Object objM = zzma.m(jC, obj);
            if (objM != null) {
                zzma.d(jC, obj, this.o.f(objM));
            }
            i3++;
        }
        int length = iArr.length;
        while (i2 < length) {
            this.l.b(iArr[i2], obj);
            i2++;
        }
        ((zzlw) this.m).getClass();
        ((zzjb) obj).zzb.f31284e = false;
        if (this.f31246f) {
            ((zzip) this.n).getClass();
            ((zzjb.zzc) obj).zzc.f();
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0045  */
    /* JADX WARN: Code duplicated, block: B:55:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:56:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:59:0x00d1  */
    @Override // com.google.android.gms.internal.vision.zzlc
    public final boolean b(Object obj) {
        int i2;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        loop0: while (true) {
            boolean zT = true;
            if (i4 >= this.f31248i) {
                if (this.f31246f) {
                    ((zzip) this.n).getClass();
                    if (!((zzjb.zzc) obj).zzc.l()) {
                        break;
                    }
                }
                return true;
            }
            int i6 = this.f31247h[i4];
            int[] iArr = this.f31242a;
            int i7 = iArr[i6];
            int iC = C(i6);
            int i8 = iArr[i6 + 2];
            int i9 = i8 & 1048575;
            int i10 = 1 << (i8 >>> 20);
            if (i9 != i3) {
                if (i9 != 1048575) {
                    i5 = q.getInt(obj, i9);
                }
                i3 = i9;
            }
            if ((268435456 & iC) == 0) {
                i2 = (267386880 & iC) >>> 20;
                if (i2 != 9 || i2 == 17) {
                    if (i3 == 1048575) {
                        zT = t(i6, obj);
                    } else if ((i10 & i5) == 0) {
                        zT = false;
                    }
                    if (zT && !m(i6).b(zzma.m(iC & 1048575, obj))) {
                        break;
                    }
                    i4++;
                } else {
                    if (i2 != 27) {
                        if (i2 == 60 || i2 == 68) {
                            if (s(i7, i6, obj) && !m(i6).b(zzma.m(iC & 1048575, obj))) {
                                break;
                            }
                        } else if (i2 != 49) {
                            if (i2 != 50) {
                                continue;
                            } else {
                                Object objM = zzma.m(iC & 1048575, obj);
                                zzkh zzkhVar = this.o;
                                if (!zzkhVar.a(objM).isEmpty()) {
                                    zzkhVar.c(v(i6));
                                    throw null;
                                }
                            }
                        }
                        i4++;
                    }
                    List list = (List) zzma.m(iC & 1048575, obj);
                    if (list.isEmpty()) {
                        continue;
                    } else {
                        zzlc zzlcVarM = m(i6);
                        for (int i11 = 0; i11 < list.size(); i11++) {
                            if (!zzlcVarM.b(list.get(i11))) {
                                break loop0;
                            }
                        }
                    }
                    i4++;
                }
            } else {
                if (!(i3 == 1048575 ? t(i6, obj) : (i5 & i10) != 0)) {
                    break;
                }
                i2 = (267386880 & iC) >>> 20;
                if (i2 != 9) {
                }
                if (i3 == 1048575) {
                    zT = t(i6, obj);
                } else if ((i10 & i5) == 0) {
                    zT = false;
                }
                if (zT) {
                    continue;
                }
                i4++;
            }
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:126:0x0308  */
    /* JADX WARN: Code duplicated, block: B:241:0x05f7 A[PHI: r8
      0x05f7: PHI (r8v3 int) = 
      (r8v2 int)
      (r8v2 int)
      (r8v2 int)
      (r8v35 int)
      (r8v2 int)
      (r8v2 int)
      (r8v2 int)
      (r8v2 int)
      (r8v2 int)
      (r8v2 int)
      (r8v2 int)
      (r8v40 int)
      (r8v2 int)
     binds: [B:235:0x05de, B:270:0x068f, B:267:0x067a, B:268:0x067c, B:264:0x0669, B:261:0x065a, B:257:0x0644, B:254:0x0634, B:251:0x0620, B:248:0x0611, B:245:0x0602, B:240:0x05f6, B:238:0x05e6] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:282:0x06ca A[PHI: r8
      0x06ca: PHI (r8v32 int) = 
      (r8v2 int)
      (r8v2 int)
      (r8v2 int)
      (r8v2 int)
      (r8v2 int)
      (r8v2 int)
      (r8v2 int)
      (r8v2 int)
      (r8v2 int)
      (r8v2 int)
      (r8v10 int)
      (r8v11 int)
      (r8v2 int)
      (r8v12 int)
      (r8v2 int)
      (r8v13 int)
      (r8v2 int)
      (r8v14 int)
      (r8v2 int)
      (r8v15 int)
      (r8v2 int)
      (r8v16 int)
      (r8v2 int)
      (r8v17 int)
      (r8v2 int)
      (r8v18 int)
      (r8v2 int)
      (r8v19 int)
      (r8v2 int)
      (r8v20 int)
      (r8v2 int)
      (r8v21 int)
      (r8v2 int)
      (r8v22 int)
      (r8v2 int)
      (r8v23 int)
      (r8v2 int)
      (r8v24 int)
      (r8v2 int)
      (r8v25 int)
      (r8v26 int)
      (r8v2 int)
      (r8v2 int)
      (r8v2 int)
      (r8v2 int)
      (r8v2 int)
      (r8v2 int)
      (r8v2 int)
      (r8v30 int)
      (r8v2 int)
      (r8v2 int)
     binds: [B:425:0x0a70, B:422:0x0a5e, B:419:0x0a4e, B:416:0x0a40, B:413:0x0a2c, B:410:0x0a1f, B:407:0x0a11, B:404:0x0a03, B:401:0x09f5, B:398:0x09e1, B:380:0x095a, B:358:0x08b8, B:352:0x0894, B:353:0x0896, B:349:0x087e, B:350:0x0880, B:346:0x0868, B:347:0x086a, B:343:0x0852, B:344:0x0854, B:340:0x083c, B:341:0x083e, B:337:0x0826, B:338:0x0828, B:334:0x0810, B:335:0x0812, B:331:0x07fa, B:332:0x07fc, B:328:0x07e2, B:329:0x07e4, B:325:0x07cc, B:326:0x07ce, B:322:0x07b6, B:323:0x07b8, B:319:0x07a0, B:320:0x07a2, B:316:0x078a, B:317:0x078c, B:313:0x0774, B:314:0x0776, B:311:0x0767, B:304:0x0735, B:301:0x0726, B:298:0x0718, B:295:0x0702, B:292:0x06f3, B:288:0x06dd, B:285:0x06d2, B:281:0x06c9, B:279:0x06c3, B:276:0x06b2] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:356:0x08ae  */
    @Override // com.google.android.gms.internal.vision.zzlc
    public final int c(Object obj) {
        zzlu zzluVar;
        int i2;
        int i3;
        char c2;
        char c3;
        int iM;
        int iR;
        int iE;
        int iG;
        int iA;
        char c4;
        int iH;
        int iR2;
        int iE2;
        int iG2;
        int iR3;
        int iM2;
        int iL;
        int iA2;
        int iH2;
        boolean z = this.g;
        zzlu zzluVar2 = this.m;
        zzkh zzkhVar = this.o;
        int i4 = 267386880;
        int i5 = 1048575;
        int[] iArr = this.f31242a;
        int i6 = 1;
        if (z) {
            Unsafe unsafe = q;
            int i7 = 0;
            int iM3 = 0;
            while (i7 < iArr.length) {
                int iC = C(i7);
                int i8 = (iC & i4) >>> 20;
                int i9 = i4;
                int i10 = iArr[i7];
                int i11 = i5;
                int[] iArr2 = iArr;
                long j2 = iC & i5;
                if (i8 >= zziv.zza.d0() && i8 <= zziv.zzb.d0()) {
                    int i12 = iArr2[i7 + 2];
                }
                switch (i8) {
                    case 0:
                        if (t(i7, obj)) {
                            iM3 = z81.m(i10 << 3, 8, iM3);
                        }
                        break;
                    case 1:
                        if (t(i7, obj)) {
                            iM3 = z81.m(i10 << 3, 4, iM3);
                        }
                        break;
                    case 2:
                        if (t(i7, obj)) {
                            long jL = zzma.f31290c.l(j2, obj);
                            iR3 = zzii.r(i10 << 3);
                            iM2 = zzii.m(jL);
                            iM3 += iM2 + iR3;
                        }
                        break;
                    case 3:
                        if (t(i7, obj)) {
                            iL = zzii.l(i10, zzma.f31290c.l(j2, obj));
                            iM3 += iL;
                        }
                        break;
                    case 4:
                        if (t(i7, obj)) {
                            int iK = zzma.f31290c.k(j2, obj);
                            iR3 = zzii.r(i10 << 3);
                            iM2 = zzii.n(iK);
                            iM3 += iM2 + iR3;
                        }
                        break;
                    case 5:
                        if (t(i7, obj)) {
                            iL = zzii.p(i10);
                            iM3 += iL;
                        }
                        break;
                    case 6:
                        if (t(i7, obj)) {
                            iL = zzii.t(i10);
                            iM3 += iL;
                        }
                        break;
                    case 7:
                        if (t(i7, obj)) {
                            iM3 = z81.m(i10 << 3, 1, iM3);
                        }
                        break;
                    case 8:
                        if (t(i7, obj)) {
                            Object objM = zzma.m(j2, obj);
                            if (objM instanceof zzht) {
                                iL = zzii.g(i10, (zzht) objM);
                                iM3 += iL;
                            } else {
                                iR3 = zzii.r(i10 << 3);
                                iM2 = zzii.e((String) objM);
                                iM3 += iM2 + iR3;
                            }
                        }
                        break;
                    case 9:
                        if (t(i7, obj)) {
                            iA2 = zzle.a(i10, zzma.m(j2, obj), m(i7));
                            iM3 += iA2;
                        }
                        break;
                    case 10:
                        if (t(i7, obj)) {
                            iL = zzii.g(i10, (zzht) zzma.m(j2, obj));
                            iM3 += iL;
                        }
                        break;
                    case 11:
                        if (t(i7, obj)) {
                            iL = zzii.q(i10, zzma.f31290c.k(j2, obj));
                            iM3 += iL;
                        }
                        break;
                    case 12:
                        if (t(i7, obj)) {
                            int iK2 = zzma.f31290c.k(j2, obj);
                            iR3 = zzii.r(i10 << 3);
                            iM2 = zzii.n(iK2);
                            iM3 += iM2 + iR3;
                        }
                        break;
                    case 13:
                        if (t(i7, obj)) {
                            iM3 = z81.m(i10 << 3, 4, iM3);
                        }
                        break;
                    case 14:
                        if (t(i7, obj)) {
                            iM3 = z81.m(i10 << 3, 8, iM3);
                        }
                        break;
                    case 15:
                        if (t(i7, obj)) {
                            iL = zzii.s(i10, zzma.f31290c.k(j2, obj));
                            iM3 += iL;
                        }
                        break;
                    case 16:
                        if (t(i7, obj)) {
                            iL = zzii.o(i10, zzma.f31290c.l(j2, obj));
                            iM3 += iL;
                        }
                        break;
                    case 17:
                        if (t(i7, obj)) {
                            iL = zzii.h(i10, (zzkk) zzma.m(j2, obj), m(i7));
                            iM3 += iL;
                        }
                        break;
                    case 18:
                        iA2 = zzle.A(i10, (List) zzma.m(j2, obj));
                        iM3 += iA2;
                        break;
                    case 19:
                        iA2 = zzle.x(i10, (List) zzma.m(j2, obj));
                        iM3 += iA2;
                        break;
                    case 20:
                        List list = (List) zzma.m(j2, obj);
                        Class cls = zzle.f31264a;
                        if (list.size() == 0) {
                            iA2 = 0;
                        } else {
                            iA2 = z81.o(i10, list.size(), zzle.c(list));
                        }
                        iM3 += iA2;
                        break;
                    case 21:
                        List list2 = (List) zzma.m(j2, obj);
                        Class cls2 = zzle.f31264a;
                        int size = list2.size();
                        if (size == 0) {
                            iA2 = 0;
                        } else {
                            iA2 = z81.o(i10, size, zzle.k(list2));
                        }
                        iM3 += iA2;
                        break;
                    case 22:
                        List list3 = (List) zzma.m(j2, obj);
                        Class cls3 = zzle.f31264a;
                        int size2 = list3.size();
                        if (size2 == 0) {
                            iA2 = 0;
                        } else {
                            iA2 = z81.o(i10, size2, zzle.r(list3));
                        }
                        iM3 += iA2;
                        break;
                    case 23:
                        iA2 = zzle.A(i10, (List) zzma.m(j2, obj));
                        iM3 += iA2;
                        break;
                    case 24:
                        iA2 = zzle.x(i10, (List) zzma.m(j2, obj));
                        iM3 += iA2;
                        break;
                    case 25:
                        List list4 = (List) zzma.m(j2, obj);
                        Class cls4 = zzle.f31264a;
                        int size3 = list4.size();
                        if (size3 == 0) {
                            iA2 = 0;
                        } else {
                            iA2 = (zzii.r(i10 << 3) + 1) * size3;
                        }
                        iM3 += iA2;
                        break;
                    case 26:
                        iA2 = zzle.j(i10, (List) zzma.m(j2, obj));
                        iM3 += iA2;
                        break;
                    case 27:
                        iA2 = zzle.b(i10, (List) zzma.m(j2, obj), m(i7));
                        iM3 += iA2;
                        break;
                    case 28:
                        iA2 = zzle.m(i10, (List) zzma.m(j2, obj));
                        iM3 += iA2;
                        break;
                    case 29:
                        List list5 = (List) zzma.m(j2, obj);
                        Class cls5 = zzle.f31264a;
                        int size4 = list5.size();
                        if (size4 == 0) {
                            iA2 = 0;
                        } else {
                            iA2 = z81.o(i10, size4, zzle.t(list5));
                        }
                        iM3 += iA2;
                        break;
                    case 30:
                        List list6 = (List) zzma.m(j2, obj);
                        Class cls6 = zzle.f31264a;
                        int size5 = list6.size();
                        if (size5 == 0) {
                            iA2 = 0;
                        } else {
                            iA2 = z81.o(i10, size5, zzle.p(list6));
                        }
                        iM3 += iA2;
                        break;
                    case 31:
                        iA2 = zzle.x(i10, (List) zzma.m(j2, obj));
                        iM3 += iA2;
                        break;
                    case 32:
                        iA2 = zzle.A(i10, (List) zzma.m(j2, obj));
                        iM3 += iA2;
                        break;
                    case 33:
                        List list7 = (List) zzma.m(j2, obj);
                        Class cls7 = zzle.f31264a;
                        int size6 = list7.size();
                        if (size6 == 0) {
                            iA2 = 0;
                        } else {
                            iA2 = z81.o(i10, size6, zzle.v(list7));
                        }
                        iM3 += iA2;
                        break;
                    case 34:
                        List list8 = (List) zzma.m(j2, obj);
                        Class cls8 = zzle.f31264a;
                        int size7 = list8.size();
                        if (size7 == 0) {
                            iA2 = 0;
                        } else {
                            iA2 = z81.o(i10, size7, zzle.n(list8));
                        }
                        iM3 += iA2;
                        break;
                    case 35:
                        int iB = zzle.B((List) unsafe.getObject(obj, j2));
                        if (iB > 0) {
                            iM3 = z81.n(iB, zzii.k(i10), iB, iM3);
                        }
                        break;
                    case 36:
                        int iY = zzle.y((List) unsafe.getObject(obj, j2));
                        if (iY > 0) {
                            iM3 = z81.n(iY, zzii.k(i10), iY, iM3);
                        }
                        break;
                    case 37:
                        int iC2 = zzle.c((List) unsafe.getObject(obj, j2));
                        if (iC2 > 0) {
                            iM3 = z81.n(iC2, zzii.k(i10), iC2, iM3);
                        }
                        break;
                    case 38:
                        int iK3 = zzle.k((List) unsafe.getObject(obj, j2));
                        if (iK3 > 0) {
                            iM3 = z81.n(iK3, zzii.k(i10), iK3, iM3);
                        }
                        break;
                    case 39:
                        int iR4 = zzle.r((List) unsafe.getObject(obj, j2));
                        if (iR4 > 0) {
                            iM3 = z81.n(iR4, zzii.k(i10), iR4, iM3);
                        }
                        break;
                    case 40:
                        int iB2 = zzle.B((List) unsafe.getObject(obj, j2));
                        if (iB2 > 0) {
                            iM3 = z81.n(iB2, zzii.k(i10), iB2, iM3);
                        }
                        break;
                    case 41:
                        int iY2 = zzle.y((List) unsafe.getObject(obj, j2));
                        if (iY2 > 0) {
                            iM3 = z81.n(iY2, zzii.k(i10), iY2, iM3);
                        }
                        break;
                    case EACTags.CURRENCY_CODE /* 42 */:
                        List list9 = (List) unsafe.getObject(obj, j2);
                        Class cls9 = zzle.f31264a;
                        int size8 = list9.size();
                        if (size8 > 0) {
                            iM3 = z81.n(size8, zzii.k(i10), size8, iM3);
                        }
                        break;
                    case EACTags.DATE_OF_BIRTH /* 43 */:
                        int iT = zzle.t((List) unsafe.getObject(obj, j2));
                        if (iT > 0) {
                            iM3 = z81.n(iT, zzii.k(i10), iT, iM3);
                        }
                        break;
                    case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                        int iP = zzle.p((List) unsafe.getObject(obj, j2));
                        if (iP > 0) {
                            iM3 = z81.n(iP, zzii.k(i10), iP, iM3);
                        }
                        break;
                    case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                        int iY3 = zzle.y((List) unsafe.getObject(obj, j2));
                        if (iY3 > 0) {
                            iM3 = z81.n(iY3, zzii.k(i10), iY3, iM3);
                        }
                        break;
                    case 46:
                        int iB3 = zzle.B((List) unsafe.getObject(obj, j2));
                        if (iB3 > 0) {
                            iM3 = z81.n(iB3, zzii.k(i10), iB3, iM3);
                        }
                        break;
                    case EACTags.PIN_USAGE_POLICY /* 47 */:
                        int iV = zzle.v((List) unsafe.getObject(obj, j2));
                        if (iV > 0) {
                            iM3 = z81.n(iV, zzii.k(i10), iV, iM3);
                        }
                        break;
                    case 48:
                        int iN = zzle.n((List) unsafe.getObject(obj, j2));
                        if (iN > 0) {
                            iM3 = z81.n(iN, zzii.k(i10), iN, iM3);
                        }
                        break;
                    case 49:
                        List list10 = (List) zzma.m(j2, obj);
                        zzlc zzlcVarM = m(i7);
                        Class cls10 = zzle.f31264a;
                        int size9 = list10.size();
                        if (size9 == 0) {
                            iH2 = 0;
                        } else {
                            iH2 = 0;
                            for (int i13 = 0; i13 < size9; i13++) {
                                iH2 = zzii.h(i10, (zzkk) list10.get(i13), zzlcVarM) + iH2;
                            }
                        }
                        iM3 += iH2;
                        break;
                    case 50:
                        zzkhVar.mo36e(zzma.m(j2, obj), v(i7));
                        break;
                    case EACTags.TRANSACTION_DATE /* 51 */:
                        if (s(i10, i7, obj)) {
                            iM3 = z81.m(i10 << 3, 8, iM3);
                        }
                        break;
                    case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                        if (s(i10, i7, obj)) {
                            iM3 = z81.m(i10 << 3, 4, iM3);
                        }
                        break;
                    case EACTags.SEX /* 53 */:
                        if (s(i10, i7, obj)) {
                            long jE = E(j2, obj);
                            iR3 = zzii.r(i10 << 3);
                            iM2 = zzii.m(jE);
                            iM3 += iM2 + iR3;
                        }
                        break;
                    case EACTags.CURRENCY_EXPONENT /* 54 */:
                        if (s(i10, i7, obj)) {
                            iL = zzii.l(i10, E(j2, obj));
                            iM3 += iL;
                        }
                        break;
                    case 55:
                        if (s(i10, i7, obj)) {
                            int iD = D(j2, obj);
                            iR3 = zzii.r(i10 << 3);
                            iM2 = zzii.n(iD);
                            iM3 += iM2 + iR3;
                        }
                        break;
                    case 56:
                        if (s(i10, i7, obj)) {
                            iL = zzii.p(i10);
                            iM3 += iL;
                        }
                        break;
                    case 57:
                        if (s(i10, i7, obj)) {
                            iL = zzii.t(i10);
                            iM3 += iL;
                        }
                        break;
                    case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
                        if (s(i10, i7, obj)) {
                            iM3 = z81.m(i10 << 3, 1, iM3);
                        }
                        break;
                    case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                        if (s(i10, i7, obj)) {
                            Object objM2 = zzma.m(j2, obj);
                            if (objM2 instanceof zzht) {
                                iL = zzii.g(i10, (zzht) objM2);
                                iM3 += iL;
                            } else {
                                iR3 = zzii.r(i10 << 3);
                                iM2 = zzii.e((String) objM2);
                                iM3 += iM2 + iR3;
                            }
                        }
                        break;
                    case 60:
                        if (s(i10, i7, obj)) {
                            iA2 = zzle.a(i10, zzma.m(j2, obj), m(i7));
                            iM3 += iA2;
                        }
                        break;
                    case 61:
                        if (s(i10, i7, obj)) {
                            iL = zzii.g(i10, (zzht) zzma.m(j2, obj));
                            iM3 += iL;
                        }
                        break;
                    case 62:
                        if (s(i10, i7, obj)) {
                            iL = zzii.q(i10, D(j2, obj));
                            iM3 += iL;
                        }
                        break;
                    case 63:
                        if (s(i10, i7, obj)) {
                            int iD2 = D(j2, obj);
                            iR3 = zzii.r(i10 << 3);
                            iM2 = zzii.n(iD2);
                            iM3 += iM2 + iR3;
                        }
                        break;
                    case 64:
                        if (s(i10, i7, obj)) {
                            iM3 = z81.m(i10 << 3, 4, iM3);
                        }
                        break;
                    case EACTags.ELEMENT_LIST /* 65 */:
                        if (s(i10, i7, obj)) {
                            iM3 = z81.m(i10 << 3, 8, iM3);
                        }
                        break;
                    case EACTags.ADDRESS /* 66 */:
                        if (s(i10, i7, obj)) {
                            iL = zzii.s(i10, D(j2, obj));
                            iM3 += iL;
                        }
                        break;
                    case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                        if (s(i10, i7, obj)) {
                            iL = zzii.o(i10, E(j2, obj));
                            iM3 += iL;
                        }
                        break;
                    case EACTags.APPLICATION_IMAGE /* 68 */:
                        if (s(i10, i7, obj)) {
                            iL = zzii.h(i10, (zzkk) zzma.m(j2, obj), m(i7));
                            iM3 += iL;
                        }
                        break;
                }
                i7 += 3;
                i4 = i9;
                i5 = i11;
                iArr = iArr2;
            }
            ((zzlw) zzluVar2).getClass();
            return ((zzjb) obj).zzb.d() + iM3;
        }
        Unsafe unsafe2 = q;
        int i14 = 1048575;
        int i15 = 0;
        int iM4 = 0;
        int i16 = 0;
        while (i15 < iArr.length) {
            int iC3 = C(i15);
            int i17 = iArr[i15];
            int i18 = (iC3 & 267386880) >>> 20;
            int i19 = i6;
            if (i18 <= 17) {
                int i20 = iArr[i15 + 2];
                int i21 = i20 & 1048575;
                i2 = i19 << (i20 >>> 20);
                zzluVar = zzluVar2;
                if (i21 != i14) {
                    i16 = unsafe2.getInt(obj, i21);
                    i14 = i21;
                }
            } else {
                zzluVar = zzluVar2;
                i2 = 0;
            }
            long j3 = iC3 & 1048575;
            switch (i18) {
                case 0:
                    i3 = i19;
                    c2 = 4;
                    if ((i16 & i2) != 0) {
                        c3 = '\b';
                        iM4 = z81.m(i17 << 3, 8, iM4);
                    } else {
                        c3 = '\b';
                    }
                    break;
                case 1:
                    i3 = i19;
                    if ((i16 & i2) != 0) {
                        c2 = 4;
                        iM4 = z81.m(i17 << 3, 4, iM4);
                    } else {
                        c2 = 4;
                    }
                    c3 = '\b';
                    break;
                case 2:
                    i3 = i19;
                    if ((i2 & i16) != 0) {
                        iM = zzii.m(unsafe2.getLong(obj, j3)) + zzii.r(i17 << 3);
                        iM4 += iM;
                    }
                    c2 = 4;
                    c3 = '\b';
                    break;
                case 3:
                    i3 = i19;
                    if ((i2 & i16) != 0) {
                        iM = zzii.l(i17, unsafe2.getLong(obj, j3));
                        iM4 += iM;
                    }
                    c2 = 4;
                    c3 = '\b';
                    break;
                case 4:
                    i3 = i19;
                    if ((i2 & i16) != 0) {
                        iM = zzii.n(unsafe2.getInt(obj, j3)) + zzii.r(i17 << 3);
                        iM4 += iM;
                    }
                    c2 = 4;
                    c3 = '\b';
                    break;
                case 5:
                    i3 = i19;
                    if ((i16 & i2) != 0) {
                        iM = zzii.p(i17);
                        iM4 += iM;
                    }
                    c2 = 4;
                    c3 = '\b';
                    break;
                case 6:
                    i3 = i19;
                    if ((i16 & i2) != 0) {
                        iM = zzii.t(i17);
                        iM4 += iM;
                    }
                    c2 = 4;
                    c3 = '\b';
                    break;
                case 7:
                    if ((i16 & i2) != 0) {
                        i3 = 1;
                        iM4 = z81.m(i17 << 3, 1, iM4);
                    } else {
                        i3 = 1;
                    }
                    c2 = 4;
                    c3 = '\b';
                    break;
                case 8:
                    if ((i16 & i2) != 0) {
                        Object object = unsafe2.getObject(obj, j3);
                        if (object instanceof zzht) {
                            iG = zzii.g(i17, (zzht) object);
                        } else {
                            iR = zzii.r(i17 << 3);
                            iE = zzii.e((String) object);
                            iG = iE + iR;
                        }
                        iM4 += iG;
                    }
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case 9:
                    if ((i16 & i2) != 0) {
                        iA = zzle.a(i17, unsafe2.getObject(obj, j3), m(i15));
                        iM4 += iA;
                    }
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case 10:
                    if ((i16 & i2) != 0) {
                        iG = zzii.g(i17, (zzht) unsafe2.getObject(obj, j3));
                        iM4 += iG;
                    }
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case 11:
                    if ((i16 & i2) != 0) {
                        iG = zzii.q(i17, unsafe2.getInt(obj, j3));
                        iM4 += iG;
                    }
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case 12:
                    if ((i16 & i2) != 0) {
                        int i22 = unsafe2.getInt(obj, j3);
                        iR = zzii.r(i17 << 3);
                        iE = zzii.n(i22);
                        iG = iE + iR;
                        iM4 += iG;
                    }
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case 13:
                    if ((i16 & i2) != 0) {
                        c2 = 4;
                        iM4 = z81.m(i17 << 3, 4, iM4);
                    } else {
                        c2 = 4;
                    }
                    i3 = 1;
                    c3 = '\b';
                    break;
                case 14:
                    if ((i16 & i2) != 0) {
                        c4 = '\b';
                        iM4 = z81.m(i17 << 3, 8, iM4);
                        c3 = c4;
                        c2 = 4;
                        i3 = 1;
                    }
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case 15:
                    if ((i16 & i2) != 0) {
                        iG = zzii.s(i17, unsafe2.getInt(obj, j3));
                        iM4 += iG;
                    }
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case 16:
                    if ((i16 & i2) != 0) {
                        iG = zzii.o(i17, unsafe2.getLong(obj, j3));
                        iM4 += iG;
                    }
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case 17:
                    if ((i16 & i2) != 0) {
                        iG = zzii.h(i17, (zzkk) unsafe2.getObject(obj, j3), m(i15));
                        iM4 += iG;
                    }
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case 18:
                    iA = zzle.A(i17, (List) unsafe2.getObject(obj, j3));
                    iM4 += iA;
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case 19:
                    iA = zzle.x(i17, (List) unsafe2.getObject(obj, j3));
                    iM4 += iA;
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case 20:
                    List list11 = (List) unsafe2.getObject(obj, j3);
                    Class cls11 = zzle.f31264a;
                    if (list11.size() == 0) {
                        iA = 0;
                    } else {
                        iA = z81.o(i17, list11.size(), zzle.c(list11));
                    }
                    iM4 += iA;
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case 21:
                    List list12 = (List) unsafe2.getObject(obj, j3);
                    Class cls12 = zzle.f31264a;
                    int size10 = list12.size();
                    if (size10 == 0) {
                        iA = 0;
                    } else {
                        iA = z81.o(i17, size10, zzle.k(list12));
                    }
                    iM4 += iA;
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case 22:
                    List list13 = (List) unsafe2.getObject(obj, j3);
                    Class cls13 = zzle.f31264a;
                    int size11 = list13.size();
                    if (size11 == 0) {
                        iA = 0;
                    } else {
                        iA = z81.o(i17, size11, zzle.r(list13));
                    }
                    iM4 += iA;
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case 23:
                    iA = zzle.A(i17, (List) unsafe2.getObject(obj, j3));
                    iM4 += iA;
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case 24:
                    iA = zzle.x(i17, (List) unsafe2.getObject(obj, j3));
                    iM4 += iA;
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case 25:
                    List list14 = (List) unsafe2.getObject(obj, j3);
                    Class cls14 = zzle.f31264a;
                    int size12 = list14.size();
                    iM4 += size12 == 0 ? 0 : (zzii.r(i17 << 3) + 1) * size12;
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case 26:
                    iA = zzle.j(i17, (List) unsafe2.getObject(obj, j3));
                    iM4 += iA;
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case 27:
                    iA = zzle.b(i17, (List) unsafe2.getObject(obj, j3), m(i15));
                    iM4 += iA;
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case 28:
                    iA = zzle.m(i17, (List) unsafe2.getObject(obj, j3));
                    iM4 += iA;
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case 29:
                    List list15 = (List) unsafe2.getObject(obj, j3);
                    Class cls15 = zzle.f31264a;
                    int size13 = list15.size();
                    if (size13 == 0) {
                        iA = 0;
                    } else {
                        iA = z81.o(i17, size13, zzle.t(list15));
                    }
                    iM4 += iA;
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case 30:
                    List list16 = (List) unsafe2.getObject(obj, j3);
                    Class cls16 = zzle.f31264a;
                    int size14 = list16.size();
                    if (size14 == 0) {
                        iA = 0;
                    } else {
                        iA = z81.o(i17, size14, zzle.p(list16));
                    }
                    iM4 += iA;
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case 31:
                    iA = zzle.x(i17, (List) unsafe2.getObject(obj, j3));
                    iM4 += iA;
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case 32:
                    iA = zzle.A(i17, (List) unsafe2.getObject(obj, j3));
                    iM4 += iA;
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case 33:
                    List list17 = (List) unsafe2.getObject(obj, j3);
                    Class cls17 = zzle.f31264a;
                    int size15 = list17.size();
                    if (size15 == 0) {
                        iA = 0;
                    } else {
                        iA = z81.o(i17, size15, zzle.v(list17));
                    }
                    iM4 += iA;
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case 34:
                    List list18 = (List) unsafe2.getObject(obj, j3);
                    Class cls18 = zzle.f31264a;
                    int size16 = list18.size();
                    if (size16 == 0) {
                        iA = 0;
                    } else {
                        iA = z81.o(i17, size16, zzle.n(list18));
                    }
                    iM4 += iA;
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case 35:
                    int iB4 = zzle.B((List) unsafe2.getObject(obj, j3));
                    if (iB4 > 0) {
                        iM4 = z81.n(iB4, zzii.k(i17), iB4, iM4);
                    }
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case 36:
                    int iY4 = zzle.y((List) unsafe2.getObject(obj, j3));
                    if (iY4 > 0) {
                        iM4 = z81.n(iY4, zzii.k(i17), iY4, iM4);
                    }
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case 37:
                    int iC4 = zzle.c((List) unsafe2.getObject(obj, j3));
                    if (iC4 > 0) {
                        iM4 = z81.n(iC4, zzii.k(i17), iC4, iM4);
                    }
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case 38:
                    int iK4 = zzle.k((List) unsafe2.getObject(obj, j3));
                    if (iK4 > 0) {
                        iM4 = z81.n(iK4, zzii.k(i17), iK4, iM4);
                    }
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case 39:
                    int iR5 = zzle.r((List) unsafe2.getObject(obj, j3));
                    if (iR5 > 0) {
                        iM4 = z81.n(iR5, zzii.k(i17), iR5, iM4);
                    }
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case 40:
                    int iB5 = zzle.B((List) unsafe2.getObject(obj, j3));
                    if (iB5 > 0) {
                        iM4 = z81.n(iB5, zzii.k(i17), iB5, iM4);
                    }
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case 41:
                    int iY5 = zzle.y((List) unsafe2.getObject(obj, j3));
                    if (iY5 > 0) {
                        iM4 = z81.n(iY5, zzii.k(i17), iY5, iM4);
                    }
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case EACTags.CURRENCY_CODE /* 42 */:
                    List list19 = (List) unsafe2.getObject(obj, j3);
                    Class cls19 = zzle.f31264a;
                    int size17 = list19.size();
                    if (size17 > 0) {
                        iM4 = z81.n(size17, zzii.k(i17), size17, iM4);
                    }
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case EACTags.DATE_OF_BIRTH /* 43 */:
                    int iT2 = zzle.t((List) unsafe2.getObject(obj, j3));
                    if (iT2 > 0) {
                        iM4 = z81.n(iT2, zzii.k(i17), iT2, iM4);
                    }
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                    int iP2 = zzle.p((List) unsafe2.getObject(obj, j3));
                    if (iP2 > 0) {
                        iM4 = z81.n(iP2, zzii.k(i17), iP2, iM4);
                    }
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                    int iY6 = zzle.y((List) unsafe2.getObject(obj, j3));
                    if (iY6 > 0) {
                        iM4 = z81.n(iY6, zzii.k(i17), iY6, iM4);
                    }
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case 46:
                    int iB6 = zzle.B((List) unsafe2.getObject(obj, j3));
                    if (iB6 > 0) {
                        iM4 = z81.n(iB6, zzii.k(i17), iB6, iM4);
                    }
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case EACTags.PIN_USAGE_POLICY /* 47 */:
                    int iV2 = zzle.v((List) unsafe2.getObject(obj, j3));
                    if (iV2 > 0) {
                        iM4 = z81.n(iV2, zzii.k(i17), iV2, iM4);
                    }
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case 48:
                    int iN2 = zzle.n((List) unsafe2.getObject(obj, j3));
                    if (iN2 > 0) {
                        iM4 = z81.n(iN2, zzii.k(i17), iN2, iM4);
                    }
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case 49:
                    List list20 = (List) unsafe2.getObject(obj, j3);
                    zzlc zzlcVarM2 = m(i15);
                    Class cls20 = zzle.f31264a;
                    int size18 = list20.size();
                    if (size18 == 0) {
                        iH = 0;
                    } else {
                        iH = 0;
                        for (int i23 = 0; i23 < size18; i23++) {
                            iH += zzii.h(i17, (zzkk) list20.get(i23), zzlcVarM2);
                        }
                    }
                    iM4 += iH;
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case 50:
                    zzkhVar.mo36e(unsafe2.getObject(obj, j3), v(i15));
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case EACTags.TRANSACTION_DATE /* 51 */:
                    if (s(i17, i15, obj)) {
                        c4 = '\b';
                        iM4 = z81.m(i17 << 3, 8, iM4);
                        c3 = c4;
                        c2 = 4;
                        i3 = 1;
                    }
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                    if (s(i17, i15, obj)) {
                        c2 = 4;
                        iM4 = z81.m(i17 << 3, 4, iM4);
                    } else {
                        c2 = 4;
                    }
                    i3 = 1;
                    c3 = '\b';
                    break;
                case EACTags.SEX /* 53 */:
                    if (s(i17, i15, obj)) {
                        iG = zzii.m(E(j3, obj)) + zzii.r(i17 << 3);
                        iM4 += iG;
                    }
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case EACTags.CURRENCY_EXPONENT /* 54 */:
                    if (s(i17, i15, obj)) {
                        iG = zzii.l(i17, E(j3, obj));
                        iM4 += iG;
                    }
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case 55:
                    if (s(i17, i15, obj)) {
                        int iD3 = D(j3, obj);
                        iR = zzii.r(i17 << 3);
                        iE = zzii.n(iD3);
                        iG = iE + iR;
                        iM4 += iG;
                    }
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case 56:
                    if (s(i17, i15, obj)) {
                        iG = zzii.p(i17);
                        iM4 += iG;
                    }
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case 57:
                    if (s(i17, i15, obj)) {
                        iG = zzii.t(i17);
                        iM4 += iG;
                    }
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
                    if (s(i17, i15, obj)) {
                        iM4 = z81.m(i17 << 3, i19, iM4);
                        i3 = i19;
                        c2 = 4;
                        c3 = '\b';
                    }
                    c2 = 4;
                    i3 = 1;
                    c3 = '\b';
                    break;
                case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                    if (s(i17, i15, obj)) {
                        Object object2 = unsafe2.getObject(obj, j3);
                        if (object2 instanceof zzht) {
                            iG2 = zzii.g(i17, (zzht) object2);
                        } else {
                            iR2 = zzii.r(i17 << 3);
                            iE2 = zzii.e((String) object2);
                            iG2 = iE2 + iR2;
                        }
                        iM4 += iG2;
                    }
                    i3 = i19;
                    c2 = 4;
                    c3 = '\b';
                    break;
                case 60:
                    if (s(i17, i15, obj)) {
                        iM4 += zzle.a(i17, unsafe2.getObject(obj, j3), m(i15));
                    }
                    i3 = i19;
                    c2 = 4;
                    c3 = '\b';
                    break;
                case 61:
                    if (s(i17, i15, obj)) {
                        iG2 = zzii.g(i17, (zzht) unsafe2.getObject(obj, j3));
                        iM4 += iG2;
                    }
                    i3 = i19;
                    c2 = 4;
                    c3 = '\b';
                    break;
                case 62:
                    if (s(i17, i15, obj)) {
                        iG2 = zzii.q(i17, D(j3, obj));
                        iM4 += iG2;
                    }
                    i3 = i19;
                    c2 = 4;
                    c3 = '\b';
                    break;
                case 63:
                    if (s(i17, i15, obj)) {
                        int iD4 = D(j3, obj);
                        iR2 = zzii.r(i17 << 3);
                        iE2 = zzii.n(iD4);
                        iG2 = iE2 + iR2;
                        iM4 += iG2;
                    }
                    i3 = i19;
                    c2 = 4;
                    c3 = '\b';
                    break;
                case 64:
                    if (s(i17, i15, obj)) {
                        c2 = 4;
                        iM4 = z81.m(i17 << 3, 4, iM4);
                        i3 = i19;
                    } else {
                        i3 = i19;
                        c2 = 4;
                    }
                    c3 = '\b';
                    break;
                case EACTags.ELEMENT_LIST /* 65 */:
                    if (s(i17, i15, obj)) {
                        iM4 = z81.m(i17 << 3, 8, iM4);
                        c3 = '\b';
                        i3 = i19;
                        c2 = 4;
                    } else {
                        i3 = i19;
                        c2 = 4;
                        c3 = '\b';
                    }
                    break;
                case EACTags.ADDRESS /* 66 */:
                    if (s(i17, i15, obj)) {
                        iG2 = zzii.s(i17, D(j3, obj));
                        iM4 += iG2;
                    }
                    i3 = i19;
                    c2 = 4;
                    c3 = '\b';
                    break;
                case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                    if (s(i17, i15, obj)) {
                        iG2 = zzii.o(i17, E(j3, obj));
                        iM4 += iG2;
                    }
                    i3 = i19;
                    c2 = 4;
                    c3 = '\b';
                    break;
                case EACTags.APPLICATION_IMAGE /* 68 */:
                    if (s(i17, i15, obj)) {
                        iG2 = zzii.h(i17, (zzkk) unsafe2.getObject(obj, j3), m(i15));
                        iM4 += iG2;
                    }
                    i3 = i19;
                    c2 = 4;
                    c3 = '\b';
                    break;
                default:
                    i3 = i19;
                    c2 = 4;
                    c3 = '\b';
                    break;
            }
            i15 += 3;
            i6 = i3;
            zzluVar2 = zzluVar;
        }
        ((zzlw) zzluVar2).getClass();
        int iD5 = ((zzjb) obj).zzb.d() + iM4;
        if (!this.f31246f) {
            return iD5;
        }
        ((zzip) this.n).getClass();
        zziu<Object> zziuVar = ((zzjb.zzc) obj).zzc;
        int i24 = 0;
        int iH3 = 0;
        while (true) {
            int size19 = zziuVar.f31213a.f31269c.size();
            zzlg zzlgVar = zziuVar.f31213a;
            if (i24 >= size19) {
                for (Map.Entry entry : zzlgVar.f()) {
                    iH3 += zziu.h((zziw) entry.getKey(), entry.getValue());
                }
                return iD5 + iH3;
            }
            Map.Entry entryD = zzlgVar.d(i24);
            iH3 += zziu.h((zziw) entryD.getKey(), entryD.getValue());
            i24++;
        }
    }

    /* JADX WARN: Code duplicated, block: B:9:0x002c  */
    @Override // com.google.android.gms.internal.vision.zzlc
    public final void d(Object obj, zzmr zzmrVar) {
        Map.Entry entry;
        zzmrVar.getClass();
        if (!this.g) {
            y(obj, zzmrVar);
            return;
        }
        boolean z = this.f31246f;
        zziq zziqVar = this.n;
        if (z) {
            ((zzip) zziqVar).getClass();
            zziu<Object> zziuVar = ((zzjb.zzc) obj).zzc;
            if (zziuVar.f31213a.isEmpty()) {
                entry = null;
            } else {
                entry = (Map.Entry) zziuVar.j().next();
            }
        } else {
            entry = null;
        }
        int[] iArr = this.f31242a;
        int length = iArr.length;
        for (int i2 = 0; i2 < length; i2 += 3) {
            int iC = C(i2);
            int i3 = iArr[i2];
            if (entry != null) {
                ((zzip) zziqVar).getClass();
                tr.x(entry.getKey());
                throw null;
            }
            switch ((267386880 & iC) >>> 20) {
                case 0:
                    if (t(i2, obj)) {
                        zzmrVar.J(zzma.f31290c.j(iC & 1048575, obj), i3);
                    }
                    break;
                case 1:
                    if (t(i2, obj)) {
                        zzmrVar.E(zzma.f31290c.i(iC & 1048575, obj), i3);
                    }
                    break;
                case 2:
                    if (t(i2, obj)) {
                        zzmrVar.n(i3, zzma.f31290c.l(iC & 1048575, obj));
                    }
                    break;
                case 3:
                    if (t(i2, obj)) {
                        zzmrVar.i(i3, zzma.f31290c.l(iC & 1048575, obj));
                    }
                    break;
                case 4:
                    if (t(i2, obj)) {
                        zzmrVar.h(i3, zzma.f31290c.k(iC & 1048575, obj));
                    }
                    break;
                case 5:
                    if (t(i2, obj)) {
                        zzmrVar.v(i3, zzma.f31290c.l(iC & 1048575, obj));
                    }
                    break;
                case 6:
                    if (t(i2, obj)) {
                        zzmrVar.t(i3, zzma.f31290c.k(iC & 1048575, obj));
                    }
                    break;
                case 7:
                    if (t(i2, obj)) {
                        zzmrVar.a(i3, zzma.f31290c.h(iC & 1048575, obj));
                    }
                    break;
                case 8:
                    if (t(i2, obj)) {
                        o(i3, zzma.m(iC & 1048575, obj), zzmrVar);
                    }
                    break;
                case 9:
                    if (t(i2, obj)) {
                        zzmrVar.I(i3, zzma.m(iC & 1048575, obj), m(i2));
                    }
                    break;
                case 10:
                    if (t(i2, obj)) {
                        zzmrVar.A(i3, (zzht) zzma.m(iC & 1048575, obj));
                    }
                    break;
                case 11:
                    if (t(i2, obj)) {
                        zzmrVar.x(i3, zzma.f31290c.k(iC & 1048575, obj));
                    }
                    break;
                case 12:
                    if (t(i2, obj)) {
                        zzmrVar.d(i3, zzma.f31290c.k(iC & 1048575, obj));
                    }
                    break;
                case 13:
                    if (t(i2, obj)) {
                        zzmrVar.l(i3, zzma.f31290c.k(iC & 1048575, obj));
                    }
                    break;
                case 14:
                    if (t(i2, obj)) {
                        zzmrVar.c(i3, zzma.f31290c.l(iC & 1048575, obj));
                    }
                    break;
                case 15:
                    if (t(i2, obj)) {
                        zzmrVar.o(i3, zzma.f31290c.k(iC & 1048575, obj));
                    }
                    break;
                case 16:
                    if (t(i2, obj)) {
                        zzmrVar.y(i3, zzma.f31290c.l(iC & 1048575, obj));
                    }
                    break;
                case 17:
                    if (t(i2, obj)) {
                        zzmrVar.L(i3, zzma.m(iC & 1048575, obj), m(i2));
                    }
                    break;
                case 18:
                    zzle.f(i3, (List) zzma.m(iC & 1048575, obj), zzmrVar, false);
                    break;
                case 19:
                    zzle.l(i3, (List) zzma.m(iC & 1048575, obj), zzmrVar, false);
                    break;
                case 20:
                    zzle.o(i3, (List) zzma.m(iC & 1048575, obj), zzmrVar, false);
                    break;
                case 21:
                    zzle.q(i3, (List) zzma.m(iC & 1048575, obj), zzmrVar, false);
                    break;
                case 22:
                    zzle.z(i3, (List) zzma.m(iC & 1048575, obj), zzmrVar, false);
                    break;
                case 23:
                    zzle.u(i3, (List) zzma.m(iC & 1048575, obj), zzmrVar, false);
                    break;
                case 24:
                    zzle.E(i3, (List) zzma.m(iC & 1048575, obj), zzmrVar, false);
                    break;
                case 25:
                    zzle.H(i3, (List) zzma.m(iC & 1048575, obj), zzmrVar, false);
                    break;
                case 26:
                    List list = (List) zzma.m(iC & 1048575, obj);
                    Class cls = zzle.f31264a;
                    if (list != null && !list.isEmpty()) {
                        zzmrVar.z(i3, list);
                    }
                    break;
                case 27:
                    List list2 = (List) zzma.m(iC & 1048575, obj);
                    zzlc zzlcVarM = m(i2);
                    Class cls2 = zzle.f31264a;
                    if (list2 != null && !list2.isEmpty()) {
                        zzmrVar.M(i3, list2, zzlcVarM);
                    }
                    break;
                case 28:
                    List list3 = (List) zzma.m(iC & 1048575, obj);
                    Class cls3 = zzle.f31264a;
                    if (list3 != null && !list3.isEmpty()) {
                        zzmrVar.s(i3, list3);
                    }
                    break;
                case 29:
                    zzle.C(i3, (List) zzma.m(iC & 1048575, obj), zzmrVar, false);
                    break;
                case 30:
                    zzle.G(i3, (List) zzma.m(iC & 1048575, obj), zzmrVar, false);
                    break;
                case 31:
                    zzle.F(i3, (List) zzma.m(iC & 1048575, obj), zzmrVar, false);
                    break;
                case 32:
                    zzle.w(i3, (List) zzma.m(iC & 1048575, obj), zzmrVar, false);
                    break;
                case 33:
                    zzle.D(i3, (List) zzma.m(iC & 1048575, obj), zzmrVar, false);
                    break;
                case 34:
                    zzle.s(i3, (List) zzma.m(iC & 1048575, obj), zzmrVar, false);
                    break;
                case 35:
                    zzle.f(i3, (List) zzma.m(iC & 1048575, obj), zzmrVar, true);
                    break;
                case 36:
                    zzle.l(i3, (List) zzma.m(iC & 1048575, obj), zzmrVar, true);
                    break;
                case 37:
                    zzle.o(i3, (List) zzma.m(iC & 1048575, obj), zzmrVar, true);
                    break;
                case 38:
                    zzle.q(i3, (List) zzma.m(iC & 1048575, obj), zzmrVar, true);
                    break;
                case 39:
                    zzle.z(i3, (List) zzma.m(iC & 1048575, obj), zzmrVar, true);
                    break;
                case 40:
                    zzle.u(i3, (List) zzma.m(iC & 1048575, obj), zzmrVar, true);
                    break;
                case 41:
                    zzle.E(i3, (List) zzma.m(iC & 1048575, obj), zzmrVar, true);
                    break;
                case EACTags.CURRENCY_CODE /* 42 */:
                    zzle.H(i3, (List) zzma.m(iC & 1048575, obj), zzmrVar, true);
                    break;
                case EACTags.DATE_OF_BIRTH /* 43 */:
                    zzle.C(i3, (List) zzma.m(iC & 1048575, obj), zzmrVar, true);
                    break;
                case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                    zzle.G(i3, (List) zzma.m(iC & 1048575, obj), zzmrVar, true);
                    break;
                case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                    zzle.F(i3, (List) zzma.m(iC & 1048575, obj), zzmrVar, true);
                    break;
                case 46:
                    zzle.w(i3, (List) zzma.m(iC & 1048575, obj), zzmrVar, true);
                    break;
                case EACTags.PIN_USAGE_POLICY /* 47 */:
                    zzle.D(i3, (List) zzma.m(iC & 1048575, obj), zzmrVar, true);
                    break;
                case 48:
                    zzle.s(i3, (List) zzma.m(iC & 1048575, obj), zzmrVar, true);
                    break;
                case 49:
                    List list4 = (List) zzma.m(iC & 1048575, obj);
                    zzlc zzlcVarM2 = m(i2);
                    Class cls4 = zzle.f31264a;
                    if (list4 != null && !list4.isEmpty()) {
                        zzmrVar.H(i3, list4, zzlcVarM2);
                    }
                    break;
                case 50:
                    p(zzmrVar, i3, zzma.m(iC & 1048575, obj), i2);
                    break;
                case EACTags.TRANSACTION_DATE /* 51 */:
                    if (s(i3, i2, obj)) {
                        zzmrVar.J(((Double) zzma.m(iC & 1048575, obj)).doubleValue(), i3);
                    }
                    break;
                case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                    if (s(i3, i2, obj)) {
                        zzmrVar.E(((Float) zzma.m(iC & 1048575, obj)).floatValue(), i3);
                    }
                    break;
                case EACTags.SEX /* 53 */:
                    if (s(i3, i2, obj)) {
                        zzmrVar.n(i3, E(iC & 1048575, obj));
                    }
                    break;
                case EACTags.CURRENCY_EXPONENT /* 54 */:
                    if (s(i3, i2, obj)) {
                        zzmrVar.i(i3, E(iC & 1048575, obj));
                    }
                    break;
                case 55:
                    if (s(i3, i2, obj)) {
                        zzmrVar.h(i3, D(iC & 1048575, obj));
                    }
                    break;
                case 56:
                    if (s(i3, i2, obj)) {
                        zzmrVar.v(i3, E(iC & 1048575, obj));
                    }
                    break;
                case 57:
                    if (s(i3, i2, obj)) {
                        zzmrVar.t(i3, D(iC & 1048575, obj));
                    }
                    break;
                case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
                    if (s(i3, i2, obj)) {
                        zzmrVar.a(i3, ((Boolean) zzma.m(iC & 1048575, obj)).booleanValue());
                    }
                    break;
                case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                    if (s(i3, i2, obj)) {
                        o(i3, zzma.m(iC & 1048575, obj), zzmrVar);
                    }
                    break;
                case 60:
                    if (s(i3, i2, obj)) {
                        zzmrVar.I(i3, zzma.m(iC & 1048575, obj), m(i2));
                    }
                    break;
                case 61:
                    if (s(i3, i2, obj)) {
                        zzmrVar.A(i3, (zzht) zzma.m(iC & 1048575, obj));
                    }
                    break;
                case 62:
                    if (s(i3, i2, obj)) {
                        zzmrVar.x(i3, D(iC & 1048575, obj));
                    }
                    break;
                case 63:
                    if (s(i3, i2, obj)) {
                        zzmrVar.d(i3, D(iC & 1048575, obj));
                    }
                    break;
                case 64:
                    if (s(i3, i2, obj)) {
                        zzmrVar.l(i3, D(iC & 1048575, obj));
                    }
                    break;
                case EACTags.ELEMENT_LIST /* 65 */:
                    if (s(i3, i2, obj)) {
                        zzmrVar.c(i3, E(iC & 1048575, obj));
                    }
                    break;
                case EACTags.ADDRESS /* 66 */:
                    if (s(i3, i2, obj)) {
                        zzmrVar.o(i3, D(iC & 1048575, obj));
                    }
                    break;
                case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                    if (s(i3, i2, obj)) {
                        zzmrVar.y(i3, E(iC & 1048575, obj));
                    }
                    break;
                case EACTags.APPLICATION_IMAGE /* 68 */:
                    if (s(i3, i2, obj)) {
                        zzmrVar.L(i3, zzma.m(iC & 1048575, obj), m(i2));
                    }
                    break;
            }
        }
        if (entry != null) {
            ((zzip) zziqVar).getClass();
            tr.x(entry.getKey());
            throw null;
        }
        ((zzlw) this.m).getClass();
        ((zzjb) obj).zzb.c(zzmrVar);
    }

    @Override // com.google.android.gms.internal.vision.zzlc
    public final Object d0() {
        return this.f31250k.d(this.f31245e);
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00da A[PHI: r3
      0x00da: PHI (r3v32 int) = (r3v10 int), (r3v33 int) binds: [B:84:0x01ff, B:42:0x00d8] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.gms.internal.vision.zzlc
    public final int e(zzjb zzjbVar) {
        int i2;
        int iA;
        int i3;
        int iK;
        int i4;
        int[] iArr = this.f31242a;
        int length = iArr.length;
        int i5 = 0;
        for (int i6 = 0; i6 < length; i6 += 3) {
            int iC = C(i6);
            int i7 = iArr[i6];
            long j2 = 1048575 & iC;
            int i8 = 1237;
            int iHashCode = 37;
            switch ((iC & 267386880) >>> 20) {
                case 0:
                    i2 = i5 * 53;
                    iA = zzjf.a(Double.doubleToLongBits(zzma.f31290c.j(j2, zzjbVar)));
                    i5 = iA + i2;
                    break;
                case 1:
                    i2 = i5 * 53;
                    iA = Float.floatToIntBits(zzma.f31290c.i(j2, zzjbVar));
                    i5 = iA + i2;
                    break;
                case 2:
                    i2 = i5 * 53;
                    iA = zzjf.a(zzma.f31290c.l(j2, zzjbVar));
                    i5 = iA + i2;
                    break;
                case 3:
                    i2 = i5 * 53;
                    iA = zzjf.a(zzma.f31290c.l(j2, zzjbVar));
                    i5 = iA + i2;
                    break;
                case 4:
                    i3 = i5 * 53;
                    iK = zzma.f31290c.k(j2, zzjbVar);
                    i5 = i3 + iK;
                    break;
                case 5:
                    i2 = i5 * 53;
                    iA = zzjf.a(zzma.f31290c.l(j2, zzjbVar));
                    i5 = iA + i2;
                    break;
                case 6:
                    i3 = i5 * 53;
                    iK = zzma.f31290c.k(j2, zzjbVar);
                    i5 = i3 + iK;
                    break;
                case 7:
                    i4 = i5 * 53;
                    boolean zH = zzma.f31290c.h(j2, zzjbVar);
                    Charset charset = zzjf.f31225a;
                    if (zH) {
                        i8 = 1231;
                    }
                    i5 = i8 + i4;
                    break;
                case 8:
                    i2 = i5 * 53;
                    iA = ((String) zzma.m(j2, zzjbVar)).hashCode();
                    i5 = iA + i2;
                    break;
                case 9:
                    Object objM = zzma.m(j2, zzjbVar);
                    if (objM != null) {
                        iHashCode = objM.hashCode();
                    }
                    i5 = (i5 * 53) + iHashCode;
                    break;
                case 10:
                    i2 = i5 * 53;
                    iA = zzma.m(j2, zzjbVar).hashCode();
                    i5 = iA + i2;
                    break;
                case 11:
                    i3 = i5 * 53;
                    iK = zzma.f31290c.k(j2, zzjbVar);
                    i5 = i3 + iK;
                    break;
                case 12:
                    i3 = i5 * 53;
                    iK = zzma.f31290c.k(j2, zzjbVar);
                    i5 = i3 + iK;
                    break;
                case 13:
                    i3 = i5 * 53;
                    iK = zzma.f31290c.k(j2, zzjbVar);
                    i5 = i3 + iK;
                    break;
                case 14:
                    i2 = i5 * 53;
                    iA = zzjf.a(zzma.f31290c.l(j2, zzjbVar));
                    i5 = iA + i2;
                    break;
                case 15:
                    i3 = i5 * 53;
                    iK = zzma.f31290c.k(j2, zzjbVar);
                    i5 = i3 + iK;
                    break;
                case 16:
                    i2 = i5 * 53;
                    iA = zzjf.a(zzma.f31290c.l(j2, zzjbVar));
                    i5 = iA + i2;
                    break;
                case 17:
                    Object objM2 = zzma.m(j2, zzjbVar);
                    if (objM2 != null) {
                        iHashCode = objM2.hashCode();
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
                    iA = zzma.m(j2, zzjbVar).hashCode();
                    i5 = iA + i2;
                    break;
                case 50:
                    i2 = i5 * 53;
                    iA = zzma.m(j2, zzjbVar).hashCode();
                    i5 = iA + i2;
                    break;
                case EACTags.TRANSACTION_DATE /* 51 */:
                    if (s(i7, i6, zzjbVar)) {
                        i2 = i5 * 53;
                        iA = zzjf.a(Double.doubleToLongBits(((Double) zzma.m(j2, zzjbVar)).doubleValue()));
                        i5 = iA + i2;
                    }
                    break;
                case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                    if (s(i7, i6, zzjbVar)) {
                        i2 = i5 * 53;
                        iA = Float.floatToIntBits(((Float) zzma.m(j2, zzjbVar)).floatValue());
                        i5 = iA + i2;
                    }
                    break;
                case EACTags.SEX /* 53 */:
                    if (s(i7, i6, zzjbVar)) {
                        i2 = i5 * 53;
                        iA = zzjf.a(E(j2, zzjbVar));
                        i5 = iA + i2;
                    }
                    break;
                case EACTags.CURRENCY_EXPONENT /* 54 */:
                    if (s(i7, i6, zzjbVar)) {
                        i2 = i5 * 53;
                        iA = zzjf.a(E(j2, zzjbVar));
                        i5 = iA + i2;
                    }
                    break;
                case 55:
                    if (s(i7, i6, zzjbVar)) {
                        i3 = i5 * 53;
                        iK = D(j2, zzjbVar);
                        i5 = i3 + iK;
                    }
                    break;
                case 56:
                    if (s(i7, i6, zzjbVar)) {
                        i2 = i5 * 53;
                        iA = zzjf.a(E(j2, zzjbVar));
                        i5 = iA + i2;
                    }
                    break;
                case 57:
                    if (s(i7, i6, zzjbVar)) {
                        i3 = i5 * 53;
                        iK = D(j2, zzjbVar);
                        i5 = i3 + iK;
                    }
                    break;
                case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
                    if (s(i7, i6, zzjbVar)) {
                        i4 = i5 * 53;
                        boolean zBooleanValue = ((Boolean) zzma.m(j2, zzjbVar)).booleanValue();
                        Charset charset2 = zzjf.f31225a;
                        if (zBooleanValue) {
                            i8 = 1231;
                        }
                        i5 = i8 + i4;
                    }
                    break;
                case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                    if (s(i7, i6, zzjbVar)) {
                        i2 = i5 * 53;
                        iA = ((String) zzma.m(j2, zzjbVar)).hashCode();
                        i5 = iA + i2;
                    }
                    break;
                case 60:
                    if (s(i7, i6, zzjbVar)) {
                        i2 = i5 * 53;
                        iA = zzma.m(j2, zzjbVar).hashCode();
                        i5 = iA + i2;
                    }
                    break;
                case 61:
                    if (s(i7, i6, zzjbVar)) {
                        i2 = i5 * 53;
                        iA = zzma.m(j2, zzjbVar).hashCode();
                        i5 = iA + i2;
                    }
                    break;
                case 62:
                    if (s(i7, i6, zzjbVar)) {
                        i3 = i5 * 53;
                        iK = D(j2, zzjbVar);
                        i5 = i3 + iK;
                    }
                    break;
                case 63:
                    if (s(i7, i6, zzjbVar)) {
                        i3 = i5 * 53;
                        iK = D(j2, zzjbVar);
                        i5 = i3 + iK;
                    }
                    break;
                case 64:
                    if (s(i7, i6, zzjbVar)) {
                        i3 = i5 * 53;
                        iK = D(j2, zzjbVar);
                        i5 = i3 + iK;
                    }
                    break;
                case EACTags.ELEMENT_LIST /* 65 */:
                    if (s(i7, i6, zzjbVar)) {
                        i2 = i5 * 53;
                        iA = zzjf.a(E(j2, zzjbVar));
                        i5 = iA + i2;
                    }
                    break;
                case EACTags.ADDRESS /* 66 */:
                    if (s(i7, i6, zzjbVar)) {
                        i3 = i5 * 53;
                        iK = D(j2, zzjbVar);
                        i5 = i3 + iK;
                    }
                    break;
                case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                    if (s(i7, i6, zzjbVar)) {
                        i2 = i5 * 53;
                        iA = zzjf.a(E(j2, zzjbVar));
                        i5 = iA + i2;
                    }
                    break;
                case EACTags.APPLICATION_IMAGE /* 68 */:
                    if (s(i7, i6, zzjbVar)) {
                        i2 = i5 * 53;
                        iA = zzma.m(j2, zzjbVar).hashCode();
                        i5 = iA + i2;
                    }
                    break;
            }
        }
        ((zzlw) this.m).getClass();
        int iHashCode2 = zzjbVar.zzb.hashCode() + (i5 * 53);
        if (!this.f31246f) {
            return iHashCode2;
        }
        ((zzip) this.n).getClass();
        return (iHashCode2 * 53) + ((zzjb.zzc) zzjbVar).zzc.f31213a.hashCode();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:7:0x001c  */
    @Override // com.google.android.gms.internal.vision.zzlc
    public final void f(zzjb zzjbVar, zzjb zzjbVar2) {
        zzjb zzjbVar3;
        zzjbVar2.getClass();
        int i2 = 0;
        while (true) {
            int[] iArr = this.f31242a;
            if (i2 >= iArr.length) {
                zzjb zzjbVar4 = zzjbVar;
                zzle.h(this.m, zzjbVar4, zzjbVar2);
                if (this.f31246f) {
                    zzle.g(this.n, zzjbVar4, zzjbVar2);
                    return;
                }
                return;
            }
            int iC = C(i2);
            long j2 = 1048575 & iC;
            int i3 = iArr[i2];
            switch ((iC & 267386880) >>> 20) {
                case 0:
                    if (!t(i2, zzjbVar2)) {
                        zzjbVar3 = zzjbVar;
                    } else {
                        zzma.zzd zzdVar = zzma.f31290c;
                        zzjbVar3 = zzjbVar;
                        zzdVar.d(zzjbVar3, j2, zzdVar.j(j2, zzjbVar2));
                        x(i2, zzjbVar3);
                    }
                    break;
                case 1:
                    if (t(i2, zzjbVar2)) {
                        zzma.zzd zzdVar2 = zzma.f31290c;
                        zzdVar2.e(zzjbVar, j2, zzdVar2.i(j2, zzjbVar2));
                        x(i2, zzjbVar);
                    }
                    zzjbVar3 = zzjbVar;
                    break;
                case 2:
                    if (t(i2, zzjbVar2)) {
                        zzma.c(j2, zzjbVar, zzma.f31290c.l(j2, zzjbVar2));
                        x(i2, zzjbVar);
                    }
                    zzjbVar3 = zzjbVar;
                    break;
                case 3:
                    if (t(i2, zzjbVar2)) {
                        zzma.c(j2, zzjbVar, zzma.f31290c.l(j2, zzjbVar2));
                        x(i2, zzjbVar);
                    }
                    zzjbVar3 = zzjbVar;
                    break;
                case 4:
                    if (t(i2, zzjbVar2)) {
                        zzma.e(zzjbVar, j2, zzma.f31290c.k(j2, zzjbVar2));
                        x(i2, zzjbVar);
                    }
                    zzjbVar3 = zzjbVar;
                    break;
                case 5:
                    if (t(i2, zzjbVar2)) {
                        zzma.c(j2, zzjbVar, zzma.f31290c.l(j2, zzjbVar2));
                        x(i2, zzjbVar);
                    }
                    zzjbVar3 = zzjbVar;
                    break;
                case 6:
                    if (t(i2, zzjbVar2)) {
                        zzma.e(zzjbVar, j2, zzma.f31290c.k(j2, zzjbVar2));
                        x(i2, zzjbVar);
                    }
                    zzjbVar3 = zzjbVar;
                    break;
                case 7:
                    if (t(i2, zzjbVar2)) {
                        zzma.zzd zzdVar3 = zzma.f31290c;
                        zzdVar3.g(zzjbVar, j2, zzdVar3.h(j2, zzjbVar2));
                        x(i2, zzjbVar);
                    }
                    zzjbVar3 = zzjbVar;
                    break;
                case 8:
                    if (t(i2, zzjbVar2)) {
                        zzma.d(j2, zzjbVar, zzma.m(j2, zzjbVar2));
                        x(i2, zzjbVar);
                    }
                    zzjbVar3 = zzjbVar;
                    break;
                case 9:
                    q(zzjbVar, zzjbVar2, i2);
                    zzjbVar3 = zzjbVar;
                    break;
                case 10:
                    if (t(i2, zzjbVar2)) {
                        zzma.d(j2, zzjbVar, zzma.m(j2, zzjbVar2));
                        x(i2, zzjbVar);
                    }
                    zzjbVar3 = zzjbVar;
                    break;
                case 11:
                    if (t(i2, zzjbVar2)) {
                        zzma.e(zzjbVar, j2, zzma.f31290c.k(j2, zzjbVar2));
                        x(i2, zzjbVar);
                    }
                    zzjbVar3 = zzjbVar;
                    break;
                case 12:
                    if (t(i2, zzjbVar2)) {
                        zzma.e(zzjbVar, j2, zzma.f31290c.k(j2, zzjbVar2));
                        x(i2, zzjbVar);
                    }
                    zzjbVar3 = zzjbVar;
                    break;
                case 13:
                    if (t(i2, zzjbVar2)) {
                        zzma.e(zzjbVar, j2, zzma.f31290c.k(j2, zzjbVar2));
                        x(i2, zzjbVar);
                    }
                    zzjbVar3 = zzjbVar;
                    break;
                case 14:
                    if (t(i2, zzjbVar2)) {
                        zzma.c(j2, zzjbVar, zzma.f31290c.l(j2, zzjbVar2));
                        x(i2, zzjbVar);
                    }
                    zzjbVar3 = zzjbVar;
                    break;
                case 15:
                    if (t(i2, zzjbVar2)) {
                        zzma.e(zzjbVar, j2, zzma.f31290c.k(j2, zzjbVar2));
                        x(i2, zzjbVar);
                    }
                    zzjbVar3 = zzjbVar;
                    break;
                case 16:
                    if (t(i2, zzjbVar2)) {
                        zzma.c(j2, zzjbVar, zzma.f31290c.l(j2, zzjbVar2));
                        x(i2, zzjbVar);
                    }
                    zzjbVar3 = zzjbVar;
                    break;
                case 17:
                    q(zzjbVar, zzjbVar2, i2);
                    zzjbVar3 = zzjbVar;
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
                    this.l.a(j2, zzjbVar, zzjbVar2);
                    zzjbVar3 = zzjbVar;
                    break;
                case 50:
                    Class cls = zzle.f31264a;
                    zzma.d(j2, zzjbVar, this.o.e(zzma.m(j2, zzjbVar), zzma.m(j2, zzjbVar2)));
                    zzjbVar3 = zzjbVar;
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
                    if (s(i3, i2, zzjbVar2)) {
                        zzma.d(j2, zzjbVar, zzma.m(j2, zzjbVar2));
                        w(i3, i2, zzjbVar);
                    }
                    zzjbVar3 = zzjbVar;
                    break;
                case 60:
                    z(zzjbVar, zzjbVar2, i2);
                    zzjbVar3 = zzjbVar;
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case EACTags.ELEMENT_LIST /* 65 */:
                case EACTags.ADDRESS /* 66 */:
                case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                    if (s(i3, i2, zzjbVar2)) {
                        zzma.d(j2, zzjbVar, zzma.m(j2, zzjbVar2));
                        w(i3, i2, zzjbVar);
                    }
                    zzjbVar3 = zzjbVar;
                    break;
                case EACTags.APPLICATION_IMAGE /* 68 */:
                    z(zzjbVar, zzjbVar2, i2);
                    zzjbVar3 = zzjbVar;
                    break;
                default:
                    zzjbVar3 = zzjbVar;
                    break;
            }
            i2 += 3;
            zzjbVar = zzjbVar3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x003c  */
    @Override // com.google.android.gms.internal.vision.zzlc
    public final boolean g(zzjb zzjbVar, zzjb zzjbVar2) {
        int[] iArr = this.f31242a;
        int length = iArr.length;
        int i2 = 0;
        while (true) {
            boolean zI = true;
            if (i2 < length) {
                int iC = C(i2);
                long j2 = iC & 1048575;
                switch ((iC & 267386880) >>> 20) {
                    case 0:
                        if (!B(zzjbVar, zzjbVar2, i2)) {
                            zI = false;
                        } else {
                            zzma.zzd zzdVar = zzma.f31290c;
                            if (Double.doubleToLongBits(zzdVar.j(j2, zzjbVar)) != Double.doubleToLongBits(zzdVar.j(j2, zzjbVar2))) {
                                zI = false;
                            }
                        }
                        break;
                    case 1:
                        if (!B(zzjbVar, zzjbVar2, i2)) {
                            zI = false;
                        } else {
                            zzma.zzd zzdVar2 = zzma.f31290c;
                            if (Float.floatToIntBits(zzdVar2.i(j2, zzjbVar)) != Float.floatToIntBits(zzdVar2.i(j2, zzjbVar2))) {
                                zI = false;
                            }
                        }
                        break;
                    case 2:
                        if (!B(zzjbVar, zzjbVar2, i2)) {
                            zI = false;
                        } else {
                            zzma.zzd zzdVar3 = zzma.f31290c;
                            if (zzdVar3.l(j2, zzjbVar) != zzdVar3.l(j2, zzjbVar2)) {
                                zI = false;
                            }
                        }
                        break;
                    case 3:
                        if (!B(zzjbVar, zzjbVar2, i2)) {
                            zI = false;
                        } else {
                            zzma.zzd zzdVar4 = zzma.f31290c;
                            if (zzdVar4.l(j2, zzjbVar) != zzdVar4.l(j2, zzjbVar2)) {
                                zI = false;
                            }
                        }
                        break;
                    case 4:
                        if (!B(zzjbVar, zzjbVar2, i2)) {
                            zI = false;
                        } else {
                            zzma.zzd zzdVar5 = zzma.f31290c;
                            if (zzdVar5.k(j2, zzjbVar) != zzdVar5.k(j2, zzjbVar2)) {
                                zI = false;
                            }
                        }
                        break;
                    case 5:
                        if (!B(zzjbVar, zzjbVar2, i2)) {
                            zI = false;
                        } else {
                            zzma.zzd zzdVar6 = zzma.f31290c;
                            if (zzdVar6.l(j2, zzjbVar) != zzdVar6.l(j2, zzjbVar2)) {
                                zI = false;
                            }
                        }
                        break;
                    case 6:
                        if (!B(zzjbVar, zzjbVar2, i2)) {
                            zI = false;
                        } else {
                            zzma.zzd zzdVar7 = zzma.f31290c;
                            if (zzdVar7.k(j2, zzjbVar) != zzdVar7.k(j2, zzjbVar2)) {
                                zI = false;
                            }
                        }
                        break;
                    case 7:
                        if (!B(zzjbVar, zzjbVar2, i2)) {
                            zI = false;
                        } else {
                            zzma.zzd zzdVar8 = zzma.f31290c;
                            if (zzdVar8.h(j2, zzjbVar) != zzdVar8.h(j2, zzjbVar2)) {
                                zI = false;
                            }
                        }
                        break;
                    case 8:
                        if (!B(zzjbVar, zzjbVar2, i2) || !zzle.i(zzma.m(j2, zzjbVar), zzma.m(j2, zzjbVar2))) {
                            zI = false;
                        }
                        break;
                    case 9:
                        if (!B(zzjbVar, zzjbVar2, i2) || !zzle.i(zzma.m(j2, zzjbVar), zzma.m(j2, zzjbVar2))) {
                            zI = false;
                        }
                        break;
                    case 10:
                        if (!B(zzjbVar, zzjbVar2, i2) || !zzle.i(zzma.m(j2, zzjbVar), zzma.m(j2, zzjbVar2))) {
                            zI = false;
                        }
                        break;
                    case 11:
                        if (!B(zzjbVar, zzjbVar2, i2)) {
                            zI = false;
                        } else {
                            zzma.zzd zzdVar9 = zzma.f31290c;
                            if (zzdVar9.k(j2, zzjbVar) != zzdVar9.k(j2, zzjbVar2)) {
                                zI = false;
                            }
                        }
                        break;
                    case 12:
                        if (!B(zzjbVar, zzjbVar2, i2)) {
                            zI = false;
                        } else {
                            zzma.zzd zzdVar10 = zzma.f31290c;
                            if (zzdVar10.k(j2, zzjbVar) != zzdVar10.k(j2, zzjbVar2)) {
                                zI = false;
                            }
                        }
                        break;
                    case 13:
                        if (!B(zzjbVar, zzjbVar2, i2)) {
                            zI = false;
                        } else {
                            zzma.zzd zzdVar11 = zzma.f31290c;
                            if (zzdVar11.k(j2, zzjbVar) != zzdVar11.k(j2, zzjbVar2)) {
                                zI = false;
                            }
                        }
                        break;
                    case 14:
                        if (!B(zzjbVar, zzjbVar2, i2)) {
                            zI = false;
                        } else {
                            zzma.zzd zzdVar12 = zzma.f31290c;
                            if (zzdVar12.l(j2, zzjbVar) != zzdVar12.l(j2, zzjbVar2)) {
                                zI = false;
                            }
                        }
                        break;
                    case 15:
                        if (!B(zzjbVar, zzjbVar2, i2)) {
                            zI = false;
                        } else {
                            zzma.zzd zzdVar13 = zzma.f31290c;
                            if (zzdVar13.k(j2, zzjbVar) != zzdVar13.k(j2, zzjbVar2)) {
                                zI = false;
                            }
                        }
                        break;
                    case 16:
                        if (!B(zzjbVar, zzjbVar2, i2)) {
                            zI = false;
                        } else {
                            zzma.zzd zzdVar14 = zzma.f31290c;
                            if (zzdVar14.l(j2, zzjbVar) != zzdVar14.l(j2, zzjbVar2)) {
                                zI = false;
                            }
                        }
                        break;
                    case 17:
                        if (!B(zzjbVar, zzjbVar2, i2) || !zzle.i(zzma.m(j2, zzjbVar), zzma.m(j2, zzjbVar2))) {
                            zI = false;
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
                        zI = zzle.i(zzma.m(j2, zzjbVar), zzma.m(j2, zzjbVar2));
                        break;
                    case 50:
                        zI = zzle.i(zzma.m(j2, zzjbVar), zzma.m(j2, zzjbVar2));
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
                        zzma.zzd zzdVar15 = zzma.f31290c;
                        if (zzdVar15.k(j3, zzjbVar) != zzdVar15.k(j3, zzjbVar2) || !zzle.i(zzma.m(j2, zzjbVar), zzma.m(j2, zzjbVar2))) {
                            zI = false;
                        }
                        break;
                }
                if (zI) {
                    i2 += 3;
                }
            } else {
                zzlw zzlwVar = (zzlw) this.m;
                zzlwVar.getClass();
                zzlx zzlxVar = zzjbVar.zzb;
                zzlwVar.getClass();
                if (zzlxVar.equals(zzjbVar2.zzb)) {
                    if (!this.f31246f) {
                        return true;
                    }
                    zzip zzipVar = (zzip) this.n;
                    zzipVar.getClass();
                    zziu<Object> zziuVar = ((zzjb.zzc) zzjbVar).zzc;
                    zzipVar.getClass();
                    return zziuVar.equals(((zzjb.zzc) zzjbVar2).zzc);
                }
            }
        }
        return false;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:34:0x009e. Please report as an issue. */
    @Override // com.google.android.gms.internal.vision.zzlc
    public final void h(Object obj, byte[] bArr, int i2, int i3, zzhn zzhnVar) throws zzjk {
        int i4;
        int iU;
        Unsafe unsafe;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        this = this;
        Object obj2 = obj;
        byte[] bArr2 = bArr;
        i3 = i3;
        zzhnVar = zzhnVar;
        if (!this.g) {
            k(obj2, bArr, i2, i3, 0, zzhnVar);
            return;
        }
        Unsafe unsafe2 = q;
        int iJ = i2;
        int i13 = -1;
        int i14 = 0;
        int i15 = 1048575;
        int i16 = 0;
        while (iJ < i3) {
            int iE = iJ + 1;
            int i17 = bArr2[iJ];
            if (i17 < 0) {
                iE = zzhl.e(i17, bArr2, iE, zzhnVar);
                i17 = zzhnVar.f31183a;
            }
            int i18 = iE;
            int i19 = i17 >>> 3;
            int i20 = i17 & 7;
            int i21 = this.d;
            int i22 = this.f31244c;
            if (i19 > i13) {
                iU = (i19 < i22 || i19 > i21) ? -1 : this.u(i19, i14 / 3);
                i4 = 0;
            } else if (i19 < i22 || i19 > i21) {
                i4 = 0;
                iU = -1;
            } else {
                i4 = 0;
                iU = this.u(i19, 0);
            }
            int i23 = iU;
            if (i23 == -1) {
                unsafe = unsafe2;
                i5 = i17;
                i6 = i19;
                i7 = i16;
                obj = obj2;
                i8 = i4;
            } else {
                int[] iArr = this.f31242a;
                int i24 = iArr[i23 + 1];
                int i25 = (i24 & 267386880) >>> 20;
                int i26 = i17;
                long j2 = i24 & 1048575;
                if (i25 <= 17) {
                    int i27 = iArr[i23 + 2];
                    int i28 = 1 << (i27 >>> 20);
                    int i29 = i27 & 1048575;
                    if (i29 != i15) {
                        if (i15 != 1048575) {
                            unsafe2.putInt(obj2, i15, i16);
                        }
                        if (i29 != 1048575) {
                            i16 = unsafe2.getInt(obj2, i29);
                        }
                        i15 = i29;
                    }
                    switch (i25) {
                        case 0:
                            i6 = i19;
                            if (i20 != 1) {
                                obj = obj2;
                                unsafe = unsafe2;
                                i7 = i16;
                                i8 = i23;
                                i5 = i26 == true ? 1 : 0;
                            } else {
                                zzma.f31290c.d(obj, j2, Double.longBitsToDouble(zzhl.k(i18, bArr2)));
                                obj2 = obj;
                                iJ = i18 + 8;
                                i16 |= i28;
                                unsafe2 = unsafe2;
                                i14 = i23;
                                i13 = i6;
                            }
                            break;
                        case 1:
                            i6 = i19;
                            if (i20 != 5) {
                                obj = obj2;
                                unsafe = unsafe2;
                                i7 = i16;
                                i8 = i23;
                                i5 = i26 == true ? 1 : 0;
                            } else {
                                zzma.f31290c.e(obj2, j2, Float.intBitsToFloat(zzhl.a(i18, bArr2)));
                                iJ = i18 + 4;
                                i16 |= i28;
                                i14 = i23;
                                i13 = i6;
                            }
                            break;
                        case 2:
                        case 3:
                            i6 = i19;
                            if (i20 != 0) {
                                obj = obj2;
                                unsafe = unsafe2;
                                i7 = i16;
                                i8 = i23;
                                i5 = i26 == true ? 1 : 0;
                            } else {
                                int iJ2 = zzhl.j(bArr2, i18, zzhnVar);
                                Unsafe unsafe3 = unsafe2;
                                Object obj3 = obj2;
                                unsafe3.putLong(obj3, j2, zzhnVar.f31184b);
                                unsafe2 = unsafe3;
                                obj2 = obj3;
                                i16 |= i28;
                                iJ = iJ2;
                                i14 = i23;
                                i13 = i6;
                            }
                            break;
                        case 4:
                        case 11:
                            i6 = i19;
                            if (i20 != 0) {
                                obj = obj2;
                                unsafe = unsafe2;
                                i7 = i16;
                                i8 = i23;
                                i5 = i26 == true ? 1 : 0;
                            } else {
                                int i30 = zzhl.i(bArr2, i18, zzhnVar);
                                unsafe2.putInt(obj2, j2, zzhnVar.f31183a);
                                i16 |= i28;
                                iJ = i30;
                                i14 = i23;
                                i13 = i6;
                            }
                            break;
                        case 5:
                        case 14:
                            i6 = i19;
                            if (i20 != 1) {
                                obj = obj2;
                                unsafe = unsafe2;
                                i7 = i16;
                                i8 = i23;
                                i5 = i26 == true ? 1 : 0;
                            } else {
                                Unsafe unsafe4 = unsafe2;
                                Object obj4 = obj2;
                                unsafe4.putLong(obj4, j2, zzhl.k(i18, bArr2));
                                unsafe2 = unsafe4;
                                obj2 = obj4;
                                iJ = i18 + 8;
                                i16 |= i28;
                                i14 = i23;
                                i13 = i6;
                            }
                            break;
                        case 6:
                        case 13:
                            i6 = i19;
                            if (i20 != 5) {
                                obj = obj2;
                                unsafe = unsafe2;
                                i7 = i16;
                                i8 = i23;
                                i5 = i26 == true ? 1 : 0;
                            } else {
                                unsafe2.putInt(obj2, j2, zzhl.a(i18, bArr2));
                                iJ = i18 + 4;
                                i16 |= i28;
                                i14 = i23;
                                i13 = i6;
                            }
                            break;
                        case 7:
                            i6 = i19;
                            if (i20 != 0) {
                                obj = obj2;
                                unsafe = unsafe2;
                                i7 = i16;
                                i8 = i23;
                                i5 = i26 == true ? 1 : 0;
                            } else {
                                iJ = zzhl.j(bArr2, i18, zzhnVar);
                                zzma.f31290c.g(obj2, j2, zzhnVar.f31184b != 0);
                                i16 |= i28;
                                i14 = i23;
                                i13 = i6;
                            }
                            break;
                        case 8:
                            i6 = i19;
                            if (i20 != 2) {
                                obj = obj2;
                                unsafe = unsafe2;
                                i7 = i16;
                                i8 = i23;
                                i5 = i26 == true ? 1 : 0;
                            } else {
                                iJ = (i24 & PKIFailureInfo.duplicateCertReq) == 0 ? zzhl.l(bArr2, i18, zzhnVar) : zzhl.m(bArr2, i18, zzhnVar);
                                unsafe2.putObject(obj2, j2, zzhnVar.f31185c);
                                i16 |= i28;
                                i14 = i23;
                                i13 = i6;
                            }
                            break;
                        case 9:
                            i6 = i19;
                            if (i20 != 2) {
                                obj = obj2;
                                unsafe = unsafe2;
                                i7 = i16;
                                i8 = i23;
                                i5 = i26 == true ? 1 : 0;
                            } else {
                                iJ = zzhl.h(this.m(i23), bArr2, i18, i3, zzhnVar);
                                Object object = unsafe2.getObject(obj2, j2);
                                Object obj5 = zzhnVar.f31185c;
                                if (object == null) {
                                    unsafe2.putObject(obj2, j2, obj5);
                                } else {
                                    unsafe2.putObject(obj2, j2, zzjf.b(object, obj5));
                                }
                                i16 |= i28;
                                i14 = i23;
                                i13 = i6;
                            }
                            break;
                        case 10:
                            i6 = i19;
                            if (i20 != 2) {
                                obj = obj2;
                                unsafe = unsafe2;
                                i7 = i16;
                                i8 = i23;
                                i5 = i26 == true ? 1 : 0;
                            } else {
                                iJ = zzhl.n(bArr2, i18, zzhnVar);
                                unsafe2.putObject(obj2, j2, zzhnVar.f31185c);
                                i16 |= i28;
                                i14 = i23;
                                i13 = i6;
                            }
                            break;
                        case 12:
                            i6 = i19;
                            if (i20 != 0) {
                                obj = obj2;
                                unsafe = unsafe2;
                                i7 = i16;
                                i8 = i23;
                                i5 = i26 == true ? 1 : 0;
                            } else {
                                iJ = zzhl.i(bArr2, i18, zzhnVar);
                                unsafe2.putInt(obj2, j2, zzhnVar.f31183a);
                                i16 |= i28;
                                i14 = i23;
                                i13 = i6;
                            }
                            break;
                        case 15:
                            i6 = i19;
                            if (i20 != 0) {
                                obj = obj2;
                                unsafe = unsafe2;
                                i7 = i16;
                                i8 = i23;
                                i5 = i26 == true ? 1 : 0;
                            } else {
                                iJ = zzhl.i(bArr2, i18, zzhnVar);
                                unsafe2.putInt(obj2, j2, zzif.b(zzhnVar.f31183a));
                                i16 |= i28;
                                i14 = i23;
                                i13 = i6;
                            }
                            break;
                        case 16:
                            if (i20 != 0) {
                                i6 = i19;
                                obj = obj2;
                                unsafe = unsafe2;
                                i7 = i16;
                                i8 = i23;
                                i5 = i26 == true ? 1 : 0;
                            } else {
                                int iJ3 = zzhl.j(bArr2, i18, zzhnVar);
                                Unsafe unsafe5 = unsafe2;
                                Object obj6 = obj2;
                                i6 = i19;
                                unsafe5.putLong(obj6, j2, zzif.a(zzhnVar.f31184b));
                                unsafe2 = unsafe5;
                                obj2 = obj6;
                                i16 |= i28;
                                iJ = iJ3;
                                i14 = i23;
                                i13 = i6;
                            }
                            break;
                        default:
                            i6 = i19;
                            obj = obj2;
                            unsafe = unsafe2;
                            i7 = i16;
                            i8 = i23;
                            i5 = i26 == true ? 1 : 0;
                            break;
                    }
                } else {
                    i6 = i19;
                    Unsafe unsafe6 = unsafe2;
                    if (i25 != 27) {
                        if (i25 <= 49) {
                            unsafe = unsafe6;
                            i7 = i16;
                            i11 = i15;
                            i12 = this.j(obj, bArr, i18, i3, i26 == true ? 1 : 0, i6, i20, i23, i24, i25, j2, zzhnVar);
                            i10 = i26 == true ? 1 : 0;
                            i8 = i23;
                            if (i12 == i18) {
                                i18 = i12;
                                i5 = i10;
                                i15 = i11;
                            } else {
                                obj2 = obj;
                            }
                        } else {
                            unsafe = unsafe6;
                            i7 = i16;
                            i8 = i23;
                            i10 = i26 == true ? 1 : 0;
                            i11 = i15;
                            i9 = i18;
                            if (i25 == 50) {
                                if (i20 == 2) {
                                    r(obj, bArr, i9, i3, i8, j2, zzhnVar);
                                    throw null;
                                }
                                i18 = i9;
                                i5 = i10;
                            } else {
                                i12 = i(obj, bArr, i9, i3, i10 == true ? 1 : 0, i6, i20, i24, i25, j2, i8, zzhnVar);
                                i5 = i10 == true ? 1 : 0;
                                obj = obj;
                                if (i12 == i9) {
                                    i18 = i12;
                                } else {
                                    obj2 = obj;
                                }
                            }
                            i15 = i11;
                        }
                        iJ = i12;
                        i14 = i8;
                        i15 = i11;
                        i13 = i6;
                        i16 = i7;
                        unsafe2 = unsafe;
                        bArr2 = bArr;
                    } else if (i20 == 2) {
                        zzjl zzjlVarE = (zzjl) unsafe6.getObject(obj2, j2);
                        if (!zzjlVarE.d0()) {
                            int size = zzjlVarE.size();
                            zzjlVarE = zzjlVarE.e(size == 0 ? 10 : size << 1);
                            unsafe6.putObject(obj2, j2, zzjlVarE);
                        }
                        int iF = zzhl.f(this.m(i23), i26 == true ? 1 : 0, bArr2, i18, i3, zzjlVarE, zzhnVar);
                        bArr2 = bArr;
                        i3 = i3;
                        zzhnVar = zzhnVar;
                        iJ = iF;
                        unsafe2 = unsafe6;
                        i14 = i23;
                        i13 = i6;
                        obj2 = obj;
                    } else {
                        unsafe = unsafe6;
                        i7 = i16;
                        i9 = i18;
                        i8 = i23;
                        i10 = i26 == true ? 1 : 0;
                        i11 = i15;
                        i18 = i9;
                        i5 = i10;
                        i15 = i11;
                    }
                }
            }
            int iD = zzhl.d(i5 == true ? 1 : 0, bArr, i18, i3, F(obj), zzhnVar);
            bArr2 = bArr;
            zzhnVar = zzhnVar;
            i3 = i3;
            obj2 = obj;
            i14 = i8;
            i13 = i6;
            i16 = i7;
            unsafe2 = unsafe;
            iJ = iD;
            this = this;
        }
        Object obj7 = obj2;
        Unsafe unsafe7 = unsafe2;
        int i31 = i3;
        int i32 = i15;
        int i33 = i16;
        if (i32 != 1048575) {
            unsafe7.putInt(obj7, i32, i33);
        }
        if (iJ != i31) {
            throw zzjk.d();
        }
    }

    public final int i(Object obj, byte[] bArr, int i2, int i3, int i4, int i5, int i6, int i7, int i8, long j2, int i9, zzhn zzhnVar) throws zzjk {
        int i10;
        int i11;
        int iJ;
        Object object;
        Unsafe unsafe = q;
        long j3 = this.f31242a[i9 + 2] & 1048575;
        switch (i8) {
            case EACTags.TRANSACTION_DATE /* 51 */:
                i10 = i2;
                if (i6 != 1) {
                    return i10;
                }
                unsafe.putObject(obj, j2, Double.valueOf(Double.longBitsToDouble(zzhl.k(i10, bArr))));
                iJ = i10 + 8;
                unsafe.putInt(obj, j3, i5);
                return iJ;
            case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                i11 = i2;
                if (i6 != 5) {
                    return i11;
                }
                unsafe.putObject(obj, j2, Float.valueOf(Float.intBitsToFloat(zzhl.a(i11, bArr))));
                iJ = i11 + 4;
                unsafe.putInt(obj, j3, i5);
                return iJ;
            case EACTags.SEX /* 53 */:
            case EACTags.CURRENCY_EXPONENT /* 54 */:
                if (i6 != 0) {
                    return i2;
                }
                iJ = zzhl.j(bArr, i2, zzhnVar);
                unsafe.putObject(obj, j2, Long.valueOf(zzhnVar.f31184b));
                unsafe.putInt(obj, j3, i5);
                return iJ;
            case 55:
            case 62:
                if (i6 != 0) {
                    return i2;
                }
                iJ = zzhl.i(bArr, i2, zzhnVar);
                unsafe.putObject(obj, j2, Integer.valueOf(zzhnVar.f31183a));
                unsafe.putInt(obj, j3, i5);
                return iJ;
            case 56:
            case EACTags.ELEMENT_LIST /* 65 */:
                i10 = i2;
                if (i6 != 1) {
                    return i10;
                }
                unsafe.putObject(obj, j2, Long.valueOf(zzhl.k(i10, bArr)));
                iJ = i10 + 8;
                unsafe.putInt(obj, j3, i5);
                return iJ;
            case 57:
            case 64:
                i11 = i2;
                if (i6 != 5) {
                    return i11;
                }
                unsafe.putObject(obj, j2, Integer.valueOf(zzhl.a(i11, bArr)));
                iJ = i11 + 4;
                unsafe.putInt(obj, j3, i5);
                return iJ;
            case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
                if (i6 != 0) {
                    return i2;
                }
                iJ = zzhl.j(bArr, i2, zzhnVar);
                unsafe.putObject(obj, j2, Boolean.valueOf(zzhnVar.f31184b != 0));
                unsafe.putInt(obj, j3, i5);
                return iJ;
            case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                if (i6 != 2) {
                    return i2;
                }
                int i12 = zzhl.i(bArr, i2, zzhnVar);
                int i13 = zzhnVar.f31183a;
                if (i13 == 0) {
                    unsafe.putObject(obj, j2, "");
                } else {
                    if ((i7 & PKIFailureInfo.duplicateCertReq) != 0) {
                        if (!zzmd.f31295a.c(i12, i12 + i13, bArr)) {
                            throw zzjk.e();
                        }
                    }
                    unsafe.putObject(obj, j2, new String(bArr, i12, i13, zzjf.f31225a));
                    i12 += i13;
                }
                unsafe.putInt(obj, j3, i5);
                return i12;
            case 60:
                if (i6 != 2) {
                    return i2;
                }
                int iH = zzhl.h(m(i9), bArr, i2, i3, zzhnVar);
                object = unsafe.getInt(obj, j3) == i5 ? unsafe.getObject(obj, j2) : null;
                Object obj2 = zzhnVar.f31185c;
                if (object == null) {
                    unsafe.putObject(obj, j2, obj2);
                } else {
                    unsafe.putObject(obj, j2, zzjf.b(object, obj2));
                }
                unsafe.putInt(obj, j3, i5);
                return iH;
            case 61:
                if (i6 != 2) {
                    return i2;
                }
                iJ = zzhl.n(bArr, i2, zzhnVar);
                unsafe.putObject(obj, j2, zzhnVar.f31185c);
                unsafe.putInt(obj, j3, i5);
                return iJ;
            case 63:
                if (i6 != 0) {
                    return i2;
                }
                int i14 = zzhl.i(bArr, i2, zzhnVar);
                int i15 = zzhnVar.f31183a;
                zzjg zzjgVarA = A(i9);
                if (zzjgVarA != null && !zzjgVarA.e(i15)) {
                    F(obj).a(i4, Long.valueOf(i15));
                    return i14;
                }
                unsafe.putObject(obj, j2, Integer.valueOf(i15));
                iJ = i14;
                unsafe.putInt(obj, j3, i5);
                return iJ;
            case EACTags.ADDRESS /* 66 */:
                if (i6 != 0) {
                    return i2;
                }
                iJ = zzhl.i(bArr, i2, zzhnVar);
                unsafe.putObject(obj, j2, Integer.valueOf(zzif.b(zzhnVar.f31183a)));
                unsafe.putInt(obj, j3, i5);
                return iJ;
            case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                if (i6 != 0) {
                    return i2;
                }
                iJ = zzhl.j(bArr, i2, zzhnVar);
                unsafe.putObject(obj, j2, Long.valueOf(zzif.a(zzhnVar.f31184b)));
                unsafe.putInt(obj, j3, i5);
                return iJ;
            case EACTags.APPLICATION_IMAGE /* 68 */:
                if (i6 == 3) {
                    iJ = zzhl.g(m(i9), bArr, i2, i3, (i4 & (-8)) | 4, zzhnVar);
                    object = unsafe.getInt(obj, j3) == i5 ? unsafe.getObject(obj, j2) : null;
                    Object obj3 = zzhnVar.f31185c;
                    if (object == null) {
                        unsafe.putObject(obj, j2, obj3);
                    } else {
                        unsafe.putObject(obj, j2, zzjf.b(object, obj3));
                    }
                    unsafe.putInt(obj, j3, i5);
                    return iJ;
                }
            default:
                return i2;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    public final int j(Object obj, byte[] bArr, int i2, int i3, int i4, int i5, int i6, int i7, long j2, int i8, long j3, zzhn zzhnVar) throws zzjk {
        int iC;
        Unsafe unsafe = q;
        zzjl zzjlVarE = (zzjl) unsafe.getObject(obj, j3);
        if (!zzjlVarE.d0()) {
            int size = zzjlVarE.size();
            zzjlVarE = zzjlVarE.e(size == 0 ? 10 : size << 1);
            unsafe.putObject(obj, j3, zzjlVarE);
        }
        zzjl zzjlVar = zzjlVarE;
        switch (i8) {
            case 18:
            case 35:
                if (i6 != 2) {
                    if (i6 == 1) {
                        Double.longBitsToDouble(zzhl.k(i2, bArr));
                        throw null;
                    }
                    return i2;
                }
                int i9 = zzhl.i(bArr, i2, zzhnVar);
                int i10 = zzhnVar.f31183a + i9;
                if (i9 < i10) {
                    Double.longBitsToDouble(zzhl.k(i9, bArr));
                    throw null;
                }
                if (i9 == i10) {
                    return i9;
                }
                throw zzjk.a();
            case 19:
            case 36:
                if (i6 != 2) {
                    if (i6 == 5) {
                        Float.intBitsToFloat(zzhl.a(i2, bArr));
                        throw null;
                    }
                    return i2;
                }
                int i11 = zzhl.i(bArr, i2, zzhnVar);
                int i12 = zzhnVar.f31183a + i11;
                if (i11 < i12) {
                    Float.intBitsToFloat(zzhl.a(i11, bArr));
                    throw null;
                }
                if (i11 == i12) {
                    return i11;
                }
                throw zzjk.a();
            case 20:
            case 21:
            case 37:
            case 38:
                if (i6 != 2) {
                    if (i6 == 0) {
                        zzhl.j(bArr, i2, zzhnVar);
                        throw null;
                    }
                    return i2;
                }
                int i13 = zzhl.i(bArr, i2, zzhnVar);
                int i14 = zzhnVar.f31183a + i13;
                if (i13 < i14) {
                    zzhl.j(bArr, i13, zzhnVar);
                    throw null;
                }
                if (i13 == i14) {
                    return i13;
                }
                throw zzjk.a();
            case 22:
            case 29:
            case 39:
            case EACTags.DATE_OF_BIRTH /* 43 */:
                if (i6 != 2) {
                    if (i6 == 0) {
                        return zzhl.c(i4, bArr, i2, i3, zzjlVar, zzhnVar);
                    }
                    return i2;
                }
                zzjd zzjdVar = (zzjd) zzjlVar;
                int i15 = zzhl.i(bArr, i2, zzhnVar);
                int i16 = zzhnVar.f31183a + i15;
                while (i15 < i16) {
                    i15 = zzhl.i(bArr, i15, zzhnVar);
                    zzjdVar.h(zzhnVar.f31183a);
                }
                if (i15 == i16) {
                    return i15;
                }
                throw zzjk.a();
            case 23:
            case 32:
            case 40:
            case 46:
                if (i6 != 2) {
                    if (i6 == 1) {
                        zzhl.k(i2, bArr);
                        throw null;
                    }
                    return i2;
                }
                int i17 = zzhl.i(bArr, i2, zzhnVar);
                int i18 = zzhnVar.f31183a + i17;
                if (i17 < i18) {
                    zzhl.k(i17, bArr);
                    throw null;
                }
                if (i17 == i18) {
                    return i17;
                }
                throw zzjk.a();
            case 24:
            case 31:
            case 41:
            case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                if (i6 == 2) {
                    zzjd zzjdVar2 = (zzjd) zzjlVar;
                    int i19 = zzhl.i(bArr, i2, zzhnVar);
                    int i20 = zzhnVar.f31183a + i19;
                    while (i19 < i20) {
                        zzjdVar2.h(zzhl.a(i19, bArr));
                        i19 += 4;
                    }
                    if (i19 == i20) {
                        return i19;
                    }
                    throw zzjk.a();
                }
                if (i6 == 5) {
                    zzjd zzjdVar3 = (zzjd) zzjlVar;
                    zzjdVar3.h(zzhl.a(i2, bArr));
                    int i21 = i2 + 4;
                    while (i21 < i3) {
                        int i22 = zzhl.i(bArr, i21, zzhnVar);
                        if (i4 != zzhnVar.f31183a) {
                            return i21;
                        }
                        zzjdVar3.h(zzhl.a(i22, bArr));
                        i21 = i22 + 4;
                    }
                    return i21;
                }
                return i2;
            case 25:
            case EACTags.CURRENCY_CODE /* 42 */:
                if (i6 != 2) {
                    if (i6 == 0) {
                        zzhl.j(bArr, i2, zzhnVar);
                        throw null;
                    }
                    return i2;
                }
                int i23 = zzhl.i(bArr, i2, zzhnVar);
                int i24 = zzhnVar.f31183a + i23;
                if (i23 < i24) {
                    zzhl.j(bArr, i23, zzhnVar);
                    throw null;
                }
                if (i23 == i24) {
                    return i23;
                }
                throw zzjk.a();
            case 26:
                if (i6 == 2) {
                    if ((j2 & 536870912) == 0) {
                        int i25 = zzhl.i(bArr, i2, zzhnVar);
                        int i26 = zzhnVar.f31183a;
                        if (i26 < 0) {
                            throw zzjk.b();
                        }
                        if (i26 == 0) {
                            zzjlVar.add("");
                        } else {
                            zzjlVar.add(new String(bArr, i25, i26, zzjf.f31225a));
                            i25 += i26;
                        }
                        while (i25 < i3) {
                            int i27 = zzhl.i(bArr, i25, zzhnVar);
                            if (i4 != zzhnVar.f31183a) {
                                return i25;
                            }
                            i25 = zzhl.i(bArr, i27, zzhnVar);
                            int i28 = zzhnVar.f31183a;
                            if (i28 < 0) {
                                throw zzjk.b();
                            }
                            if (i28 == 0) {
                                zzjlVar.add("");
                            } else {
                                zzjlVar.add(new String(bArr, i25, i28, zzjf.f31225a));
                                i25 += i28;
                            }
                        }
                        return i25;
                    }
                    int i29 = zzhl.i(bArr, i2, zzhnVar);
                    int i30 = zzhnVar.f31183a;
                    if (i30 < 0) {
                        throw zzjk.b();
                    }
                    if (i30 == 0) {
                        zzjlVar.add("");
                    } else {
                        int i31 = i29 + i30;
                        if (!zzmd.f31295a.c(i29, i31, bArr)) {
                            throw zzjk.e();
                        }
                        zzjlVar.add(new String(bArr, i29, i30, zzjf.f31225a));
                        i29 = i31;
                    }
                    while (i29 < i3) {
                        int i32 = zzhl.i(bArr, i29, zzhnVar);
                        if (i4 != zzhnVar.f31183a) {
                            return i29;
                        }
                        i29 = zzhl.i(bArr, i32, zzhnVar);
                        int i33 = zzhnVar.f31183a;
                        if (i33 < 0) {
                            throw zzjk.b();
                        }
                        if (i33 == 0) {
                            zzjlVar.add("");
                        } else {
                            int i34 = i29 + i33;
                            if (!zzmd.f31295a.c(i29, i34, bArr)) {
                                throw zzjk.e();
                            }
                            zzjlVar.add(new String(bArr, i29, i33, zzjf.f31225a));
                            i29 = i34;
                        }
                    }
                    return i29;
                }
                return i2;
            case 27:
                if (i6 == 2) {
                    return zzhl.f(m(i7), i4, bArr, i2, i3, zzjlVar, zzhnVar);
                }
                return i2;
            case 28:
                if (i6 == 2) {
                    int i35 = zzhl.i(bArr, i2, zzhnVar);
                    int i36 = zzhnVar.f31183a;
                    if (i36 < 0) {
                        throw zzjk.b();
                    }
                    if (i36 > bArr.length - i35) {
                        throw zzjk.a();
                    }
                    if (i36 == 0) {
                        zzjlVar.add(zzht.f31188c);
                    } else {
                        zzjlVar.add(zzht.h(i35, i36, bArr));
                        i35 += i36;
                    }
                    while (i35 < i3) {
                        int i37 = zzhl.i(bArr, i35, zzhnVar);
                        if (i4 != zzhnVar.f31183a) {
                            return i35;
                        }
                        i35 = zzhl.i(bArr, i37, zzhnVar);
                        int i38 = zzhnVar.f31183a;
                        if (i38 < 0) {
                            throw zzjk.b();
                        }
                        if (i38 > bArr.length - i35) {
                            throw zzjk.a();
                        }
                        if (i38 == 0) {
                            zzjlVar.add(zzht.f31188c);
                        } else {
                            zzjlVar.add(zzht.h(i35, i38, bArr));
                            i35 += i38;
                        }
                    }
                    return i35;
                }
                return i2;
            case 30:
            case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                if (i6 != 2) {
                    if (i6 == 0) {
                        iC = zzhl.c(i4, bArr, i2, i3, zzjlVar, zzhnVar);
                    }
                    return i2;
                }
                zzjd zzjdVar4 = (zzjd) zzjlVar;
                iC = zzhl.i(bArr, i2, zzhnVar);
                int i39 = zzhnVar.f31183a + iC;
                while (iC < i39) {
                    iC = zzhl.i(bArr, iC, zzhnVar);
                    zzjdVar4.h(zzhnVar.f31183a);
                }
                if (iC != i39) {
                    throw zzjk.a();
                }
                zzjb zzjbVar = (zzjb) obj;
                zzlx zzlxVar = zzjbVar.zzb;
                Object objE = zzlxVar != zzlx.f31280f ? zzlxVar : null;
                zzjg zzjgVarA = A(i7);
                Class cls = zzle.f31264a;
                if (zzjgVarA != null) {
                    boolean z = zzjlVar instanceof RandomAccess;
                    zzlu zzluVar = this.m;
                    if (z) {
                        int size2 = zzjlVar.size();
                        int i40 = 0;
                        for (int i41 = 0; i41 < size2; i41++) {
                            Integer num = (Integer) zzjlVar.get(i41);
                            int iIntValue = num.intValue();
                            if (zzjgVarA.e(iIntValue)) {
                                if (i41 != i40) {
                                    zzjlVar.set(i40, num);
                                }
                                i40++;
                            } else {
                                objE = zzle.e(i5, iIntValue, objE, zzluVar);
                            }
                        }
                        if (i40 != size2) {
                            zzjlVar.subList(i40, size2).clear();
                        }
                    } else {
                        Iterator<E> it = zzjlVar.iterator();
                        while (it.hasNext()) {
                            int iIntValue2 = ((Integer) it.next()).intValue();
                            if (!zzjgVarA.e(iIntValue2)) {
                                Object objE2 = zzle.e(i5, iIntValue2, objE, zzluVar);
                                it.remove();
                                objE = objE2;
                            }
                        }
                    }
                }
                zzlx zzlxVar2 = (zzlx) objE;
                if (zzlxVar2 != null) {
                    zzjbVar.zzb = zzlxVar2;
                }
                return iC;
            case 33:
            case EACTags.PIN_USAGE_POLICY /* 47 */:
                if (i6 == 2) {
                    zzjd zzjdVar5 = (zzjd) zzjlVar;
                    int i42 = zzhl.i(bArr, i2, zzhnVar);
                    int i43 = zzhnVar.f31183a + i42;
                    while (i42 < i43) {
                        i42 = zzhl.i(bArr, i42, zzhnVar);
                        zzjdVar5.h(zzif.b(zzhnVar.f31183a));
                    }
                    if (i42 == i43) {
                        return i42;
                    }
                    throw zzjk.a();
                }
                if (i6 == 0) {
                    zzjd zzjdVar6 = (zzjd) zzjlVar;
                    int i44 = zzhl.i(bArr, i2, zzhnVar);
                    zzjdVar6.h(zzif.b(zzhnVar.f31183a));
                    while (i44 < i3) {
                        int i45 = zzhl.i(bArr, i44, zzhnVar);
                        if (i4 != zzhnVar.f31183a) {
                            return i44;
                        }
                        i44 = zzhl.i(bArr, i45, zzhnVar);
                        zzjdVar6.h(zzif.b(zzhnVar.f31183a));
                    }
                    return i44;
                }
                return i2;
            case 34:
            case 48:
                if (i6 != 2) {
                    if (i6 == 0) {
                        zzhl.j(bArr, i2, zzhnVar);
                        throw null;
                    }
                    return i2;
                }
                int i46 = zzhl.i(bArr, i2, zzhnVar);
                int i47 = zzhnVar.f31183a + i46;
                if (i46 < i47) {
                    zzhl.j(bArr, i46, zzhnVar);
                    throw null;
                }
                if (i46 == i47) {
                    return i46;
                }
                throw zzjk.a();
            case 49:
                if (i6 == 3) {
                    zzlc zzlcVarM = m(i7);
                    int i48 = (i4 & (-8)) | 4;
                    int iG = zzhl.g(zzlcVarM, bArr, i2, i3, i48, zzhnVar);
                    int i49 = i48;
                    zzhn zzhnVar2 = zzhnVar;
                    zzjlVar.add(zzhnVar2.f31185c);
                    while (iG < i3) {
                        int i50 = zzhl.i(bArr, iG, zzhnVar2);
                        if (i4 != zzhnVar2.f31183a) {
                            return iG;
                        }
                        int i51 = i49;
                        zzhn zzhnVar3 = zzhnVar2;
                        iG = zzhl.g(zzlcVarM, bArr, i50, i3, i51, zzhnVar3);
                        zzjlVar.add(zzhnVar3.f31185c);
                        i49 = i51;
                        zzhnVar2 = zzhnVar3;
                    }
                    return iG;
                }
                return i2;
            default:
                return i2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int k(Object obj, byte[] bArr, int i2, int i3, int i4, zzhn zzhnVar) {
        Object obj2;
        int i5;
        Unsafe unsafe;
        int[] iArr;
        int i6;
        int i7;
        int iU;
        zzio zzioVar;
        int i8;
        zzio zzioVar2;
        int i9;
        Unsafe unsafe2;
        int i10;
        byte[] bArr2;
        Unsafe unsafe3;
        int iJ;
        byte[] bArr3;
        int i11;
        byte[] bArr4;
        int i12;
        int i13;
        zzko<T> zzkoVar = this;
        Object obj3 = obj;
        byte[] bArr5 = bArr;
        i3 = i3;
        zzhn zzhnVar2 = zzhnVar;
        zzio zzioVar3 = zzhnVar2.d;
        Unsafe unsafe4 = q;
        int iD = i2;
        int i14 = -1;
        int i15 = 0;
        int i16 = 1048575;
        int i17 = 0;
        int i18 = 0;
        while (true) {
            int[] iArr2 = zzkoVar.f31242a;
            if (iD < i3) {
                int iE = iD + 1;
                int i19 = bArr5[iD];
                if (i19 < 0) {
                    iE = zzhl.e(i19, bArr5, iE, zzhnVar2);
                    i19 = zzhnVar2.f31183a;
                }
                int i20 = iE;
                i18 = i19;
                int i21 = (i18 == true ? 1 : 0) >>> 3;
                int i22 = i15;
                int i23 = (i18 == true ? 1 : 0) & 7;
                int i24 = zzkoVar.d;
                int i25 = i20;
                int i26 = zzkoVar.f31244c;
                if (i21 > i14) {
                    iU = (i21 < i26 || i21 > i24) ? -1 : zzkoVar.u(i21, i22 / 3);
                    i7 = 0;
                } else if (i21 < i26 || i21 > i24) {
                    i7 = 0;
                    iU = -1;
                } else {
                    i7 = 0;
                    iU = zzkoVar.u(i21, 0);
                }
                if (iU == -1) {
                    i15 = i7;
                    i5 = i16;
                    zzioVar = zzioVar3;
                    unsafe = unsafe4;
                    iArr = iArr2;
                    i14 = i21;
                    i6 = i18 == true ? 1 : 0;
                    this = zzkoVar;
                    obj2 = obj3;
                    i8 = i25;
                } else {
                    int i27 = iArr2[iU + 1];
                    int i28 = (i27 & 267386880) >>> 20;
                    iArr = iArr2;
                    i14 = i21;
                    long j2 = i27 & 1048575;
                    if (i28 <= 17) {
                        int i29 = iArr[iU + 2];
                        int i30 = 1 << (i29 >>> 20);
                        int i31 = i29 & 1048575;
                        zzioVar3 = zzioVar3;
                        if (i31 != i16) {
                            if (i16 != 1048575) {
                                unsafe4.putInt(obj3, i16, i17);
                            }
                            i16 = i31;
                            i9 = unsafe4.getInt(obj3, i31);
                        } else {
                            i9 = i17;
                            i16 = i16;
                        }
                        switch (i28) {
                            case 0:
                                bArr2 = bArr;
                                i25 = i25;
                                iU = iU;
                                if (i23 == 1) {
                                    zzma.f31290c.d(obj3, j2, Double.longBitsToDouble(zzhl.k(i25, bArr2)));
                                    iD = i25 + 8;
                                    int i32 = i16;
                                    i17 = i9 | i30;
                                    bArr5 = bArr2;
                                    i16 = i32;
                                    i3 = i3;
                                    zzhnVar2 = zzhnVar;
                                    i15 = iU;
                                    i18 = i18 == true ? 1 : 0;
                                } else {
                                    int i33 = i25;
                                    obj2 = obj3;
                                    i8 = i33;
                                    this = zzkoVar;
                                    unsafe = unsafe4;
                                    i15 = iU;
                                    i6 = i18 == true ? 1 : 0;
                                    i5 = i16;
                                    i14 = i14;
                                    zzioVar = zzioVar3;
                                    i17 = i9;
                                }
                                break;
                            case 1:
                                bArr2 = bArr;
                                i25 = i25;
                                iU = iU;
                                if (i23 == 5) {
                                    zzma.f31290c.e(obj3, j2, Float.intBitsToFloat(zzhl.a(i25, bArr2)));
                                    iD = i25 + 4;
                                    int i34 = i16;
                                    i17 = i9 | i30;
                                    bArr5 = bArr2;
                                    i16 = i34;
                                    i3 = i3;
                                    zzhnVar2 = zzhnVar;
                                    i15 = iU;
                                    i18 = i18 == true ? 1 : 0;
                                } else {
                                    int i35 = i25;
                                    obj2 = obj3;
                                    i8 = i35;
                                    this = zzkoVar;
                                    unsafe = unsafe4;
                                    i15 = iU;
                                    i6 = i18 == true ? 1 : 0;
                                    i5 = i16;
                                    i14 = i14;
                                    zzioVar = zzioVar3;
                                    i17 = i9;
                                }
                                break;
                            case 2:
                            case 3:
                                iU = iU;
                                i25 = i25;
                                zzhnVar = zzhnVar;
                                unsafe3 = unsafe4;
                                if (i23 == 0) {
                                    iJ = zzhl.j(bArr, i25, zzhnVar);
                                    unsafe3.putLong(obj3, j2, zzhnVar.f31184b);
                                    unsafe4 = unsafe3;
                                    int i36 = i16;
                                    i17 = i9 | i30;
                                    bArr5 = bArr;
                                    i16 = i36;
                                    iD = iJ;
                                    zzhnVar2 = zzhnVar;
                                    i15 = iU;
                                    i18 = i18 == true ? 1 : 0;
                                } else {
                                    unsafe4 = unsafe3;
                                    int i37 = i25;
                                    obj2 = obj3;
                                    i8 = i37;
                                    this = zzkoVar;
                                    unsafe = unsafe4;
                                    i15 = iU;
                                    i6 = i18 == true ? 1 : 0;
                                    i5 = i16;
                                    i14 = i14;
                                    zzioVar = zzioVar3;
                                    i17 = i9;
                                }
                                break;
                            case 4:
                            case 11:
                                iU = iU;
                                i25 = i25;
                                unsafe3 = unsafe4;
                                if (i23 == 0) {
                                    int i38 = zzhl.i(bArr, i25, zzhnVar);
                                    unsafe3.putInt(obj3, j2, zzhnVar.f31183a);
                                    i3 = i3;
                                    unsafe4 = unsafe3;
                                    bArr5 = bArr;
                                    i15 = iU;
                                    i16 = i16;
                                    i17 = i9 | i30;
                                    iD = i38;
                                    zzhnVar2 = zzhnVar;
                                    i18 = i18 == true ? 1 : 0;
                                } else {
                                    unsafe4 = unsafe3;
                                    int i39 = i25;
                                    obj2 = obj3;
                                    i8 = i39;
                                    this = zzkoVar;
                                    unsafe = unsafe4;
                                    i15 = iU;
                                    i6 = i18 == true ? 1 : 0;
                                    i5 = i16;
                                    i14 = i14;
                                    zzioVar = zzioVar3;
                                    i17 = i9;
                                }
                                break;
                            case 5:
                            case 14:
                                unsafe2 = unsafe4;
                                iU = iU;
                                i10 = i25;
                                if (i23 == 1) {
                                    unsafe2.putLong(obj3, j2, zzhl.k(i10, bArr));
                                    iD = i10 + 8;
                                    unsafe4 = unsafe2;
                                    bArr5 = bArr;
                                    zzhnVar2 = zzhnVar;
                                    i15 = iU;
                                    i17 = i9 | i30;
                                    i3 = i3;
                                } else {
                                    i25 = i10;
                                    unsafe4 = unsafe2;
                                    int i310 = i25;
                                    obj2 = obj3;
                                    i8 = i310;
                                    this = zzkoVar;
                                    unsafe = unsafe4;
                                    i15 = iU;
                                    i6 = i18 == true ? 1 : 0;
                                    i5 = i16;
                                    i14 = i14;
                                    zzioVar = zzioVar3;
                                    i17 = i9;
                                }
                                break;
                            case 6:
                            case 13:
                                bArr3 = bArr;
                                i11 = i3;
                                unsafe2 = unsafe4;
                                zzhnVar = zzhnVar;
                                iU = iU;
                                i10 = i25;
                                if (i23 == 5) {
                                    unsafe2.putInt(obj3, j2, zzhl.a(i10, bArr3));
                                    iD = i10 + 4;
                                    int i40 = i16;
                                    i17 = i9 | i30;
                                    bArr5 = bArr3;
                                    i16 = i40;
                                    unsafe4 = unsafe2;
                                    i3 = i11;
                                    zzhnVar2 = zzhnVar;
                                    i15 = iU;
                                    i18 = i18 == true ? 1 : 0;
                                } else {
                                    i25 = i10;
                                    unsafe4 = unsafe2;
                                    int i311 = i25;
                                    obj2 = obj3;
                                    i8 = i311;
                                    this = zzkoVar;
                                    unsafe = unsafe4;
                                    i15 = iU;
                                    i6 = i18 == true ? 1 : 0;
                                    i5 = i16;
                                    i14 = i14;
                                    zzioVar = zzioVar3;
                                    i17 = i9;
                                }
                                break;
                            case 7:
                                i11 = i3;
                                unsafe2 = unsafe4;
                                zzhnVar = zzhnVar;
                                iU = iU;
                                i10 = i25;
                                if (i23 == 0) {
                                    int iJ2 = zzhl.j(bArr, i10, zzhnVar);
                                    zzma.f31290c.g(obj3, j2, zzhnVar.f31184b != 0);
                                    int i41 = i16;
                                    i17 = i9 | i30;
                                    bArr5 = bArr;
                                    i16 = i41;
                                    iD = iJ2;
                                    unsafe4 = unsafe2;
                                    i3 = i11;
                                    zzhnVar2 = zzhnVar;
                                    i15 = iU;
                                    i18 = i18 == true ? 1 : 0;
                                } else {
                                    i25 = i10;
                                    unsafe4 = unsafe2;
                                    int i312 = i25;
                                    obj2 = obj3;
                                    i8 = i312;
                                    this = zzkoVar;
                                    unsafe = unsafe4;
                                    i15 = iU;
                                    i6 = i18 == true ? 1 : 0;
                                    i5 = i16;
                                    i14 = i14;
                                    zzioVar = zzioVar3;
                                    i17 = i9;
                                }
                                break;
                            case 8:
                                bArr3 = bArr;
                                i11 = i3;
                                unsafe2 = unsafe4;
                                zzhnVar = zzhnVar;
                                iU = iU;
                                i10 = i25;
                                if (i23 == 2) {
                                    iD = (i27 & PKIFailureInfo.duplicateCertReq) == 0 ? zzhl.l(bArr3, i10, zzhnVar) : zzhl.m(bArr3, i10, zzhnVar);
                                    unsafe2.putObject(obj3, j2, zzhnVar.f31185c);
                                    int i42 = i16;
                                    i17 = i9 | i30;
                                    bArr5 = bArr3;
                                    i16 = i42;
                                    unsafe4 = unsafe2;
                                    i3 = i11;
                                    zzhnVar2 = zzhnVar;
                                    i15 = iU;
                                    i18 = i18 == true ? 1 : 0;
                                } else {
                                    i25 = i10;
                                    unsafe4 = unsafe2;
                                    int i313 = i25;
                                    obj2 = obj3;
                                    i8 = i313;
                                    this = zzkoVar;
                                    unsafe = unsafe4;
                                    i15 = iU;
                                    i6 = i18 == true ? 1 : 0;
                                    i5 = i16;
                                    i14 = i14;
                                    zzioVar = zzioVar3;
                                    i17 = i9;
                                }
                                break;
                            case 9:
                                bArr3 = bArr;
                                unsafe2 = unsafe4;
                                zzhnVar = zzhnVar;
                                iU = iU;
                                i10 = i25;
                                if (i23 == 2) {
                                    i11 = i3;
                                    iD = zzhl.h(zzkoVar.m(iU), bArr3, i10, i11, zzhnVar);
                                    if ((i9 & i30) == 0) {
                                        unsafe2.putObject(obj3, j2, zzhnVar.f31185c);
                                    } else {
                                        unsafe2.putObject(obj3, j2, zzjf.b(unsafe2.getObject(obj3, j2), zzhnVar.f31185c));
                                    }
                                    int i43 = i16;
                                    i17 = i9 | i30;
                                    bArr5 = bArr3;
                                    i16 = i43;
                                    unsafe4 = unsafe2;
                                    i3 = i11;
                                    zzhnVar2 = zzhnVar;
                                    i15 = iU;
                                    i18 = i18 == true ? 1 : 0;
                                } else {
                                    i25 = i10;
                                    unsafe4 = unsafe2;
                                    int i314 = i25;
                                    obj2 = obj3;
                                    i8 = i314;
                                    this = zzkoVar;
                                    unsafe = unsafe4;
                                    i15 = iU;
                                    i6 = i18 == true ? 1 : 0;
                                    i5 = i16;
                                    i14 = i14;
                                    zzioVar = zzioVar3;
                                    i17 = i9;
                                }
                                break;
                            case 10:
                                bArr4 = bArr;
                                unsafe2 = unsafe4;
                                zzhnVar = zzhnVar;
                                iU = iU;
                                i10 = i25;
                                if (i23 == 2) {
                                    iD = zzhl.n(bArr4, i10, zzhnVar);
                                    unsafe2.putObject(obj3, j2, zzhnVar.f31185c);
                                    int i44 = i16;
                                    i17 = i9 | i30;
                                    bArr5 = bArr4;
                                    i16 = i44;
                                    i3 = i3;
                                    unsafe4 = unsafe2;
                                    zzhnVar2 = zzhnVar;
                                    i15 = iU;
                                    i18 = i18 == true ? 1 : 0;
                                } else {
                                    i25 = i10;
                                    unsafe4 = unsafe2;
                                    int i315 = i25;
                                    obj2 = obj3;
                                    i8 = i315;
                                    this = zzkoVar;
                                    unsafe = unsafe4;
                                    i15 = iU;
                                    i6 = i18 == true ? 1 : 0;
                                    i5 = i16;
                                    i14 = i14;
                                    zzioVar = zzioVar3;
                                    i17 = i9;
                                }
                                break;
                            case 12:
                                bArr4 = bArr;
                                unsafe2 = unsafe4;
                                zzhnVar = zzhnVar;
                                iU = iU;
                                i10 = i25;
                                if (i23 == 0) {
                                    iD = zzhl.i(bArr4, i10, zzhnVar);
                                    int i45 = zzhnVar.f31183a;
                                    zzjg zzjgVarA = zzkoVar.A(iU);
                                    if (zzjgVarA == null || zzjgVarA.e(i45)) {
                                        unsafe2.putInt(obj3, j2, i45);
                                        int i46 = i16;
                                        i17 = i9 | i30;
                                        bArr5 = bArr4;
                                        i16 = i46;
                                        i3 = i3;
                                        unsafe4 = unsafe2;
                                        zzhnVar2 = zzhnVar;
                                        i15 = iU;
                                    } else {
                                        F(obj3).a(i18 == true ? 1 : 0, Long.valueOf(i45));
                                        i3 = i3;
                                        unsafe4 = unsafe2;
                                        bArr5 = bArr4;
                                        zzhnVar2 = zzhnVar;
                                        i15 = iU;
                                        i16 = i16;
                                        i17 = i9;
                                    }
                                    i18 = i18 == true ? 1 : 0;
                                } else {
                                    i25 = i10;
                                    unsafe4 = unsafe2;
                                    int i316 = i25;
                                    obj2 = obj3;
                                    i8 = i316;
                                    this = zzkoVar;
                                    unsafe = unsafe4;
                                    i15 = iU;
                                    i6 = i18 == true ? 1 : 0;
                                    i5 = i16;
                                    i14 = i14;
                                    zzioVar = zzioVar3;
                                    i17 = i9;
                                }
                                break;
                            case 15:
                                bArr4 = bArr;
                                unsafe2 = unsafe4;
                                zzhnVar = zzhnVar;
                                iU = iU;
                                i10 = i25;
                                if (i23 == 0) {
                                    iD = zzhl.i(bArr4, i10, zzhnVar);
                                    unsafe2.putInt(obj3, j2, zzif.b(zzhnVar.f31183a));
                                    int i47 = i16;
                                    i17 = i9 | i30;
                                    bArr5 = bArr4;
                                    i16 = i47;
                                    i3 = i3;
                                    unsafe4 = unsafe2;
                                    zzhnVar2 = zzhnVar;
                                    i15 = iU;
                                    i18 = i18 == true ? 1 : 0;
                                } else {
                                    i25 = i10;
                                    unsafe4 = unsafe2;
                                    int i317 = i25;
                                    obj2 = obj3;
                                    i8 = i317;
                                    this = zzkoVar;
                                    unsafe = unsafe4;
                                    i15 = iU;
                                    i6 = i18 == true ? 1 : 0;
                                    i5 = i16;
                                    i14 = i14;
                                    zzioVar = zzioVar3;
                                    i17 = i9;
                                }
                                break;
                            case 16:
                                int i48 = iU;
                                if (i23 == 0) {
                                    iJ = zzhl.j(bArr, i25, zzhnVar);
                                    zzhnVar = zzhnVar;
                                    iU = i48;
                                    Unsafe unsafe5 = unsafe4;
                                    unsafe5.putLong(obj3, j2, zzif.a(zzhnVar.f31184b));
                                    int i49 = i16;
                                    i17 = i9 | i30;
                                    bArr5 = bArr;
                                    i16 = i49;
                                    unsafe4 = unsafe5;
                                    iD = iJ;
                                    zzhnVar2 = zzhnVar;
                                    i15 = iU;
                                    i18 = i18 == true ? 1 : 0;
                                } else {
                                    iU = i48;
                                    i25 = i25;
                                    int i318 = i25;
                                    obj2 = obj3;
                                    i8 = i318;
                                    this = zzkoVar;
                                    unsafe = unsafe4;
                                    i15 = iU;
                                    i6 = i18 == true ? 1 : 0;
                                    i5 = i16;
                                    i14 = i14;
                                    zzioVar = zzioVar3;
                                    i17 = i9;
                                }
                                break;
                            case 17:
                                if (i23 == 3) {
                                    int i50 = iU;
                                    iD = zzhl.g(zzkoVar.m(i50), bArr, i25, i3, (i14 << 3) | 4, zzhnVar);
                                    if ((i9 & i30) == 0) {
                                        unsafe4.putObject(obj3, j2, zzhnVar.f31185c);
                                    } else {
                                        unsafe4.putObject(obj3, j2, zzjf.b(unsafe4.getObject(obj3, j2), zzhnVar.f31185c));
                                    }
                                    i15 = i50;
                                    bArr5 = bArr;
                                    i17 = i9 | i30;
                                    zzhnVar2 = zzhnVar;
                                    i3 = i3;
                                } else {
                                    int i319 = i25;
                                    obj2 = obj3;
                                    i8 = i319;
                                    this = zzkoVar;
                                    unsafe = unsafe4;
                                    i15 = iU;
                                    i6 = i18 == true ? 1 : 0;
                                    i5 = i16;
                                    i14 = i14;
                                    zzioVar = zzioVar3;
                                    i17 = i9;
                                }
                                break;
                            default:
                                int i3110 = i25;
                                obj2 = obj3;
                                i8 = i3110;
                                this = zzkoVar;
                                unsafe = unsafe4;
                                i15 = iU;
                                i6 = i18 == true ? 1 : 0;
                                i5 = i16;
                                i14 = i14;
                                zzioVar = zzioVar3;
                                i17 = i9;
                                break;
                        }
                    } else {
                        int i51 = iU;
                        zzio zzioVar4 = zzioVar3;
                        if (i28 == 27) {
                            if (i23 == 2) {
                                zzjl zzjlVarE = (zzjl) unsafe4.getObject(obj3, j2);
                                if (!zzjlVarE.d0()) {
                                    int size = zzjlVarE.size();
                                    zzjlVarE = zzjlVarE.e(size == 0 ? 10 : size << 1);
                                    unsafe4.putObject(obj3, j2, zzjlVarE);
                                }
                                obj3 = obj;
                                i3 = i3;
                                iD = zzhl.f(zzkoVar.m(i51), i18 == true ? 1 : 0, bArr, i25, i3, zzjlVarE, zzhnVar);
                                i15 = i51;
                                i14 = i14;
                                zzioVar3 = zzioVar4;
                                bArr5 = bArr;
                                i18 = i18 == true ? 1 : 0;
                            } else {
                                i5 = i16;
                                i12 = i25;
                                unsafe = unsafe4;
                                i13 = i18 == true ? 1 : 0;
                                i9 = i17;
                                zzioVar = zzioVar4;
                            }
                            zzhnVar2 = zzhnVar;
                        } else if (i28 <= 49) {
                            unsafe = unsafe4;
                            i5 = i16;
                            i9 = i17;
                            zzioVar = zzioVar4;
                            int iJ3 = zzkoVar.j(obj, bArr, i25, i3, i18 == true ? 1 : 0, i14, i23, i51, i27, i28, j2, zzhnVar);
                            i13 = i18 == true ? 1 : 0;
                            if (iJ3 == i25) {
                                i51 = i51;
                                i8 = iJ3;
                                i6 = i13;
                                i15 = i51;
                                i14 = i14;
                                i17 = i9;
                                obj2 = obj;
                            } else {
                                i51 = i51;
                                zzkoVar = this;
                                obj3 = obj;
                                bArr5 = bArr;
                                i3 = i3;
                                zzhnVar2 = zzhnVar;
                                iD = iJ3;
                                i15 = i51;
                                i14 = i14;
                                i16 = i5;
                                i17 = i9;
                                unsafe4 = unsafe;
                                i18 = i13 == true ? 1 : 0;
                                zzioVar3 = zzioVar;
                            }
                        } else {
                            i5 = i16;
                            unsafe = unsafe4;
                            i9 = i17;
                            zzioVar = zzioVar4;
                            i13 = i18 == true ? 1 : 0;
                            i12 = i25;
                            if (i28 != 50) {
                                i6 = i13 == true ? 1 : 0;
                                i14 = i14;
                                int i52 = i(obj, bArr, i12, i3, i6 == true ? 1 : 0, i14, i23, i27, i28, j2, i51, zzhnVar);
                                this = this;
                                obj2 = obj;
                                if (i52 == i12) {
                                    i8 = i52;
                                    i15 = i51;
                                    i17 = i9;
                                } else {
                                    bArr5 = bArr;
                                    i18 = i6 == true ? 1 : 0;
                                    iD = i52;
                                    zzkoVar = this;
                                    obj3 = obj2;
                                    i15 = i51;
                                    i16 = i5;
                                    i17 = i9;
                                    zzioVar3 = zzioVar;
                                }
                            } else if (i23 == 2) {
                                r(obj, bArr, i12, i3, i51, j2, zzhnVar);
                                throw null;
                            }
                            unsafe4 = unsafe;
                            zzhnVar2 = zzhnVar;
                        }
                        i8 = i12;
                        i6 = i13;
                        i15 = i51;
                        i14 = i14;
                        i17 = i9;
                        obj2 = obj;
                    }
                }
                if (i6 != i4 || i4 == 0) {
                    if (this.f31246f) {
                        zzioVar2 = zzioVar;
                        if (zzioVar2 != zzio.b()) {
                            zzioVar2.a(this.f31245e, i14);
                            zzlx zzlxVarF = F(obj2);
                            bArr5 = bArr;
                            Object[] objArr = i6 == true ? 1 : 0;
                            iD = zzhl.d(objArr == true ? 1 : 0, bArr5, i8, i3, zzlxVarF, zzhnVar);
                            i18 = objArr == true ? 1 : 0;
                            zzkoVar = this;
                            obj3 = obj2;
                            zzioVar3 = zzioVar2;
                            i16 = i5;
                            unsafe4 = unsafe;
                            zzhnVar2 = zzhnVar;
                        }
                    } else {
                        zzioVar2 = zzioVar;
                    }
                    zzlx zzlxVarF2 = F(obj2);
                    bArr5 = bArr;
                    Object[] objArr2 = i6 == true ? 1 : 0;
                    int iD2 = zzhl.d(objArr2 == true ? 1 : 0, bArr5, i8, i3, zzlxVarF2, zzhnVar);
                    i3 = i3;
                    i18 = objArr2 == true ? 1 : 0;
                    zzkoVar = this;
                    i16 = i5;
                    zzhnVar2 = zzhnVar;
                    iD = iD2;
                    obj3 = obj2;
                    zzioVar3 = zzioVar2;
                    unsafe4 = unsafe;
                } else {
                    i3 = i3;
                    iD = i8;
                }
            } else {
                obj2 = obj3;
                i5 = i16;
                unsafe = unsafe4;
                iArr = iArr2;
                this = zzkoVar;
                i6 = i18;
            }
        }
        int i53 = i5;
        if (i53 != 1048575) {
            unsafe.putInt(obj2, i53, i17);
        }
        for (int i54 = this.f31248i; i54 < this.f31249j; i54++) {
            int i55 = this.f31247h[i54];
            int i56 = iArr[i55];
            Object objM = zzma.m(this.C(i55) & 1048575, obj2);
            if (objM != null && this.A(i55) != null) {
                zzkh zzkhVar = this.o;
                zzkhVar.d(objM);
                zzkhVar.c(this.v(i55));
                throw null;
            }
        }
        if (i4 == 0) {
            if (iD != i3) {
                throw zzjk.d();
            }
        } else if (iD > i3 || i6 != i4) {
            throw zzjk.d();
        }
        return iD;
    }

    public final zzlc m(int i2) {
        int i3 = (i2 / 3) << 1;
        Object[] objArr = this.f31243b;
        zzlc zzlcVar = (zzlc) objArr[i3];
        if (zzlcVar != null) {
            return zzlcVar;
        }
        zzlc zzlcVarA = zzky.f31256c.a((Class) objArr[i3 + 1]);
        objArr[i3] = zzlcVarA;
        return zzlcVarA;
    }

    public final void p(zzmr zzmrVar, int i2, Object obj, int i3) {
        if (obj == null) {
            return;
        }
        this.o.c(v(i3));
        throw null;
    }

    public final void q(Object obj, Object obj2, int i2) {
        long jC = C(i2) & 1048575;
        if (t(i2, obj2)) {
            Object objM = zzma.m(jC, obj);
            Object objM2 = zzma.m(jC, obj2);
            if (objM != null && objM2 != null) {
                zzma.d(jC, obj, zzjf.b(objM, objM2));
                x(i2, obj);
            } else if (objM2 != null) {
                zzma.d(jC, obj, objM2);
                x(i2, obj);
            }
        }
    }

    public final void r(Object obj, byte[] bArr, int i2, int i3, int i4, long j2, zzhn zzhnVar) {
        Unsafe unsafe = q;
        Object objV = v(i4);
        Object object = unsafe.getObject(obj, j2);
        zzkh zzkhVar = this.o;
        if (zzkhVar.b(object)) {
            zzke zzkeVarI = zzkhVar.I();
            zzkhVar.e((Object) zzkeVarI, object);
            unsafe.putObject(obj, j2, zzkeVarI);
        }
        zzkhVar.c(objV);
        throw null;
    }

    public final boolean s(int i2, int i3, Object obj) {
        return zzma.f31290c.k((long) (this.f31242a[i3 + 2] & 1048575), obj) == i2;
    }

    /* JADX WARN: Code duplicated, block: B:72:0x010b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:73:0x010c A[RETURN] */
    public final boolean t(int i2, Object obj) {
        int i3 = this.f31242a[i2 + 2];
        long j2 = i3 & 1048575;
        if (j2 != 1048575) {
            if (((1 << (i3 >>> 20)) & zzma.f31290c.k(j2, obj)) != 0) {
                return true;
            }
            return false;
        }
        int iC = C(i2);
        long j3 = iC & 1048575;
        switch ((iC & 267386880) >>> 20) {
            case 0:
                if (zzma.f31290c.j(j3, obj) != 0.0d) {
                    return true;
                }
                return false;
            case 1:
                if (zzma.f31290c.i(j3, obj) != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    return true;
                }
                return false;
            case 2:
                if (zzma.f31290c.l(j3, obj) != 0) {
                    return true;
                }
                return false;
            case 3:
                if (zzma.f31290c.l(j3, obj) != 0) {
                    return true;
                }
                return false;
            case 4:
                if (zzma.f31290c.k(j3, obj) != 0) {
                    return true;
                }
                return false;
            case 5:
                if (zzma.f31290c.l(j3, obj) != 0) {
                    return true;
                }
                return false;
            case 6:
                if (zzma.f31290c.k(j3, obj) != 0) {
                    return true;
                }
                return false;
            case 7:
                return zzma.f31290c.h(j3, obj);
            case 8:
                Object objM = zzma.m(j3, obj);
                if (objM instanceof String) {
                    if (((String) objM).isEmpty()) {
                        return false;
                    }
                    return true;
                }
                if (!(objM instanceof zzht)) {
                    ct0.c();
                    return false;
                }
                if (zzht.f31188c.equals(objM)) {
                    return false;
                }
                return true;
            case 9:
                if (zzma.m(j3, obj) != null) {
                    return true;
                }
                return false;
            case 10:
                if (zzht.f31188c.equals(zzma.m(j3, obj))) {
                    return false;
                }
                return true;
            case 11:
                if (zzma.f31290c.k(j3, obj) != 0) {
                    return true;
                }
                return false;
            case 12:
                if (zzma.f31290c.k(j3, obj) != 0) {
                    return true;
                }
                return false;
            case 13:
                if (zzma.f31290c.k(j3, obj) != 0) {
                    return true;
                }
                return false;
            case 14:
                if (zzma.f31290c.l(j3, obj) != 0) {
                    return true;
                }
                return false;
            case 15:
                if (zzma.f31290c.k(j3, obj) != 0) {
                    return true;
                }
                return false;
            case 16:
                if (zzma.f31290c.l(j3, obj) != 0) {
                    return true;
                }
                return false;
            case 17:
                if (zzma.m(j3, obj) != null) {
                    return true;
                }
                return false;
            default:
                ct0.c();
                return false;
        }
    }

    public final int u(int i2, int i3) {
        int[] iArr = this.f31242a;
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

    public final Object v(int i2) {
        return this.f31243b[(i2 / 3) << 1];
    }

    public final void w(int i2, int i3, Object obj) {
        zzma.e(obj, this.f31242a[i3 + 2] & 1048575, i2);
    }

    public final void x(int i2, Object obj) {
        int i3 = this.f31242a[i2 + 2];
        long j2 = 1048575 & i3;
        if (j2 == 1048575) {
            return;
        }
        zzma.e(obj, j2, (1 << (i3 >>> 20)) | zzma.f31290c.k(j2, obj));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:7:0x002a  */
    public final void y(Object obj, zzmr zzmrVar) {
        Map.Entry entry;
        boolean z;
        int i2;
        boolean z2;
        boolean z3 = this.f31246f;
        zziq zziqVar = this.n;
        if (z3) {
            ((zzip) zziqVar).getClass();
            zziu<Object> zziuVar = ((zzjb.zzc) obj).zzc;
            if (zziuVar.f31213a.isEmpty()) {
                entry = null;
            } else {
                entry = (Map.Entry) zziuVar.j().next();
            }
        } else {
            entry = null;
        }
        int[] iArr = this.f31242a;
        int length = iArr.length;
        Unsafe unsafe = q;
        int i3 = 0;
        int i4 = 1048575;
        int i5 = 0;
        while (i3 < length) {
            int iC = C(i3);
            int i6 = iArr[i3];
            int i7 = (iC & 267386880) >>> 20;
            if (i7 <= 17) {
                int i8 = iArr[i3 + 2];
                z = true;
                int i9 = i8 & 1048575;
                if (i9 != i4) {
                    i5 = unsafe.getInt(obj, i9);
                    i4 = i9;
                }
                i2 = 1 << (i8 >>> 20);
            } else {
                z = true;
                i2 = 0;
            }
            if (entry != null) {
                ((zzip) zziqVar).getClass();
                tr.x(entry.getKey());
                throw null;
            }
            int i10 = iC & 1048575;
            Map.Entry entry2 = entry;
            zziq zziqVar2 = zziqVar;
            long j2 = i10;
            switch (i7) {
                case 0:
                    if ((i5 & i2) != 0) {
                        zzmrVar.J(zzma.f31290c.j(j2, obj), i6);
                    }
                    break;
                case 1:
                    if ((i5 & i2) != 0) {
                        zzmrVar.E(zzma.f31290c.i(j2, obj), i6);
                    }
                    break;
                case 2:
                    if ((i5 & i2) != 0) {
                        zzmrVar.n(i6, unsafe.getLong(obj, j2));
                    }
                    break;
                case 3:
                    if ((i5 & i2) != 0) {
                        zzmrVar.i(i6, unsafe.getLong(obj, j2));
                    }
                    break;
                case 4:
                    if ((i5 & i2) != 0) {
                        zzmrVar.h(i6, unsafe.getInt(obj, j2));
                    }
                    break;
                case 5:
                    if ((i5 & i2) != 0) {
                        zzmrVar.v(i6, unsafe.getLong(obj, j2));
                    }
                    break;
                case 6:
                    if ((i5 & i2) != 0) {
                        zzmrVar.t(i6, unsafe.getInt(obj, j2));
                    }
                    break;
                case 7:
                    if ((i5 & i2) != 0) {
                        zzmrVar.a(i6, zzma.f31290c.h(j2, obj));
                    }
                    break;
                case 8:
                    if ((i5 & i2) != 0) {
                        o(i6, unsafe.getObject(obj, j2), zzmrVar);
                    }
                    break;
                case 9:
                    if ((i5 & i2) != 0) {
                        zzmrVar.I(i6, unsafe.getObject(obj, j2), m(i3));
                    }
                    break;
                case 10:
                    if ((i5 & i2) != 0) {
                        zzmrVar.A(i6, (zzht) unsafe.getObject(obj, j2));
                    }
                    break;
                case 11:
                    if ((i5 & i2) != 0) {
                        zzmrVar.x(i6, unsafe.getInt(obj, j2));
                    }
                    break;
                case 12:
                    if ((i5 & i2) != 0) {
                        zzmrVar.d(i6, unsafe.getInt(obj, j2));
                    }
                    break;
                case 13:
                    if ((i5 & i2) != 0) {
                        zzmrVar.l(i6, unsafe.getInt(obj, j2));
                    }
                    break;
                case 14:
                    if ((i5 & i2) != 0) {
                        zzmrVar.c(i6, unsafe.getLong(obj, j2));
                    }
                    break;
                case 15:
                    if ((i5 & i2) != 0) {
                        zzmrVar.o(i6, unsafe.getInt(obj, j2));
                    }
                    break;
                case 16:
                    if ((i5 & i2) != 0) {
                        zzmrVar.y(i6, unsafe.getLong(obj, j2));
                    }
                    break;
                case 17:
                    if ((i5 & i2) != 0) {
                        zzmrVar.L(i6, unsafe.getObject(obj, j2), m(i3));
                    }
                    break;
                case 18:
                    zzle.f(iArr[i3], (List) unsafe.getObject(obj, j2), zzmrVar, false);
                    break;
                case 19:
                    zzle.l(iArr[i3], (List) unsafe.getObject(obj, j2), zzmrVar, false);
                    break;
                case 20:
                    zzle.o(iArr[i3], (List) unsafe.getObject(obj, j2), zzmrVar, false);
                    break;
                case 21:
                    zzle.q(iArr[i3], (List) unsafe.getObject(obj, j2), zzmrVar, false);
                    break;
                case 22:
                    zzle.z(iArr[i3], (List) unsafe.getObject(obj, j2), zzmrVar, false);
                    break;
                case 23:
                    zzle.u(iArr[i3], (List) unsafe.getObject(obj, j2), zzmrVar, false);
                    break;
                case 24:
                    zzle.E(iArr[i3], (List) unsafe.getObject(obj, j2), zzmrVar, false);
                    break;
                case 25:
                    zzle.H(iArr[i3], (List) unsafe.getObject(obj, j2), zzmrVar, false);
                    break;
                case 26:
                    int i11 = iArr[i3];
                    List list = (List) unsafe.getObject(obj, j2);
                    Class cls = zzle.f31264a;
                    if (list != null && !list.isEmpty()) {
                        zzmrVar.z(i11, list);
                    }
                    break;
                case 27:
                    int i12 = iArr[i3];
                    List list2 = (List) unsafe.getObject(obj, j2);
                    zzlc zzlcVarM = m(i3);
                    Class cls2 = zzle.f31264a;
                    if (list2 != null && !list2.isEmpty()) {
                        zzmrVar.M(i12, list2, zzlcVarM);
                    }
                    break;
                case 28:
                    int i13 = iArr[i3];
                    List list3 = (List) unsafe.getObject(obj, j2);
                    Class cls3 = zzle.f31264a;
                    if (list3 != null && !list3.isEmpty()) {
                        zzmrVar.s(i13, list3);
                    }
                    break;
                case 29:
                    z2 = false;
                    zzle.C(iArr[i3], (List) unsafe.getObject(obj, j2), zzmrVar, false);
                    break;
                case 30:
                    z2 = false;
                    zzle.G(iArr[i3], (List) unsafe.getObject(obj, j2), zzmrVar, false);
                    break;
                case 31:
                    z2 = false;
                    zzle.F(iArr[i3], (List) unsafe.getObject(obj, j2), zzmrVar, false);
                    break;
                case 32:
                    z2 = false;
                    zzle.w(iArr[i3], (List) unsafe.getObject(obj, j2), zzmrVar, false);
                    break;
                case 33:
                    z2 = false;
                    zzle.D(iArr[i3], (List) unsafe.getObject(obj, j2), zzmrVar, false);
                    break;
                case 34:
                    z2 = false;
                    zzle.s(iArr[i3], (List) unsafe.getObject(obj, j2), zzmrVar, false);
                    break;
                case 35:
                    zzle.f(iArr[i3], (List) unsafe.getObject(obj, j2), zzmrVar, z);
                    break;
                case 36:
                    zzle.l(iArr[i3], (List) unsafe.getObject(obj, j2), zzmrVar, z);
                    break;
                case 37:
                    zzle.o(iArr[i3], (List) unsafe.getObject(obj, j2), zzmrVar, z);
                    break;
                case 38:
                    zzle.q(iArr[i3], (List) unsafe.getObject(obj, j2), zzmrVar, z);
                    break;
                case 39:
                    zzle.z(iArr[i3], (List) unsafe.getObject(obj, j2), zzmrVar, z);
                    break;
                case 40:
                    zzle.u(iArr[i3], (List) unsafe.getObject(obj, j2), zzmrVar, z);
                    break;
                case 41:
                    zzle.E(iArr[i3], (List) unsafe.getObject(obj, j2), zzmrVar, z);
                    break;
                case EACTags.CURRENCY_CODE /* 42 */:
                    zzle.H(iArr[i3], (List) unsafe.getObject(obj, j2), zzmrVar, z);
                    break;
                case EACTags.DATE_OF_BIRTH /* 43 */:
                    zzle.C(iArr[i3], (List) unsafe.getObject(obj, j2), zzmrVar, z);
                    break;
                case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                    zzle.G(iArr[i3], (List) unsafe.getObject(obj, j2), zzmrVar, z);
                    break;
                case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                    zzle.F(iArr[i3], (List) unsafe.getObject(obj, j2), zzmrVar, z);
                    break;
                case 46:
                    zzle.w(iArr[i3], (List) unsafe.getObject(obj, j2), zzmrVar, z);
                    break;
                case EACTags.PIN_USAGE_POLICY /* 47 */:
                    zzle.D(iArr[i3], (List) unsafe.getObject(obj, j2), zzmrVar, z);
                    break;
                case 48:
                    zzle.s(iArr[i3], (List) unsafe.getObject(obj, j2), zzmrVar, z);
                    break;
                case 49:
                    int i14 = iArr[i3];
                    List list4 = (List) unsafe.getObject(obj, j2);
                    zzlc zzlcVarM2 = m(i3);
                    Class cls4 = zzle.f31264a;
                    if (list4 != null && !list4.isEmpty()) {
                        zzmrVar.H(i14, list4, zzlcVarM2);
                    }
                    break;
                case 50:
                    p(zzmrVar, i6, unsafe.getObject(obj, j2), i3);
                    break;
                case EACTags.TRANSACTION_DATE /* 51 */:
                    if (s(i6, i3, obj)) {
                        zzmrVar.J(((Double) zzma.m(j2, obj)).doubleValue(), i6);
                    }
                    break;
                case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                    if (s(i6, i3, obj)) {
                        zzmrVar.E(((Float) zzma.m(j2, obj)).floatValue(), i6);
                    }
                    break;
                case EACTags.SEX /* 53 */:
                    if (s(i6, i3, obj)) {
                        zzmrVar.n(i6, E(j2, obj));
                    }
                    break;
                case EACTags.CURRENCY_EXPONENT /* 54 */:
                    if (s(i6, i3, obj)) {
                        zzmrVar.i(i6, E(j2, obj));
                    }
                    break;
                case 55:
                    if (s(i6, i3, obj)) {
                        zzmrVar.h(i6, D(j2, obj));
                    }
                    break;
                case 56:
                    if (s(i6, i3, obj)) {
                        zzmrVar.v(i6, E(j2, obj));
                    }
                    break;
                case 57:
                    if (s(i6, i3, obj)) {
                        zzmrVar.t(i6, D(j2, obj));
                    }
                    break;
                case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
                    if (s(i6, i3, obj)) {
                        zzmrVar.a(i6, ((Boolean) zzma.m(j2, obj)).booleanValue());
                    }
                    break;
                case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                    if (s(i6, i3, obj)) {
                        o(i6, unsafe.getObject(obj, j2), zzmrVar);
                    }
                    break;
                case 60:
                    if (s(i6, i3, obj)) {
                        zzmrVar.I(i6, unsafe.getObject(obj, j2), m(i3));
                    }
                    break;
                case 61:
                    if (s(i6, i3, obj)) {
                        zzmrVar.A(i6, (zzht) unsafe.getObject(obj, j2));
                    }
                    break;
                case 62:
                    if (s(i6, i3, obj)) {
                        zzmrVar.x(i6, D(j2, obj));
                    }
                    break;
                case 63:
                    if (s(i6, i3, obj)) {
                        zzmrVar.d(i6, D(j2, obj));
                    }
                    break;
                case 64:
                    if (s(i6, i3, obj)) {
                        zzmrVar.l(i6, D(j2, obj));
                    }
                    break;
                case EACTags.ELEMENT_LIST /* 65 */:
                    if (s(i6, i3, obj)) {
                        zzmrVar.c(i6, E(j2, obj));
                    }
                    break;
                case EACTags.ADDRESS /* 66 */:
                    if (s(i6, i3, obj)) {
                        zzmrVar.o(i6, D(j2, obj));
                    }
                    break;
                case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                    if (s(i6, i3, obj)) {
                        zzmrVar.y(i6, E(j2, obj));
                    }
                    break;
                case EACTags.APPLICATION_IMAGE /* 68 */:
                    if (s(i6, i3, obj)) {
                        zzmrVar.L(i6, unsafe.getObject(obj, j2), m(i3));
                    }
                    break;
                default:
                    break;
            }
            i3 += 3;
            zziqVar = zziqVar2;
            entry = entry2;
        }
        Map.Entry entry3 = entry;
        zziq zziqVar3 = zziqVar;
        if (entry3 != null) {
            ((zzip) zziqVar3).getClass();
            tr.x(entry3.getKey());
            throw null;
        }
        ((zzlw) this.m).getClass();
        ((zzjb) obj).zzb.c(zzmrVar);
    }

    public final void z(Object obj, Object obj2, int i2) {
        int iC = C(i2);
        int i3 = this.f31242a[i2];
        long j2 = iC & 1048575;
        if (s(i3, i2, obj2)) {
            Object objM = s(i3, i2, obj) ? zzma.m(j2, obj) : null;
            Object objM2 = zzma.m(j2, obj2);
            if (objM != null && objM2 != null) {
                zzma.d(j2, obj, zzjf.b(objM, objM2));
                w(i3, i2, obj);
            } else if (objM2 != null) {
                zzma.d(j2, obj, objM2);
                w(i3, i2, obj);
            }
        }
    }
}
