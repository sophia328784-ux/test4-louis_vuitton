package com.google.android.gms.internal.clearcut;

import defpackage.ct0;
import defpackage.r81;
import java.lang.reflect.Field;
import java.nio.charset.Charset;
import java.util.List;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.asn1.eac.EACTags;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes2.dex */
final class zzds<T> implements zzef<T> {
    public static final Unsafe q = zzfd.f();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f29690a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object[] f29691b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f29692c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f29693e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final zzdo f29694f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f29695h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int[] f29696i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int[] f29697j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int[] f29698k;
    public final zzdw l;
    public final zzcy m;
    public final zzex n;
    public final zzbu o;
    public final zzdj p;

    public zzds(int[] iArr, Object[] objArr, int i2, int i3, int i4, zzdo zzdoVar, boolean z, int[] iArr2, int[] iArr3, int[] iArr4, zzdw zzdwVar, zzcy zzcyVar, zzex zzexVar, zzbu zzbuVar, zzdj zzdjVar) {
        this.f29690a = iArr;
        this.f29691b = objArr;
        this.f29692c = i2;
        this.d = i3;
        this.f29693e = i4;
        this.f29695h = z;
        this.g = zzbuVar != null && (zzdoVar instanceof zzcg.zzd);
        this.f29696i = iArr2;
        this.f29697j = iArr3;
        this.f29698k = iArr4;
        this.l = zzdwVar;
        this.m = zzcyVar;
        this.n = zzexVar;
        this.o = zzbuVar;
        this.f29694f = zzdoVar;
        this.p = zzdjVar;
    }

    public static int A(long j2, Object obj) {
        return ((Integer) zzfd.k(j2, obj)).intValue();
    }

    public static long B(long j2, Object obj) {
        return ((Long) zzfd.k(j2, obj)).longValue();
    }

    public static int h(zzef zzefVar, int i2, byte[] bArr, int i3, int i4, zzcn zzcnVar, zzay zzayVar) throws zzco {
        int iJ = j(zzefVar, bArr, i3, i4, zzayVar);
        while (true) {
            zzcnVar.add(zzayVar.f29653c);
            if (iJ >= i4) {
                break;
            }
            int iD = zzax.d(bArr, iJ, zzayVar);
            if (i2 != zzayVar.f29651a) {
                break;
            }
            iJ = j(zzefVar, bArr, iD, i4, zzayVar);
        }
        return iJ;
    }

    public static int i(zzef zzefVar, byte[] bArr, int i2, int i3, int i4, zzay zzayVar) throws zzco {
        zzds zzdsVar = (zzds) zzefVar;
        Object objB = zzdsVar.b();
        int iM = zzdsVar.m(objB, bArr, i2, i3, i4, zzayVar);
        zzdsVar.a(objB);
        zzayVar.f29653c = objB;
        return iM;
    }

    public static int j(zzef zzefVar, byte[] bArr, int i2, int i3, zzay zzayVar) throws zzco {
        int iC = i2 + 1;
        int i4 = bArr[i2];
        if (i4 < 0) {
            iC = zzax.c(i4, bArr, iC, zzayVar);
            i4 = zzayVar.f29651a;
        }
        int i5 = iC;
        if (i4 < 0 || i4 > i3 - i5) {
            throw zzco.a();
        }
        Object objB = zzefVar.b();
        int i6 = i5 + i4;
        zzefVar.g(objB, bArr, i5, i6, zzayVar);
        zzefVar.a(objB);
        zzayVar.f29653c = objB;
        return i6;
    }

    /* JADX WARN: Code duplicated, block: B:55:0x010c  */
    /* JADX WARN: Code duplicated, block: B:56:0x010f  */
    /* JADX WARN: Code duplicated, block: B:59:0x0114  */
    /* JADX WARN: Code duplicated, block: B:60:0x0117  */
    /* JADX WARN: Code duplicated, block: B:63:0x012e  */
    /* JADX WARN: Code duplicated, block: B:65:0x013a  */
    /* JADX WARN: Code duplicated, block: B:67:0x0141  */
    /* JADX WARN: Code duplicated, block: B:69:0x0145  */
    /* JADX WARN: Code duplicated, block: B:70:0x014a  */
    /* JADX WARN: Code duplicated, block: B:72:0x014e  */
    /* JADX WARN: Code duplicated, block: B:73:0x0159  */
    /* JADX WARN: Code duplicated, block: B:75:0x015f  */
    /* JADX WARN: Code duplicated, block: B:78:0x016d  */
    /* JADX WARN: Code duplicated, block: B:79:0x0173  */
    /* JADX WARN: Code duplicated, block: B:86:0x018c  */
    /* JADX WARN: Code duplicated, block: B:93:0x0198 A[EDGE_INSN: B:93:0x0198->B:89:0x0198 BREAK  A[LOOP:0: B:22:0x0052->B:87:0x018e], SYNTHETIC] */
    public static zzds n(zzdm zzdmVar, zzdw zzdwVar, zzcy zzcyVar, zzex zzexVar, zzbu zzbuVar, zzdj zzdjVar) {
        int i2;
        int i3;
        int i4;
        int[] iArr;
        zzcb zzcbVar;
        int iA;
        int iA2;
        Field fieldB;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        Object obj;
        Object obj2;
        int i11;
        Object obj3;
        int i12;
        Object obj4;
        Object obj5;
        Field fieldB2;
        Field fieldB3;
        if (!(zzdmVar instanceof zzec)) {
            r81.h();
            return null;
        }
        zzec zzecVar = (zzec) zzdmVar;
        zzed zzedVar = zzecVar.f29709b;
        int i13 = 1;
        boolean z = zzecVar.a() == 2;
        if (zzedVar.f29713e == 0) {
            i2 = 0;
            i3 = 0;
            i4 = 0;
        } else {
            int i14 = zzedVar.g;
            int i15 = zzedVar.f29715h;
            i2 = zzedVar.f29718k;
            i3 = i14;
            i4 = i15;
        }
        int[] iArr2 = new int[i2 << 2];
        Object[] objArr = new Object[i2 << 1];
        int i16 = zzedVar.f29716i;
        int[] iArr3 = i16 > 0 ? new int[i16] : null;
        int i17 = zzedVar.l;
        int[] iArr4 = i17 > 0 ? new int[i17] : null;
        boolean zA = zzedVar.a();
        Class cls = zzedVar.f29712c;
        Object[] objArr2 = zzedVar.f29711b;
        if (zA) {
            int i18 = zzedVar.s;
            int i19 = 0;
            int i20 = 0;
            int i21 = 0;
            while (true) {
                if (i18 >= zzedVar.f29717j || i19 >= ((i18 - i3) << 2)) {
                    int i22 = zzedVar.u;
                    zzcb zzcbVar2 = zzcb.zziw;
                    if (i22 <= zzcbVar2.a()) {
                        iArr = iArr2;
                        zzcbVar = zzcbVar2;
                        int i23 = i13;
                        Field field = zzedVar.x;
                        zzfd.zzd zzdVar = zzfd.d;
                        iA = (int) zzdVar.a(field);
                        if ((zzedVar.d & 1) != i23 || zzedVar.u > zzcb.zzhp.a()) {
                            iA2 = 0;
                        } else {
                            int i24 = (zzedVar.w / 32) + (zzedVar.f29714f << i23);
                            Object obj6 = objArr2[i24];
                            if (obj6 instanceof Field) {
                                fieldB = (Field) obj6;
                            } else {
                                fieldB = zzed.b(cls, (String) obj6);
                                objArr2[i24] = fieldB;
                            }
                            iA2 = (int) zzdVar.a(fieldB);
                            i5 = zzedVar.w % 32;
                        }
                        iArr[i19] = zzedVar.s;
                        i6 = i19 + 1;
                        i7 = zzedVar.t;
                        int i25 = iA2;
                        if ((i7 & 512) != 0) {
                            i8 = PKIFailureInfo.duplicateCertReq;
                        } else {
                            i8 = 0;
                        }
                        if ((i7 & 256) != 0) {
                            i9 = 268435456;
                        } else {
                            i9 = 0;
                        }
                        int i26 = i8 | i9;
                        i10 = zzedVar.u;
                        iArr[i6] = i26 | (i10 << 20) | iA;
                        iArr[i19 + 2] = (i5 << 20) | i25;
                        obj = zzedVar.A;
                        if (obj != null) {
                            i12 = (i19 / 4) << 1;
                            objArr[i12] = obj;
                            obj4 = zzedVar.y;
                            if (obj4 != null) {
                                objArr[i12 + 1] = obj4;
                            } else {
                                obj5 = zzedVar.z;
                                if (obj5 != null) {
                                    objArr[i12 + 1] = obj5;
                                }
                            }
                            i11 = 1;
                        } else {
                            obj2 = zzedVar.y;
                            if (obj2 != null) {
                                i11 = 1;
                                objArr[((i19 / 4) << 1) + 1] = obj2;
                            } else {
                                i11 = 1;
                                obj3 = zzedVar.z;
                                if (obj3 != null) {
                                    objArr[((i19 / 4) << 1) + 1] = obj3;
                                }
                            }
                        }
                        if (i10 == zzcbVar.ordinal()) {
                            iArr3[i20] = i19;
                            i20++;
                        } else if (i10 >= 18 && i10 <= 49) {
                            iArr4[i21] = iArr[i6] & 1048575;
                            i21++;
                        }
                        if (zzedVar.a()) {
                            break;
                        }
                        i18 = zzedVar.s;
                    } else {
                        int i27 = zzedVar.v << i13;
                        Object obj7 = objArr2[i27];
                        if (obj7 instanceof Field) {
                            fieldB2 = (Field) obj7;
                        } else {
                            fieldB2 = zzed.b(cls, (String) obj7);
                            objArr2[i27] = fieldB2;
                        }
                        zzfd.zzd zzdVar2 = zzfd.d;
                        iA = (int) zzdVar2.a(fieldB2);
                        int i28 = (zzedVar.v << 1) + 1;
                        iArr = iArr2;
                        Object obj8 = objArr2[i28];
                        zzcbVar = zzcbVar2;
                        if (obj8 instanceof Field) {
                            fieldB3 = (Field) obj8;
                        } else {
                            fieldB3 = zzed.b(cls, (String) obj8);
                            objArr2[i28] = fieldB3;
                        }
                        iA2 = (int) zzdVar2.a(fieldB3);
                    }
                    i5 = 0;
                    iArr[i19] = zzedVar.s;
                    i6 = i19 + 1;
                    i7 = zzedVar.t;
                    int i29 = iA2;
                    if ((i7 & 512) != 0) {
                        i8 = PKIFailureInfo.duplicateCertReq;
                    } else {
                        i8 = 0;
                    }
                    if ((i7 & 256) != 0) {
                        i9 = 268435456;
                    } else {
                        i9 = 0;
                    }
                    int i210 = i8 | i9;
                    i10 = zzedVar.u;
                    iArr[i6] = i210 | (i10 << 20) | iA;
                    iArr[i19 + 2] = (i5 << 20) | i29;
                    obj = zzedVar.A;
                    if (obj != null) {
                        i12 = (i19 / 4) << 1;
                        objArr[i12] = obj;
                        obj4 = zzedVar.y;
                        if (obj4 != null) {
                            objArr[i12 + 1] = obj4;
                        } else {
                            obj5 = zzedVar.z;
                            if (obj5 != null) {
                                objArr[i12 + 1] = obj5;
                            }
                        }
                        i11 = 1;
                    } else {
                        obj2 = zzedVar.y;
                        if (obj2 != null) {
                            i11 = 1;
                            objArr[((i19 / 4) << 1) + 1] = obj2;
                        } else {
                            i11 = 1;
                            obj3 = zzedVar.z;
                            if (obj3 != null) {
                                objArr[((i19 / 4) << 1) + 1] = obj3;
                            }
                        }
                    }
                    if (i10 == zzcbVar.ordinal()) {
                        iArr3[i20] = i19;
                        i20++;
                    } else if (i10 >= 18) {
                        iArr4[i21] = iArr[i6] & 1048575;
                        i21++;
                    }
                    if (zzedVar.a()) {
                        break;
                        break;
                    }
                    i18 = zzedVar.s;
                } else {
                    for (int i30 = 0; i30 < 4; i30++) {
                        iArr2[i19 + i30] = -1;
                    }
                    iArr = iArr2;
                    i11 = i13;
                }
                i19 += 4;
                i13 = i11;
                iArr2 = iArr;
            }
        } else {
            iArr = iArr2;
        }
        return new zzds(iArr, objArr, i3, i4, zzedVar.f29717j, zzecVar.f29708a, z, zzedVar.m, iArr3, iArr4, zzdwVar, zzcyVar, zzexVar, zzbuVar, zzdjVar);
    }

    @Override // com.google.android.gms.internal.clearcut.zzef
    public final void a(Object obj) {
        int[] iArr = this.f29697j;
        if (iArr != null) {
            for (int i2 : iArr) {
                long jV = v(i2) & 1048575;
                Object objK = zzfd.k(jV, obj);
                if (objK != null) {
                    zzfd.b(jV, obj, this.p.L(objK));
                }
            }
        }
        int[] iArr2 = this.f29698k;
        if (iArr2 != null) {
            for (int i3 : iArr2) {
                this.m.a(i3, obj);
            }
        }
        ((zzez) this.n).getClass();
        ((zzcg) obj).zzjp.d = false;
        if (this.g) {
            ((zzbv) this.o).getClass();
            ((zzcg.zzd) obj).zzjv.g();
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzef
    public final Object b() {
        return this.l.a(this.f29694f);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x003c  */
    @Override // com.google.android.gms.internal.clearcut.zzef
    public final boolean c(zzcg zzcgVar, zzcg zzcgVar2) {
        int[] iArr = this.f29690a;
        int length = iArr.length;
        int i2 = 0;
        while (true) {
            boolean zD = true;
            if (i2 < length) {
                int iV = v(i2);
                long j2 = iV & 1048575;
                switch ((iV & 267386880) >>> 20) {
                    case 0:
                        if (!z(zzcgVar, zzcgVar2, i2)) {
                            zD = false;
                        } else {
                            zzfd.zzd zzdVar = zzfd.d;
                            if (zzdVar.h(j2, zzcgVar) != zzdVar.h(j2, zzcgVar2)) {
                                zD = false;
                            }
                        }
                        break;
                    case 1:
                        if (!z(zzcgVar, zzcgVar2, i2)) {
                            zD = false;
                        } else {
                            zzfd.zzd zzdVar2 = zzfd.d;
                            if (zzdVar2.g(j2, zzcgVar) != zzdVar2.g(j2, zzcgVar2)) {
                                zD = false;
                            }
                        }
                        break;
                    case 2:
                        if (!z(zzcgVar, zzcgVar2, i2)) {
                            zD = false;
                        } else {
                            zzfd.zzd zzdVar3 = zzfd.d;
                            if (zzdVar3.h(j2, zzcgVar) != zzdVar3.h(j2, zzcgVar2)) {
                                zD = false;
                            }
                        }
                        break;
                    case 3:
                        if (!z(zzcgVar, zzcgVar2, i2)) {
                            zD = false;
                        } else {
                            zzfd.zzd zzdVar4 = zzfd.d;
                            if (zzdVar4.h(j2, zzcgVar) != zzdVar4.h(j2, zzcgVar2)) {
                                zD = false;
                            }
                        }
                        break;
                    case 4:
                        if (!z(zzcgVar, zzcgVar2, i2)) {
                            zD = false;
                        } else {
                            zzfd.zzd zzdVar5 = zzfd.d;
                            if (zzdVar5.g(j2, zzcgVar) != zzdVar5.g(j2, zzcgVar2)) {
                                zD = false;
                            }
                        }
                        break;
                    case 5:
                        if (!z(zzcgVar, zzcgVar2, i2)) {
                            zD = false;
                        } else {
                            zzfd.zzd zzdVar6 = zzfd.d;
                            if (zzdVar6.h(j2, zzcgVar) != zzdVar6.h(j2, zzcgVar2)) {
                                zD = false;
                            }
                        }
                        break;
                    case 6:
                        if (!z(zzcgVar, zzcgVar2, i2)) {
                            zD = false;
                        } else {
                            zzfd.zzd zzdVar7 = zzfd.d;
                            if (zzdVar7.g(j2, zzcgVar) != zzdVar7.g(j2, zzcgVar2)) {
                                zD = false;
                            }
                        }
                        break;
                    case 7:
                        if (!z(zzcgVar, zzcgVar2, i2)) {
                            zD = false;
                        } else {
                            zzfd.zzd zzdVar8 = zzfd.d;
                            if (zzdVar8.i(j2, zzcgVar) != zzdVar8.i(j2, zzcgVar2)) {
                                zD = false;
                            }
                        }
                        break;
                    case 8:
                        if (!z(zzcgVar, zzcgVar2, i2) || !zzeh.d(zzfd.k(j2, zzcgVar), zzfd.k(j2, zzcgVar2))) {
                            zD = false;
                        }
                        break;
                    case 9:
                        if (!z(zzcgVar, zzcgVar2, i2) || !zzeh.d(zzfd.k(j2, zzcgVar), zzfd.k(j2, zzcgVar2))) {
                            zD = false;
                        }
                        break;
                    case 10:
                        if (!z(zzcgVar, zzcgVar2, i2) || !zzeh.d(zzfd.k(j2, zzcgVar), zzfd.k(j2, zzcgVar2))) {
                            zD = false;
                        }
                        break;
                    case 11:
                        if (!z(zzcgVar, zzcgVar2, i2)) {
                            zD = false;
                        } else {
                            zzfd.zzd zzdVar9 = zzfd.d;
                            if (zzdVar9.g(j2, zzcgVar) != zzdVar9.g(j2, zzcgVar2)) {
                                zD = false;
                            }
                        }
                        break;
                    case 12:
                        if (!z(zzcgVar, zzcgVar2, i2)) {
                            zD = false;
                        } else {
                            zzfd.zzd zzdVar10 = zzfd.d;
                            if (zzdVar10.g(j2, zzcgVar) != zzdVar10.g(j2, zzcgVar2)) {
                                zD = false;
                            }
                        }
                        break;
                    case 13:
                        if (!z(zzcgVar, zzcgVar2, i2)) {
                            zD = false;
                        } else {
                            zzfd.zzd zzdVar11 = zzfd.d;
                            if (zzdVar11.g(j2, zzcgVar) != zzdVar11.g(j2, zzcgVar2)) {
                                zD = false;
                            }
                        }
                        break;
                    case 14:
                        if (!z(zzcgVar, zzcgVar2, i2)) {
                            zD = false;
                        } else {
                            zzfd.zzd zzdVar12 = zzfd.d;
                            if (zzdVar12.h(j2, zzcgVar) != zzdVar12.h(j2, zzcgVar2)) {
                                zD = false;
                            }
                        }
                        break;
                    case 15:
                        if (!z(zzcgVar, zzcgVar2, i2)) {
                            zD = false;
                        } else {
                            zzfd.zzd zzdVar13 = zzfd.d;
                            if (zzdVar13.g(j2, zzcgVar) != zzdVar13.g(j2, zzcgVar2)) {
                                zD = false;
                            }
                        }
                        break;
                    case 16:
                        if (!z(zzcgVar, zzcgVar2, i2)) {
                            zD = false;
                        } else {
                            zzfd.zzd zzdVar14 = zzfd.d;
                            if (zzdVar14.h(j2, zzcgVar) != zzdVar14.h(j2, zzcgVar2)) {
                                zD = false;
                            }
                        }
                        break;
                    case 17:
                        if (!z(zzcgVar, zzcgVar2, i2) || !zzeh.d(zzfd.k(j2, zzcgVar), zzfd.k(j2, zzcgVar2))) {
                            zD = false;
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
                    case 50:
                        zD = zzeh.d(zzfd.k(j2, zzcgVar), zzfd.k(j2, zzcgVar2));
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
                        zzfd.zzd zzdVar15 = zzfd.d;
                        if (zzdVar15.g(j3, zzcgVar) != zzdVar15.g(j3, zzcgVar2) || !zzeh.d(zzfd.k(j2, zzcgVar), zzfd.k(j2, zzcgVar2))) {
                            zD = false;
                        }
                        break;
                }
                if (zD) {
                    i2 += 4;
                }
            } else {
                zzez zzezVar = (zzez) this.n;
                zzezVar.getClass();
                zzey zzeyVar = zzcgVar.zzjp;
                zzezVar.getClass();
                if (zzeyVar.equals(zzcgVar2.zzjp)) {
                    if (!this.g) {
                        return true;
                    }
                    zzbv zzbvVar = (zzbv) this.o;
                    zzbvVar.getClass();
                    zzby<Object> zzbyVar = ((zzcg.zzd) zzcgVar).zzjv;
                    zzbvVar.getClass();
                    return zzbyVar.equals(((zzcg.zzd) zzcgVar2).zzjv);
                }
            }
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:14:0x003c  */
    /* JADX WARN: Code duplicated, block: B:18:0x004d  */
    /* JADX WARN: Code duplicated, block: B:34:0x0078  */
    /* JADX WARN: Code duplicated, block: B:45:0x00af A[PHI: r3
      0x00af: PHI (r3v17 int) = (r3v5 int), (r3v18 int) binds: [B:81:0x015f, B:44:0x00ad] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:9:0x0028  */
    @Override // com.google.android.gms.internal.clearcut.zzef
    public final int d(zzcg zzcgVar) {
        int i2;
        long jDoubleToLongBits;
        int iFloatToIntBits;
        int i3;
        int i4;
        int iG;
        long jDoubleToLongBits2;
        Object objK;
        int[] iArr = this.f29690a;
        int length = iArr.length;
        int i5 = 0;
        for (int i6 = 0; i6 < length; i6 += 4) {
            int iV = v(i6);
            int i7 = iArr[i6];
            long j2 = 1048575 & iV;
            int i8 = 1237;
            int iHashCode = 37;
            switch ((iV & 267386880) >>> 20) {
                case 0:
                    i2 = i5 * 53;
                    jDoubleToLongBits = Double.doubleToLongBits(zzfd.d.k(j2, zzcgVar));
                    iFloatToIntBits = zzci.b(jDoubleToLongBits);
                    i5 = iFloatToIntBits + i2;
                    break;
                case 1:
                    i2 = i5 * 53;
                    iFloatToIntBits = Float.floatToIntBits(zzfd.d.j(j2, zzcgVar));
                    i5 = iFloatToIntBits + i2;
                    break;
                case 2:
                case 3:
                case 5:
                case 14:
                case 16:
                    i2 = i5 * 53;
                    jDoubleToLongBits = zzfd.d.h(j2, zzcgVar);
                    iFloatToIntBits = zzci.b(jDoubleToLongBits);
                    i5 = iFloatToIntBits + i2;
                    break;
                case 4:
                case 6:
                case 11:
                case 12:
                case 13:
                case 15:
                    i4 = i5 * 53;
                    iG = zzfd.d.g(j2, zzcgVar);
                    i5 = i4 + iG;
                    break;
                case 7:
                    i3 = i5 * 53;
                    boolean zI = zzfd.d.i(j2, zzcgVar);
                    Charset charset = zzci.f29677a;
                    if (zI) {
                        i8 = 1231;
                    }
                    i5 = i8 + i3;
                    break;
                case 8:
                    i2 = i5 * 53;
                    iFloatToIntBits = ((String) zzfd.k(j2, zzcgVar)).hashCode();
                    i5 = iFloatToIntBits + i2;
                    break;
                case 9:
                    Object objK2 = zzfd.k(j2, zzcgVar);
                    if (objK2 != null) {
                        iHashCode = objK2.hashCode();
                    }
                    i5 = (i5 * 53) + iHashCode;
                    break;
                case 10:
                    i2 = i5 * 53;
                    iFloatToIntBits = zzfd.k(j2, zzcgVar).hashCode();
                    i5 = iFloatToIntBits + i2;
                    break;
                case 17:
                    Object objK3 = zzfd.k(j2, zzcgVar);
                    if (objK3 != null) {
                        iHashCode = objK3.hashCode();
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
                case 50:
                    i2 = i5 * 53;
                    objK = zzfd.k(j2, zzcgVar);
                    iFloatToIntBits = objK.hashCode();
                    i5 = iFloatToIntBits + i2;
                    break;
                case EACTags.TRANSACTION_DATE /* 51 */:
                    if (q(i7, i6, zzcgVar)) {
                        i2 = i5 * 53;
                        jDoubleToLongBits2 = Double.doubleToLongBits(((Double) zzfd.k(j2, zzcgVar)).doubleValue());
                        iFloatToIntBits = zzci.b(jDoubleToLongBits2);
                        i5 = iFloatToIntBits + i2;
                    }
                    break;
                case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                    if (q(i7, i6, zzcgVar)) {
                        i2 = i5 * 53;
                        iFloatToIntBits = Float.floatToIntBits(((Float) zzfd.k(j2, zzcgVar)).floatValue());
                        i5 = iFloatToIntBits + i2;
                    }
                    break;
                case EACTags.SEX /* 53 */:
                    if (q(i7, i6, zzcgVar)) {
                        i2 = i5 * 53;
                        jDoubleToLongBits2 = B(j2, zzcgVar);
                        iFloatToIntBits = zzci.b(jDoubleToLongBits2);
                        i5 = iFloatToIntBits + i2;
                    }
                    break;
                case EACTags.CURRENCY_EXPONENT /* 54 */:
                    if (q(i7, i6, zzcgVar)) {
                        i2 = i5 * 53;
                        jDoubleToLongBits2 = B(j2, zzcgVar);
                        iFloatToIntBits = zzci.b(jDoubleToLongBits2);
                        i5 = iFloatToIntBits + i2;
                    }
                    break;
                case 55:
                    if (q(i7, i6, zzcgVar)) {
                        i4 = i5 * 53;
                        iG = A(j2, zzcgVar);
                        i5 = i4 + iG;
                    }
                    break;
                case 56:
                    if (q(i7, i6, zzcgVar)) {
                        i2 = i5 * 53;
                        jDoubleToLongBits2 = B(j2, zzcgVar);
                        iFloatToIntBits = zzci.b(jDoubleToLongBits2);
                        i5 = iFloatToIntBits + i2;
                    }
                    break;
                case 57:
                    if (q(i7, i6, zzcgVar)) {
                        i4 = i5 * 53;
                        iG = A(j2, zzcgVar);
                        i5 = i4 + iG;
                    }
                    break;
                case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
                    if (q(i7, i6, zzcgVar)) {
                        i3 = i5 * 53;
                        boolean zBooleanValue = ((Boolean) zzfd.k(j2, zzcgVar)).booleanValue();
                        Charset charset2 = zzci.f29677a;
                        if (zBooleanValue) {
                            i8 = 1231;
                        }
                        i5 = i8 + i3;
                    }
                    break;
                case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                    if (q(i7, i6, zzcgVar)) {
                        i2 = i5 * 53;
                        iFloatToIntBits = ((String) zzfd.k(j2, zzcgVar)).hashCode();
                        i5 = iFloatToIntBits + i2;
                    }
                    break;
                case 60:
                    if (q(i7, i6, zzcgVar)) {
                        objK = zzfd.k(j2, zzcgVar);
                        i2 = i5 * 53;
                        iFloatToIntBits = objK.hashCode();
                        i5 = iFloatToIntBits + i2;
                    }
                    break;
                case 61:
                    if (q(i7, i6, zzcgVar)) {
                        i2 = i5 * 53;
                        objK = zzfd.k(j2, zzcgVar);
                        iFloatToIntBits = objK.hashCode();
                        i5 = iFloatToIntBits + i2;
                    }
                    break;
                case 62:
                    if (q(i7, i6, zzcgVar)) {
                        i4 = i5 * 53;
                        iG = A(j2, zzcgVar);
                        i5 = i4 + iG;
                    }
                    break;
                case 63:
                    if (q(i7, i6, zzcgVar)) {
                        i4 = i5 * 53;
                        iG = A(j2, zzcgVar);
                        i5 = i4 + iG;
                    }
                    break;
                case 64:
                    if (q(i7, i6, zzcgVar)) {
                        i4 = i5 * 53;
                        iG = A(j2, zzcgVar);
                        i5 = i4 + iG;
                    }
                    break;
                case EACTags.ELEMENT_LIST /* 65 */:
                    if (q(i7, i6, zzcgVar)) {
                        i2 = i5 * 53;
                        jDoubleToLongBits2 = B(j2, zzcgVar);
                        iFloatToIntBits = zzci.b(jDoubleToLongBits2);
                        i5 = iFloatToIntBits + i2;
                    }
                    break;
                case EACTags.ADDRESS /* 66 */:
                    if (q(i7, i6, zzcgVar)) {
                        i4 = i5 * 53;
                        iG = A(j2, zzcgVar);
                        i5 = i4 + iG;
                    }
                    break;
                case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                    if (q(i7, i6, zzcgVar)) {
                        i2 = i5 * 53;
                        jDoubleToLongBits2 = B(j2, zzcgVar);
                        iFloatToIntBits = zzci.b(jDoubleToLongBits2);
                        i5 = iFloatToIntBits + i2;
                    }
                    break;
                case EACTags.APPLICATION_IMAGE /* 68 */:
                    if (q(i7, i6, zzcgVar)) {
                        objK = zzfd.k(j2, zzcgVar);
                        i2 = i5 * 53;
                        iFloatToIntBits = objK.hashCode();
                        i5 = iFloatToIntBits + i2;
                    }
                    break;
            }
        }
        ((zzez) this.n).getClass();
        int iHashCode2 = zzcgVar.zzjp.hashCode() + (i5 * 53);
        if (!this.g) {
            return iHashCode2;
        }
        ((zzbv) this.o).getClass();
        return (iHashCode2 * 53) + ((zzcg.zzd) zzcgVar).zzjv.f29666a.hashCode();
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0065  */
    /* JADX WARN: Code duplicated, block: B:61:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:62:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:64:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:65:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:67:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:82:0x0129 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:87:0x0109 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:88:0x0109 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v29 */
    /* JADX WARN: Type inference failed for: r2v30 */
    /* JADX WARN: Type inference failed for: r2v31 */
    /* JADX WARN: Type inference failed for: r2v34 */
    /* JADX WARN: Type inference failed for: r2v35 */
    /* JADX WARN: Type inference failed for: r2v9 */
    @Override // com.google.android.gms.internal.clearcut.zzef
    public final boolean e(Object obj) {
        int i2;
        int i3;
        ?? r2;
        boolean zR;
        ?? r3;
        boolean zR2;
        int i4 = 1;
        int[] iArr = this.f29696i;
        if (iArr == null || iArr.length == 0) {
            return true;
        }
        int length = iArr.length;
        int i5 = -1;
        int i6 = 0;
        int i7 = 0;
        while (i6 < length) {
            int i8 = iArr[i6];
            int iW = w(i8);
            int iV = v(iW);
            boolean z = this.f29695h;
            if (z) {
                i2 = 0;
            } else {
                int i9 = this.f29690a[iW + 2];
                int i10 = i9 & 1048575;
                i2 = i4 << (i9 >>> 20);
                if (i10 != i5) {
                    i7 = q.getInt(obj, i10);
                    i5 = i10;
                }
            }
            if ((268435456 & iV) == 0) {
                r3 = i4;
                r3 = zR2;
                i3 = (267386880 & iV) >>> 20;
                if (i3 != 9 || i3 == 17) {
                    if (z) {
                        zR = r(iW, obj);
                    } else if ((i7 & i2) != 0) {
                        r2 = 0;
                    }
                    if (r2 != 0) {
                        r2 = i4;
                        if (s(iW).e(zzfd.k(iV & 1048575, obj))) {
                            r2 = zR;
                        } else {
                            r2 = zR;
                        }
                    } else {
                        r2 = i4;
                        r2 = zR;
                        continue;
                    }
                    i6++;
                    i4 = i4;
                    iArr = iArr;
                } else {
                    if (i3 != 27) {
                        if (i3 == 60 || i3 == 68) {
                            if (!q(i8, iW, obj) || s(iW).e(zzfd.k(iV & 1048575, obj))) {
                            }
                        } else if (i3 != 49) {
                            if (i3 != 50) {
                                continue;
                            } else {
                                Object objK = zzfd.k(iV & 1048575, obj);
                                zzdj zzdjVar = this.p;
                                if (!zzdjVar.K(objK).isEmpty()) {
                                    t(iW);
                                    zzdjVar.J();
                                    throw null;
                                }
                            }
                        }
                        i6++;
                        i4 = i4;
                        iArr = iArr;
                    }
                    List list = (List) zzfd.k(iV & 1048575, obj);
                    if (list.isEmpty()) {
                        continue;
                    } else {
                        zzef zzefVarS = s(iW);
                        for (int i11 = 0; i11 < list.size(); i11++) {
                            if (zzefVarS.e(list.get(i11))) {
                            }
                        }
                    }
                    i6++;
                    i4 = i4;
                    iArr = iArr;
                }
            } else {
                if (z) {
                    zR2 = r(iW, obj);
                } else if ((i7 & i2) == 0) {
                    r3 = 0;
                }
                if (r3 == 0) {
                    r3 = i4;
                    r3 = zR2;
                } else {
                    r3 = i4;
                    r3 = zR2;
                    i3 = (267386880 & iV) >>> 20;
                    if (i3 != 9) {
                    }
                    if (z) {
                        zR = r(iW, obj);
                    } else if ((i7 & i2) != 0) {
                        r2 = 0;
                    }
                    if (r2 != 0) {
                        r2 = i4;
                        if (s(iW).e(zzfd.k(iV & 1048575, obj))) {
                            r2 = zR;
                        } else {
                            r2 = zR;
                        }
                    } else {
                        r2 = i4;
                        r2 = zR;
                        continue;
                    }
                    i6++;
                    i4 = i4;
                    iArr = iArr;
                }
            }
            return false;
        }
        ?? r16 = i4;
        if (!this.g) {
            return r16;
        }
        ((zzbv) this.o).getClass();
        if (((zzcg.zzd) obj).zzjv.a()) {
            return r16;
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:26:0x0087 A[PHI: r8
      0x0087: PHI (r8v19 com.google.android.gms.internal.clearcut.zzcg) = 
      (r8v6 com.google.android.gms.internal.clearcut.zzcg)
      (r8v8 com.google.android.gms.internal.clearcut.zzcg)
      (r8v14 com.google.android.gms.internal.clearcut.zzcg)
      (r8v15 com.google.android.gms.internal.clearcut.zzcg)
      (r8v16 com.google.android.gms.internal.clearcut.zzcg)
      (r8v20 com.google.android.gms.internal.clearcut.zzcg)
     binds: [B:56:0x00fa, B:50:0x00ea, B:37:0x00b4, B:34:0x00ac, B:31:0x00a4, B:25:0x0085] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:29:0x0098 A[PHI: r8
      0x0098: PHI (r8v17 com.google.android.gms.internal.clearcut.zzcg) = 
      (r8v4 com.google.android.gms.internal.clearcut.zzcg)
      (r8v5 com.google.android.gms.internal.clearcut.zzcg)
      (r8v7 com.google.android.gms.internal.clearcut.zzcg)
      (r8v18 com.google.android.gms.internal.clearcut.zzcg)
     binds: [B:62:0x010a, B:59:0x0102, B:53:0x00f2, B:28:0x0096] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:41:0x00be A[PHI: r8
      0x00be: PHI (r8v12 com.google.android.gms.internal.clearcut.zzcg) = (r8v10 com.google.android.gms.internal.clearcut.zzcg), (r8v13 com.google.android.gms.internal.clearcut.zzcg) binds: [B:44:0x00d1, B:40:0x00bc] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:7:0x001d  */
    @Override // com.google.android.gms.internal.clearcut.zzef
    public final void f(zzcg zzcgVar, zzcg zzcgVar2) {
        zzcg zzcgVar3;
        zzfd.zzd zzdVar;
        long jH;
        int i2;
        zzcgVar2.getClass();
        int i3 = 0;
        while (true) {
            int[] iArr = this.f29690a;
            if (i3 >= iArr.length) {
                zzcg zzcgVar4 = zzcgVar;
                if (this.f29695h) {
                    return;
                }
                zzeh.b(this.n, zzcgVar4, zzcgVar2);
                if (this.g) {
                    zzeh.a(this.o, zzcgVar4, zzcgVar2);
                    return;
                }
                return;
            }
            int iV = v(i3);
            long j2 = iV & 1048575;
            int i4 = iArr[i3];
            switch ((iV & 267386880) >>> 20) {
                case 0:
                    zzcgVar3 = zzcgVar;
                    if (r(i3, zzcgVar2)) {
                        zzfd.zzd zzdVar2 = zzfd.d;
                        zzdVar2.c(zzcgVar3, j2, zzdVar2.k(j2, zzcgVar2));
                        zzcgVar3 = zzcgVar3;
                        x(i3, zzcgVar3);
                    }
                    break;
                case 1:
                    zzcgVar3 = zzcgVar;
                    if (r(i3, zzcgVar2)) {
                        zzfd.zzd zzdVar3 = zzfd.d;
                        zzdVar3.d(zzcgVar3, j2, zzdVar3.j(j2, zzcgVar2));
                        x(i3, zzcgVar3);
                    }
                    break;
                case 2:
                    zzcgVar3 = zzcgVar;
                    if (r(i3, zzcgVar2)) {
                        zzdVar = zzfd.d;
                        jH = zzdVar.h(j2, zzcgVar2);
                        zzdVar.b(j2, zzcgVar3, jH);
                        x(i3, zzcgVar3);
                    }
                    break;
                case 3:
                    zzcgVar3 = zzcgVar;
                    if (r(i3, zzcgVar2)) {
                        zzdVar = zzfd.d;
                        jH = zzdVar.h(j2, zzcgVar2);
                        zzdVar.b(j2, zzcgVar3, jH);
                        x(i3, zzcgVar3);
                    }
                    break;
                case 4:
                    zzcgVar3 = zzcgVar;
                    if (r(i3, zzcgVar2)) {
                        zzfd.d(zzcgVar3, j2, zzfd.d.g(j2, zzcgVar2));
                        x(i3, zzcgVar3);
                    }
                    break;
                case 5:
                    zzcgVar3 = zzcgVar;
                    if (r(i3, zzcgVar2)) {
                        zzdVar = zzfd.d;
                        jH = zzdVar.h(j2, zzcgVar2);
                        zzdVar.b(j2, zzcgVar3, jH);
                        x(i3, zzcgVar3);
                    }
                    break;
                case 6:
                    zzcgVar3 = zzcgVar;
                    if (r(i3, zzcgVar2)) {
                        zzfd.d(zzcgVar3, j2, zzfd.d.g(j2, zzcgVar2));
                        x(i3, zzcgVar3);
                    }
                    break;
                case 7:
                    zzcgVar3 = zzcgVar;
                    if (r(i3, zzcgVar2)) {
                        zzfd.zzd zzdVar4 = zzfd.d;
                        zzdVar4.f(zzcgVar3, j2, zzdVar4.i(j2, zzcgVar2));
                        x(i3, zzcgVar3);
                    }
                    break;
                case 8:
                    zzcgVar3 = zzcgVar;
                    if (r(i3, zzcgVar2)) {
                        zzfd.b(j2, zzcgVar3, zzfd.k(j2, zzcgVar2));
                        x(i3, zzcgVar3);
                    }
                    break;
                case 9:
                    zzcgVar3 = zzcgVar;
                    o(zzcgVar3, zzcgVar2, i3);
                    break;
                case 10:
                    zzcgVar3 = zzcgVar;
                    if (r(i3, zzcgVar2)) {
                        zzfd.b(j2, zzcgVar3, zzfd.k(j2, zzcgVar2));
                        x(i3, zzcgVar3);
                    }
                    break;
                case 11:
                    zzcgVar3 = zzcgVar;
                    if (r(i3, zzcgVar2)) {
                        zzfd.d(zzcgVar3, j2, zzfd.d.g(j2, zzcgVar2));
                        x(i3, zzcgVar3);
                    }
                    break;
                case 12:
                    zzcgVar3 = zzcgVar;
                    if (r(i3, zzcgVar2)) {
                        zzfd.d(zzcgVar3, j2, zzfd.d.g(j2, zzcgVar2));
                        x(i3, zzcgVar3);
                    }
                    break;
                case 13:
                    zzcgVar3 = zzcgVar;
                    if (r(i3, zzcgVar2)) {
                        zzfd.d(zzcgVar3, j2, zzfd.d.g(j2, zzcgVar2));
                        x(i3, zzcgVar3);
                    }
                    break;
                case 14:
                    zzcgVar3 = zzcgVar;
                    if (r(i3, zzcgVar2)) {
                        zzdVar = zzfd.d;
                        jH = zzdVar.h(j2, zzcgVar2);
                        zzdVar.b(j2, zzcgVar3, jH);
                        x(i3, zzcgVar3);
                    }
                    break;
                case 15:
                    zzcgVar3 = zzcgVar;
                    if (r(i3, zzcgVar2)) {
                        zzfd.d(zzcgVar3, j2, zzfd.d.g(j2, zzcgVar2));
                        x(i3, zzcgVar3);
                    }
                    break;
                case 16:
                    if (!r(i3, zzcgVar2)) {
                        zzcgVar3 = zzcgVar;
                    } else {
                        zzdVar = zzfd.d;
                        jH = zzdVar.h(j2, zzcgVar2);
                        zzcgVar3 = zzcgVar;
                        zzdVar.b(j2, zzcgVar3, jH);
                        x(i3, zzcgVar3);
                    }
                    break;
                case 17:
                    o(zzcgVar, zzcgVar2, i3);
                    zzcgVar3 = zzcgVar;
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
                    this.m.b(j2, zzcgVar, zzcgVar2);
                    zzcgVar3 = zzcgVar;
                    break;
                case 50:
                    Class cls = zzeh.f29721a;
                    zzfd.b(j2, zzcgVar, this.p.O(zzfd.k(j2, zzcgVar), zzfd.k(j2, zzcgVar2)));
                    zzcgVar3 = zzcgVar;
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
                    if (q(i4, i3, zzcgVar2)) {
                        zzfd.b(j2, zzcgVar, zzfd.k(j2, zzcgVar2));
                        i2 = iArr[i3 + 2];
                        zzfd.d(zzcgVar, i2 & 1048575, i4);
                    }
                    zzcgVar3 = zzcgVar;
                    break;
                case 60:
                case EACTags.APPLICATION_IMAGE /* 68 */:
                    y(zzcgVar, zzcgVar2, i3);
                    zzcgVar3 = zzcgVar;
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case EACTags.ELEMENT_LIST /* 65 */:
                case EACTags.ADDRESS /* 66 */:
                case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                    if (q(i4, i3, zzcgVar2)) {
                        zzfd.b(j2, zzcgVar, zzfd.k(j2, zzcgVar2));
                        i2 = iArr[i3 + 2];
                        zzfd.d(zzcgVar, i2 & 1048575, i4);
                    }
                    zzcgVar3 = zzcgVar;
                    break;
                default:
                    zzcgVar3 = zzcgVar;
                    break;
            }
            i3 += 4;
            zzcgVar = zzcgVar3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:107:0x0229  */
    /* JADX WARN: Code duplicated, block: B:94:0x01dd A[PHI: r6
      0x01dd: PHI (r6v4 int) = (r6v2 int), (r6v5 int) binds: [B:102:0x021a, B:92:0x01d8] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Failed to find 'out' block for switch in B:14:0x0041. Please report as an issue. */
    @Override // com.google.android.gms.internal.clearcut.zzef
    public final void g(Object obj, byte[] bArr, int i2, int i3, zzay zzayVar) throws zzco {
        Unsafe unsafe;
        int i4;
        int i5;
        zzcg zzcgVar;
        zzey zzeyVarB;
        int iK;
        Unsafe unsafe2;
        Object obj2;
        Object objA;
        int i6;
        int i7;
        zzds<T> zzdsVar = this;
        byte[] bArr2 = bArr;
        int i8 = i3;
        zzay zzayVar2 = zzayVar;
        if (!zzdsVar.f29695h) {
            m(obj, bArr, i2, i8, 0, zzayVar);
            return;
        }
        Unsafe unsafe3 = q;
        int iB = i2;
        while (iB < i8) {
            int iC = iB + 1;
            int i9 = bArr2[iB];
            if (i9 < 0) {
                iC = zzax.c(i9, bArr2, iC, zzayVar2);
                i9 = zzayVar2.f29651a;
            }
            int i10 = i9;
            int i11 = iC;
            int i12 = (i10 == true ? 1 : 0) >>> 3;
            int i13 = (i10 == true ? 1 : 0) & 7;
            int iW = zzdsVar.w(i12);
            if (iW >= 0) {
                int i14 = zzdsVar.f29690a[iW + 1];
                int i15 = (267386880 & i14) >>> 20;
                long j2 = 1048575 & i14;
                if (i15 <= 17) {
                    switch (i15) {
                        case 0:
                            unsafe = unsafe3;
                            if (i13 == 1) {
                                zzfd.d.c(obj, j2, Double.longBitsToDouble(zzax.h(i11, bArr2)));
                                iB = i11 + 8;
                            } else {
                                i4 = i11;
                                i5 = i4;
                                zzcgVar = (zzcg) obj;
                                zzeyVarB = zzcgVar.zzjp;
                                if (zzeyVarB == zzey.f29737e) {
                                    zzeyVarB = zzey.b();
                                    zzcgVar.zzjp = zzeyVarB;
                                }
                                iB = zzax.b(i10 == true ? 1 : 0, bArr, i5, i3, zzeyVarB, zzayVar);
                                zzdsVar = this;
                                bArr2 = bArr;
                                zzayVar2 = zzayVar;
                                i8 = i3;
                            }
                            unsafe3 = unsafe;
                            break;
                        case 1:
                            unsafe = unsafe3;
                            if (i13 == 5) {
                                zzfd.d.d(obj, j2, Float.intBitsToFloat(zzax.f(i11, bArr2)));
                                iB = i11 + 4;
                            } else {
                                i4 = i11;
                                i5 = i4;
                                zzcgVar = (zzcg) obj;
                                zzeyVarB = zzcgVar.zzjp;
                                if (zzeyVarB == zzey.f29737e) {
                                    zzeyVarB = zzey.b();
                                    zzcgVar.zzjp = zzeyVarB;
                                }
                                iB = zzax.b(i10 == true ? 1 : 0, bArr, i5, i3, zzeyVarB, zzayVar);
                                zzdsVar = this;
                                bArr2 = bArr;
                                zzayVar2 = zzayVar;
                                i8 = i3;
                            }
                            unsafe3 = unsafe;
                            break;
                        case 2:
                        case 3:
                            Unsafe unsafe4 = unsafe3;
                            if (i13 == 0) {
                                int iE = zzax.e(bArr2, i11, zzayVar2);
                                unsafe4.putLong(obj, j2, zzayVar2.f29652b);
                                unsafe = unsafe4;
                                iB = iE;
                            } else {
                                unsafe = unsafe4;
                                i4 = i11;
                                i5 = i4;
                                zzcgVar = (zzcg) obj;
                                zzeyVarB = zzcgVar.zzjp;
                                if (zzeyVarB == zzey.f29737e) {
                                    zzeyVarB = zzey.b();
                                    zzcgVar.zzjp = zzeyVarB;
                                }
                                iB = zzax.b(i10 == true ? 1 : 0, bArr, i5, i3, zzeyVarB, zzayVar);
                                zzdsVar = this;
                                bArr2 = bArr;
                                zzayVar2 = zzayVar;
                                i8 = i3;
                            }
                            unsafe3 = unsafe;
                            break;
                        case 4:
                        case 11:
                            unsafe2 = unsafe3;
                            if (i13 != 0) {
                                i4 = i11;
                                unsafe = unsafe2;
                                i5 = i4;
                                zzcgVar = (zzcg) obj;
                                zzeyVarB = zzcgVar.zzjp;
                                if (zzeyVarB == zzey.f29737e) {
                                    zzeyVarB = zzey.b();
                                    zzcgVar.zzjp = zzeyVarB;
                                }
                                iB = zzax.b(i10 == true ? 1 : 0, bArr, i5, i3, zzeyVarB, zzayVar);
                                zzdsVar = this;
                                bArr2 = bArr;
                                zzayVar2 = zzayVar;
                                i8 = i3;
                                unsafe3 = unsafe;
                            } else {
                                iB = zzax.d(bArr2, i11, zzayVar2);
                                unsafe2.putInt(obj, j2, zzayVar2.f29651a);
                                unsafe3 = unsafe2;
                            }
                            break;
                        case 5:
                        case 14:
                            unsafe2 = unsafe3;
                            if (i13 != 1) {
                                i4 = i11;
                                unsafe = unsafe2;
                                i5 = i4;
                                zzcgVar = (zzcg) obj;
                                zzeyVarB = zzcgVar.zzjp;
                                if (zzeyVarB == zzey.f29737e) {
                                    zzeyVarB = zzey.b();
                                    zzcgVar.zzjp = zzeyVarB;
                                }
                                iB = zzax.b(i10 == true ? 1 : 0, bArr, i5, i3, zzeyVarB, zzayVar);
                                zzdsVar = this;
                                bArr2 = bArr;
                                zzayVar2 = zzayVar;
                                i8 = i3;
                                unsafe3 = unsafe;
                            } else {
                                unsafe2.putLong(obj, j2, zzax.h(i11, bArr2));
                                iB = i11 + 8;
                                unsafe3 = unsafe2;
                            }
                            break;
                        case 6:
                        case 13:
                            unsafe2 = unsafe3;
                            if (i13 != 5) {
                                i4 = i11;
                                unsafe = unsafe2;
                                i5 = i4;
                                zzcgVar = (zzcg) obj;
                                zzeyVarB = zzcgVar.zzjp;
                                if (zzeyVarB == zzey.f29737e) {
                                    zzeyVarB = zzey.b();
                                    zzcgVar.zzjp = zzeyVarB;
                                }
                                iB = zzax.b(i10 == true ? 1 : 0, bArr, i5, i3, zzeyVarB, zzayVar);
                                zzdsVar = this;
                                bArr2 = bArr;
                                zzayVar2 = zzayVar;
                                i8 = i3;
                                unsafe3 = unsafe;
                            } else {
                                unsafe2.putInt(obj, j2, zzax.f(i11, bArr2));
                                iB = i11 + 4;
                                unsafe3 = unsafe2;
                            }
                            break;
                        case 7:
                            unsafe2 = unsafe3;
                            if (i13 != 0) {
                                i4 = i11;
                                unsafe = unsafe2;
                                i5 = i4;
                                zzcgVar = (zzcg) obj;
                                zzeyVarB = zzcgVar.zzjp;
                                if (zzeyVarB == zzey.f29737e) {
                                    zzeyVarB = zzey.b();
                                    zzcgVar.zzjp = zzeyVarB;
                                }
                                iB = zzax.b(i10 == true ? 1 : 0, bArr, i5, i3, zzeyVarB, zzayVar);
                                zzdsVar = this;
                                bArr2 = bArr;
                                zzayVar2 = zzayVar;
                                i8 = i3;
                                unsafe3 = unsafe;
                            } else {
                                iB = zzax.e(bArr2, i11, zzayVar2);
                                zzfd.d.f(obj, j2, zzayVar2.f29652b != 0);
                                unsafe3 = unsafe2;
                            }
                            break;
                        case 8:
                            unsafe2 = unsafe3;
                            obj2 = obj;
                            if (i13 != 2) {
                                i4 = i11;
                                unsafe = unsafe2;
                                i5 = i4;
                                zzcgVar = (zzcg) obj;
                                zzeyVarB = zzcgVar.zzjp;
                                if (zzeyVarB == zzey.f29737e) {
                                    zzeyVarB = zzey.b();
                                    zzcgVar.zzjp = zzeyVarB;
                                }
                                iB = zzax.b(i10 == true ? 1 : 0, bArr, i5, i3, zzeyVarB, zzayVar);
                                zzdsVar = this;
                                bArr2 = bArr;
                                zzayVar2 = zzayVar;
                                i8 = i3;
                                unsafe3 = unsafe;
                            } else {
                                if ((536870912 & i14) == 0) {
                                    iB = zzax.d(bArr2, i11, zzayVar2);
                                    int i16 = zzayVar2.f29651a;
                                    if (i16 == 0) {
                                        zzayVar2.f29653c = "";
                                    } else {
                                        zzayVar2.f29653c = new String(bArr2, iB, i16, zzci.f29677a);
                                        iB += i16;
                                    }
                                } else {
                                    iB = zzax.g(bArr2, i11, zzayVar2);
                                }
                                objA = zzayVar2.f29653c;
                                unsafe2.putObject(obj2, j2, objA);
                                unsafe3 = unsafe2;
                            }
                            break;
                        case 9:
                            unsafe2 = unsafe3;
                            obj2 = obj;
                            if (i13 != 2) {
                                i4 = i11;
                                unsafe = unsafe2;
                                i5 = i4;
                                zzcgVar = (zzcg) obj;
                                zzeyVarB = zzcgVar.zzjp;
                                if (zzeyVarB == zzey.f29737e) {
                                    zzeyVarB = zzey.b();
                                    zzcgVar.zzjp = zzeyVarB;
                                }
                                iB = zzax.b(i10 == true ? 1 : 0, bArr, i5, i3, zzeyVarB, zzayVar);
                                zzdsVar = this;
                                bArr2 = bArr;
                                zzayVar2 = zzayVar;
                                i8 = i3;
                                unsafe3 = unsafe;
                            } else {
                                iB = j(zzdsVar.s(iW), bArr2, i11, i8, zzayVar2);
                                Object object = unsafe2.getObject(obj2, j2);
                                Object obj3 = zzayVar2.f29653c;
                                if (object == null) {
                                    unsafe2.putObject(obj2, j2, obj3);
                                } else {
                                    objA = zzci.a(object, obj3);
                                    unsafe2.putObject(obj2, j2, objA);
                                }
                                unsafe3 = unsafe2;
                            }
                            break;
                        case 10:
                            unsafe2 = unsafe3;
                            obj2 = obj;
                            if (i13 != 2) {
                                i4 = i11;
                                unsafe = unsafe2;
                                i5 = i4;
                                zzcgVar = (zzcg) obj;
                                zzeyVarB = zzcgVar.zzjp;
                                if (zzeyVarB == zzey.f29737e) {
                                    zzeyVarB = zzey.b();
                                    zzcgVar.zzjp = zzeyVarB;
                                }
                                iB = zzax.b(i10 == true ? 1 : 0, bArr, i5, i3, zzeyVarB, zzayVar);
                                zzdsVar = this;
                                bArr2 = bArr;
                                zzayVar2 = zzayVar;
                                i8 = i3;
                                unsafe3 = unsafe;
                            } else {
                                iB = zzax.i(bArr2, i11, zzayVar2);
                                objA = zzayVar2.f29653c;
                                unsafe2.putObject(obj2, j2, objA);
                                unsafe3 = unsafe2;
                            }
                            break;
                        case 12:
                            unsafe2 = unsafe3;
                            if (i13 != 0) {
                                i4 = i11;
                                unsafe = unsafe2;
                                i5 = i4;
                                zzcgVar = (zzcg) obj;
                                zzeyVarB = zzcgVar.zzjp;
                                if (zzeyVarB == zzey.f29737e) {
                                    zzeyVarB = zzey.b();
                                    zzcgVar.zzjp = zzeyVarB;
                                }
                                iB = zzax.b(i10 == true ? 1 : 0, bArr, i5, i3, zzeyVarB, zzayVar);
                                zzdsVar = this;
                                bArr2 = bArr;
                                zzayVar2 = zzayVar;
                                i8 = i3;
                                unsafe3 = unsafe;
                            } else {
                                iB = zzax.d(bArr2, i11, zzayVar2);
                                i6 = zzayVar2.f29651a;
                                unsafe2.putInt(obj, j2, i6);
                                unsafe3 = unsafe2;
                            }
                            break;
                        case 15:
                            unsafe2 = unsafe3;
                            if (i13 != 0) {
                                i4 = i11;
                                unsafe = unsafe2;
                                i5 = i4;
                                zzcgVar = (zzcg) obj;
                                zzeyVarB = zzcgVar.zzjp;
                                if (zzeyVarB == zzey.f29737e) {
                                    zzeyVarB = zzey.b();
                                    zzcgVar.zzjp = zzeyVarB;
                                }
                                iB = zzax.b(i10 == true ? 1 : 0, bArr, i5, i3, zzeyVarB, zzayVar);
                                zzdsVar = this;
                                bArr2 = bArr;
                                zzayVar2 = zzayVar;
                                i8 = i3;
                                unsafe3 = unsafe;
                            } else {
                                iB = zzax.d(bArr2, i11, zzayVar2);
                                int i17 = zzayVar2.f29651a;
                                i6 = (-(i17 & 1)) ^ (i17 >>> 1);
                                unsafe2.putInt(obj, j2, i6);
                                unsafe3 = unsafe2;
                            }
                            break;
                        case 16:
                            if (i13 != 0) {
                                unsafe2 = unsafe3;
                                i4 = i11;
                                unsafe = unsafe2;
                                i5 = i4;
                                zzcgVar = (zzcg) obj;
                                zzeyVarB = zzcgVar.zzjp;
                                if (zzeyVarB == zzey.f29737e) {
                                    zzeyVarB = zzey.b();
                                    zzcgVar.zzjp = zzeyVarB;
                                }
                                iB = zzax.b(i10 == true ? 1 : 0, bArr, i5, i3, zzeyVarB, zzayVar);
                                zzdsVar = this;
                                bArr2 = bArr;
                                zzayVar2 = zzayVar;
                                i8 = i3;
                                unsafe3 = unsafe;
                            } else {
                                int iE2 = zzax.e(bArr2, i11, zzayVar2);
                                long j3 = zzayVar2.f29652b;
                                unsafe3.putLong(obj, j2, (j3 >>> 1) ^ (-(j3 & 1)));
                                unsafe2 = unsafe3;
                                iB = iE2;
                                unsafe3 = unsafe2;
                            }
                            break;
                        default:
                            break;
                    }
                } else {
                    unsafe = unsafe3;
                    if (i15 == 27) {
                        if (i13 == 2) {
                            zzcn zzcnVarV0 = (zzcn) unsafe.getObject(obj, j2);
                            if (!zzcnVarV0.o0()) {
                                int size = zzcnVarV0.size();
                                zzcnVarV0 = zzcnVarV0.v0(size == 0 ? 10 : size << 1);
                                unsafe.putObject(obj, j2, zzcnVarV0);
                            }
                            iB = h(zzdsVar.s(iW), i10 == true ? 1 : 0, bArr2, i11, i8, zzcnVarV0, zzayVar2);
                            bArr2 = bArr;
                            i8 = i3;
                            zzayVar2 = zzayVar;
                        } else {
                            i10 = i10 == true ? 1 : 0;
                            i4 = i11;
                            i5 = i4;
                            zzcgVar = (zzcg) obj;
                            zzeyVarB = zzcgVar.zzjp;
                            if (zzeyVarB == zzey.f29737e) {
                                zzeyVarB = zzey.b();
                                zzcgVar.zzjp = zzeyVarB;
                            }
                            iB = zzax.b(i10 == true ? 1 : 0, bArr, i5, i3, zzeyVarB, zzayVar);
                            zzdsVar = this;
                            bArr2 = bArr;
                            zzayVar2 = zzayVar;
                            i8 = i3;
                        }
                    } else if (i15 <= 49) {
                        iK = zzdsVar.l(obj, bArr, i11, i3, i10 == true ? 1 : 0, i12, i13, iW, i14, i15, j2, zzayVar);
                        if (iK == i11) {
                            i5 = iK;
                            i10 = i10 == true ? 1 : 0;
                            zzcgVar = (zzcg) obj;
                            zzeyVarB = zzcgVar.zzjp;
                            if (zzeyVarB == zzey.f29737e) {
                                zzeyVarB = zzey.b();
                                zzcgVar.zzjp = zzeyVarB;
                            }
                            iB = zzax.b(i10 == true ? 1 : 0, bArr, i5, i3, zzeyVarB, zzayVar);
                            zzdsVar = this;
                            bArr2 = bArr;
                            zzayVar2 = zzayVar;
                            i8 = i3;
                        } else {
                            i10 = i7;
                            zzdsVar = this;
                            bArr2 = bArr;
                            i8 = i3;
                            zzayVar2 = zzayVar;
                            iB = iK;
                        }
                    } else {
                        if (i15 != 50) {
                            i7 = i10 == true ? 1 : 0;
                            iK = k(obj, bArr, i11, i3, i10 == true ? 1 : 0, i12, i13, i14, i15, j2, iW, zzayVar);
                            if (iK == i11) {
                                i10 = i7;
                                i5 = iK;
                            } else {
                                i10 = i7;
                                zzdsVar = this;
                                bArr2 = bArr;
                                i8 = i3;
                                zzayVar2 = zzayVar;
                                iB = iK;
                            }
                        } else {
                            if (i13 == 2) {
                                p(obj, bArr, i11, i3, iW, j2, zzayVar);
                                throw null;
                            }
                            i4 = i11;
                            i10 = i10 == true ? 1 : 0;
                            i5 = i4;
                        }
                        zzcgVar = (zzcg) obj;
                        zzeyVarB = zzcgVar.zzjp;
                        if (zzeyVarB == zzey.f29737e) {
                            zzeyVarB = zzey.b();
                            zzcgVar.zzjp = zzeyVarB;
                        }
                        iB = zzax.b(i10 == true ? 1 : 0, bArr, i5, i3, zzeyVarB, zzayVar);
                        zzdsVar = this;
                        bArr2 = bArr;
                        zzayVar2 = zzayVar;
                        i8 = i3;
                    }
                    unsafe3 = unsafe;
                }
            }
            unsafe = unsafe3;
            i4 = i11;
            i5 = i4;
            zzcgVar = (zzcg) obj;
            zzeyVarB = zzcgVar.zzjp;
            if (zzeyVarB == zzey.f29737e) {
                zzeyVarB = zzey.b();
                zzcgVar.zzjp = zzeyVarB;
            }
            iB = zzax.b(i10 == true ? 1 : 0, bArr, i5, i3, zzeyVarB, zzayVar);
            zzdsVar = this;
            bArr2 = bArr;
            zzayVar2 = zzayVar;
            i8 = i3;
            unsafe3 = unsafe;
        }
        if (iB != i8) {
            throw zzco.b();
        }
    }

    public final int k(Object obj, byte[] bArr, int i2, int i3, int i4, int i5, int i6, int i7, int i8, long j2, int i9, zzay zzayVar) throws zzco {
        int i10;
        Object objValueOf;
        int i11;
        Object objValueOf2;
        int iE;
        long j3;
        int i12;
        Object objValueOf3;
        Object object;
        Unsafe unsafe = q;
        long j4 = this.f29690a[i9 + 2] & 1048575;
        switch (i8) {
            case EACTags.TRANSACTION_DATE /* 51 */:
                i10 = i2;
                if (i6 != 1) {
                    return i10;
                }
                objValueOf = Double.valueOf(Double.longBitsToDouble(zzax.h(i10, bArr)));
                unsafe.putObject(obj, j2, objValueOf);
                iE = i10 + 8;
                unsafe.putInt(obj, j4, i5);
                return iE;
            case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                i11 = i2;
                if (i6 != 5) {
                    return i11;
                }
                objValueOf2 = Float.valueOf(Float.intBitsToFloat(zzax.f(i11, bArr)));
                unsafe.putObject(obj, j2, objValueOf2);
                iE = i11 + 4;
                unsafe.putInt(obj, j4, i5);
                return iE;
            case EACTags.SEX /* 53 */:
            case EACTags.CURRENCY_EXPONENT /* 54 */:
                if (i6 != 0) {
                    return i2;
                }
                iE = zzax.e(bArr, i2, zzayVar);
                j3 = zzayVar.f29652b;
                objValueOf3 = Long.valueOf(j3);
                unsafe.putObject(obj, j2, objValueOf3);
                unsafe.putInt(obj, j4, i5);
                return iE;
            case 55:
            case 62:
                if (i6 != 0) {
                    return i2;
                }
                iE = zzax.d(bArr, i2, zzayVar);
                i12 = zzayVar.f29651a;
                objValueOf3 = Integer.valueOf(i12);
                unsafe.putObject(obj, j2, objValueOf3);
                unsafe.putInt(obj, j4, i5);
                return iE;
            case 56:
            case EACTags.ELEMENT_LIST /* 65 */:
                i10 = i2;
                if (i6 != 1) {
                    return i10;
                }
                objValueOf = Long.valueOf(zzax.h(i10, bArr));
                unsafe.putObject(obj, j2, objValueOf);
                iE = i10 + 8;
                unsafe.putInt(obj, j4, i5);
                return iE;
            case 57:
            case 64:
                i11 = i2;
                if (i6 != 5) {
                    return i11;
                }
                objValueOf2 = Integer.valueOf(zzax.f(i11, bArr));
                unsafe.putObject(obj, j2, objValueOf2);
                iE = i11 + 4;
                unsafe.putInt(obj, j4, i5);
                return iE;
            case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
                if (i6 != 0) {
                    return i2;
                }
                iE = zzax.e(bArr, i2, zzayVar);
                objValueOf3 = Boolean.valueOf(zzayVar.f29652b != 0);
                unsafe.putObject(obj, j2, objValueOf3);
                unsafe.putInt(obj, j4, i5);
                return iE;
            case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                if (i6 != 2) {
                    return i2;
                }
                int iD = zzax.d(bArr, i2, zzayVar);
                int i13 = zzayVar.f29651a;
                if (i13 == 0) {
                    unsafe.putObject(obj, j2, "");
                } else {
                    if ((i7 & PKIFailureInfo.duplicateCertReq) != 0) {
                        if (!zzff.f29751a.b(iD, iD + i13, bArr)) {
                            throw new zzco("Protocol message had invalid UTF-8.");
                        }
                    }
                    unsafe.putObject(obj, j2, new String(bArr, iD, i13, zzci.f29677a));
                    iD += i13;
                }
                unsafe.putInt(obj, j4, i5);
                return iD;
            case 60:
                if (i6 != 2) {
                    return i2;
                }
                int iJ = j(s(i9), bArr, i2, i3, zzayVar);
                object = unsafe.getInt(obj, j4) == i5 ? unsafe.getObject(obj, j2) : null;
                Object objA = zzayVar.f29653c;
                if (object != null) {
                    objA = zzci.a(object, objA);
                }
                unsafe.putObject(obj, j2, objA);
                unsafe.putInt(obj, j4, i5);
                return iJ;
            case 61:
                if (i6 != 2) {
                    return i2;
                }
                int iD2 = zzax.d(bArr, i2, zzayVar);
                int i14 = zzayVar.f29651a;
                if (i14 == 0) {
                    unsafe.putObject(obj, j2, zzbb.f29654c);
                } else {
                    unsafe.putObject(obj, j2, zzbb.a(iD2, i14, bArr));
                    iD2 += i14;
                }
                unsafe.putInt(obj, j4, i5);
                return iD2;
            case 63:
                if (i6 != 0) {
                    return i2;
                }
                int iD3 = zzax.d(bArr, i2, zzayVar);
                int i15 = zzayVar.f29651a;
                zzck zzckVarU = u(i9);
                if (zzckVarU == null || zzckVarU.g(i15) != null) {
                    unsafe.putObject(obj, j2, Integer.valueOf(i15));
                    iE = iD3;
                    unsafe.putInt(obj, j4, i5);
                    return iE;
                }
                zzcg zzcgVar = (zzcg) obj;
                zzey zzeyVarB = zzcgVar.zzjp;
                if (zzeyVarB == zzey.f29737e) {
                    zzeyVarB = zzey.b();
                    zzcgVar.zzjp = zzeyVarB;
                }
                zzeyVarB.a(i4, Long.valueOf(i15));
                return iD3;
            case EACTags.ADDRESS /* 66 */:
                if (i6 != 0) {
                    return i2;
                }
                iE = zzax.d(bArr, i2, zzayVar);
                int i16 = zzayVar.f29651a;
                i12 = (-(i16 & 1)) ^ (i16 >>> 1);
                objValueOf3 = Integer.valueOf(i12);
                unsafe.putObject(obj, j2, objValueOf3);
                unsafe.putInt(obj, j4, i5);
                return iE;
            case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                if (i6 != 0) {
                    return i2;
                }
                iE = zzax.e(bArr, i2, zzayVar);
                long j5 = zzayVar.f29652b;
                j3 = (-(j5 & 1)) ^ (j5 >>> 1);
                objValueOf3 = Long.valueOf(j3);
                unsafe.putObject(obj, j2, objValueOf3);
                unsafe.putInt(obj, j4, i5);
                return iE;
            case EACTags.APPLICATION_IMAGE /* 68 */:
                if (i6 == 3) {
                    iE = i(s(i9), bArr, i2, i3, (i4 & (-8)) | 4, zzayVar);
                    object = unsafe.getInt(obj, j4) == i5 ? unsafe.getObject(obj, j2) : null;
                    Object objA2 = zzayVar.f29653c;
                    if (object != null) {
                        objA2 = zzci.a(object, objA2);
                    }
                    unsafe.putObject(obj, j2, objA2);
                    unsafe.putInt(obj, j4, i5);
                    return iE;
                }
            default:
                return i2;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:156:0x0103 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:68:0x0114  */
    /* JADX WARN: Code duplicated, block: B:70:0x011c  */
    /* JADX WARN: Code duplicated, block: B:73:0x0125  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x00cc -> B:45:0x00ae). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:71:0x0122 -> B:64:0x0103). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:86:0x0161 -> B:77:0x0138). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final int l(java.lang.Object r10, byte[] r11, int r12, int r13, int r14, int r15, int r16, int r17, long r18, int r20, long r21, com.google.android.gms.internal.clearcut.zzay r23) throws com.google.android.gms.internal.clearcut.zzco {
        /*
            Method dump skipped, instruction units count: 546
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzds.l(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, com.google.android.gms.internal.clearcut.zzay):int");
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 11901. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    public final int m(java.lang.Object r27, byte[] r28, int r29, int r30, int r31, com.google.android.gms.internal.clearcut.zzay r32) throws com.google.android.gms.internal.clearcut.zzco {
        /*
            Method dump skipped, instruction units count: 1190
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzds.m(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.clearcut.zzay):int");
    }

    public final void o(Object obj, Object obj2, int i2) {
        long jV = v(i2) & 1048575;
        if (r(i2, obj2)) {
            Object objK = zzfd.k(jV, obj);
            Object objK2 = zzfd.k(jV, obj2);
            if (objK != null && objK2 != null) {
                objK2 = zzci.a(objK, objK2);
            } else if (objK2 == null) {
                return;
            }
            zzfd.b(jV, obj, objK2);
            x(i2, obj);
        }
    }

    public final void p(Object obj, byte[] bArr, int i2, int i3, int i4, long j2, zzay zzayVar) {
        Unsafe unsafe = q;
        t(i4);
        Object object = unsafe.getObject(obj, j2);
        zzdj zzdjVar = this.p;
        if (zzdjVar.M(object)) {
            zzdi zzdiVarA = zzdjVar.a();
            zzdjVar.O(zzdiVarA, object);
            unsafe.putObject(obj, j2, zzdiVarA);
        }
        zzdjVar.J();
        throw null;
    }

    public final boolean q(int i2, int i3, Object obj) {
        return zzfd.d.g((long) (this.f29690a[i3 + 2] & 1048575), obj) == i2;
    }

    /* JADX WARN: Code duplicated, block: B:72:0x0108 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:73:0x0109 A[RETURN] */
    public final boolean r(int i2, Object obj) {
        if (!this.f29695h) {
            int i3 = this.f29690a[i2 + 2];
            if ((zzfd.d.g(i3 & 1048575, obj) & (1 << (i3 >>> 20))) != 0) {
                return true;
            }
            return false;
        }
        int iV = v(i2);
        long j2 = iV & 1048575;
        switch ((iV & 267386880) >>> 20) {
            case 0:
                if (zzfd.d.k(j2, obj) != 0.0d) {
                    return true;
                }
                return false;
            case 1:
                if (zzfd.d.j(j2, obj) != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    return true;
                }
                return false;
            case 2:
                if (zzfd.d.h(j2, obj) != 0) {
                    return true;
                }
                return false;
            case 3:
                if (zzfd.d.h(j2, obj) != 0) {
                    return true;
                }
                return false;
            case 4:
                if (zzfd.d.g(j2, obj) != 0) {
                    return true;
                }
                return false;
            case 5:
                if (zzfd.d.h(j2, obj) != 0) {
                    return true;
                }
                return false;
            case 6:
                if (zzfd.d.g(j2, obj) != 0) {
                    return true;
                }
                return false;
            case 7:
                return zzfd.d.i(j2, obj);
            case 8:
                Object objK = zzfd.k(j2, obj);
                if (objK instanceof String) {
                    if (((String) objK).isEmpty()) {
                        return false;
                    }
                    return true;
                }
                if (!(objK instanceof zzbb)) {
                    ct0.c();
                    return false;
                }
                if (zzbb.f29654c.equals(objK)) {
                    return false;
                }
                return true;
            case 9:
                if (zzfd.k(j2, obj) != null) {
                    return true;
                }
                return false;
            case 10:
                if (zzbb.f29654c.equals(zzfd.k(j2, obj))) {
                    return false;
                }
                return true;
            case 11:
                if (zzfd.d.g(j2, obj) != 0) {
                    return true;
                }
                return false;
            case 12:
                if (zzfd.d.g(j2, obj) != 0) {
                    return true;
                }
                return false;
            case 13:
                if (zzfd.d.g(j2, obj) != 0) {
                    return true;
                }
                return false;
            case 14:
                if (zzfd.d.h(j2, obj) != 0) {
                    return true;
                }
                return false;
            case 15:
                if (zzfd.d.g(j2, obj) != 0) {
                    return true;
                }
                return false;
            case 16:
                if (zzfd.d.h(j2, obj) != 0) {
                    return true;
                }
                return false;
            case 17:
                if (zzfd.k(j2, obj) != null) {
                    return true;
                }
                return false;
            default:
                ct0.c();
                return false;
        }
    }

    public final zzef s(int i2) {
        int i3 = (i2 / 4) << 1;
        Object[] objArr = this.f29691b;
        zzef zzefVar = (zzef) objArr[i3];
        if (zzefVar != null) {
            return zzefVar;
        }
        zzef zzefVarA = zzea.f29704c.a((Class) objArr[i3 + 1]);
        objArr[i3] = zzefVarA;
        return zzefVarA;
    }

    public final Object t(int i2) {
        return this.f29691b[(i2 / 4) << 1];
    }

    public final zzck u(int i2) {
        return (zzck) this.f29691b[((i2 / 4) << 1) + 1];
    }

    public final int v(int i2) {
        return this.f29690a[i2 + 1];
    }

    public final int w(int i2) {
        int i3 = this.f29692c;
        if (i2 < i3) {
            return -1;
        }
        int[] iArr = this.f29690a;
        int i4 = this.f29693e;
        if (i2 < i4) {
            int i5 = (i2 - i3) << 2;
            if (iArr[i5] == i2) {
                return i5;
            }
            return -1;
        }
        if (i2 > this.d) {
            return -1;
        }
        int i6 = i4 - i3;
        int length = (iArr.length / 4) - 1;
        while (i6 <= length) {
            int i7 = (length + i6) >>> 1;
            int i8 = i7 << 2;
            int i9 = iArr[i8];
            if (i2 == i9) {
                return i8;
            }
            if (i2 < i9) {
                length = i7 - 1;
            } else {
                i6 = i7 + 1;
            }
        }
        return -1;
    }

    public final void x(int i2, Object obj) {
        if (this.f29695h) {
            return;
        }
        int i3 = this.f29690a[i2 + 2];
        long j2 = i3 & 1048575;
        zzfd.d(obj, j2, zzfd.d.g(j2, obj) | (1 << (i3 >>> 20)));
    }

    public final void y(Object obj, Object obj2, int i2) {
        int i3;
        int iV = v(i2);
        int[] iArr = this.f29690a;
        int i4 = iArr[i2];
        long j2 = iV & 1048575;
        if (q(i4, i2, obj2)) {
            Object objK = zzfd.k(j2, obj);
            Object objK2 = zzfd.k(j2, obj2);
            if (objK != null && objK2 != null) {
                zzfd.b(j2, obj, zzci.a(objK, objK2));
                i3 = iArr[i2 + 2];
            } else {
                if (objK2 == null) {
                    return;
                }
                zzfd.b(j2, obj, objK2);
                i3 = iArr[i2 + 2];
            }
            zzfd.d(obj, i3 & 1048575, i4);
        }
    }

    public final boolean z(zzcg zzcgVar, Object obj, int i2) {
        return r(i2, zzcgVar) == r(i2, obj);
    }
}
