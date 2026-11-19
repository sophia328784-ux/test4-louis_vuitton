package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import defpackage.md;
import java.util.Arrays;
import java.util.Collection;
import java.util.Set;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0011\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/collection/MutableOrderedScatterSet;", "E", "Landroidx/collection/OrderedScatterSet;", "", "initialCapacity", "<init>", "(I)V", "collection"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MutableOrderedScatterSet<E> extends OrderedScatterSet<E> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f3313h;

    public MutableOrderedScatterSet(int i2) {
        super(null);
        if (i2 >= 0) {
            g(ScatterMapKt.e(i2));
        } else {
            md.n("Capacity must be a positive value.");
            throw null;
        }
    }

    public final boolean b(Object obj) {
        int i2 = this.g;
        int iE = e(obj);
        this.f3351b[iE] = obj;
        long[] jArr = this.f3352c;
        int i3 = this.d;
        jArr[iE] = (((long) i3) & 2147483647L) | 4611686016279904256L;
        if (i3 != Integer.MAX_VALUE) {
            jArr[i3] = ((((long) iE) & 2147483647L) << 31) | (jArr[i3] & (-4611686016279904257L));
        }
        this.d = iE;
        if (this.f3353e == Integer.MAX_VALUE) {
            this.f3353e = iE;
        }
        return this.g != i2;
    }

    public final Set c() {
        return new MutableOrderedSetWrapper(this);
    }

    public final void d() {
        this.g = 0;
        long[] jArr = this.f3350a;
        if (jArr != ScatterMapKt.f3365a) {
            ArraysKt.u(jArr, -9187201950435737472L);
            long[] jArr2 = this.f3350a;
            int i2 = this.f3354f;
            int i3 = i2 >> 3;
            long j2 = 255 << ((i2 & 7) << 3);
            jArr2[i3] = (jArr2[i3] & (~j2)) | j2;
        }
        ArraysKt.r(this.f3351b, 0, this.f3354f, null);
        ArraysKt.u(this.f3352c, 4611686018427387903L);
        this.d = Integer.MAX_VALUE;
        this.f3353e = Integer.MAX_VALUE;
        this.f3313h = ScatterMapKt.a(this.f3354f) - this.g;
    }

    public final int e(Object obj) {
        int i2;
        long j2;
        long j3;
        long j4;
        char c2;
        long[] jArr;
        int i3 = -862048943;
        int iHashCode = (obj != null ? obj.hashCode() : 0) * (-862048943);
        int i4 = iHashCode ^ (iHashCode << 16);
        int i5 = i4 >>> 7;
        int i6 = i4 & CertificateBody.profileType;
        int i7 = this.f3354f;
        int i8 = i5 & i7;
        int i9 = 0;
        while (true) {
            long[] jArr2 = this.f3350a;
            int i10 = i8 >> 3;
            int i11 = (i8 & 7) << 3;
            long j5 = ((jArr2[i10 + 1] << (64 - i11)) & ((-i11) >> 63)) | (jArr2[i10] >>> i11);
            long j6 = i6;
            long j7 = j5 ^ (j6 * 72340172838076673L);
            long j8 = (j7 - 72340172838076673L) & (~j7) & (-9187201950435737472L);
            while (j8 != 0) {
                int iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j8) >> 3) + i8) & i7;
                int i12 = i3;
                if (Intrinsics.c(this.f3351b[iNumberOfTrailingZeros], obj)) {
                    return iNumberOfTrailingZeros;
                }
                j8 &= j8 - 1;
                i3 = i12;
            }
            int i13 = i3;
            if ((j5 & ((~j5) << 6) & (-9187201950435737472L)) != 0) {
                int iF = f(i5);
                long j9 = 255;
                if (this.f3313h != 0 || ((this.f3350a[iF >> 3] >> ((iF & 7) << 3)) & 255) == 254) {
                    i2 = 0;
                    j2 = j6;
                    j3 = 255;
                    j4 = 128;
                } else {
                    int i14 = this.f3354f;
                    if (i14 > 8) {
                        c2 = 31;
                        long j10 = this.g;
                        ULong.Companion companion = ULong.INSTANCE;
                        j4 = 128;
                        if (Long.compareUnsigned(j10 * 32, ((long) i14) * 25) <= 0) {
                            long[] jArr3 = this.f3350a;
                            if (jArr3 == null) {
                                i2 = 0;
                                j2 = j6;
                                j3 = 255;
                            } else {
                                int i15 = this.f3354f;
                                Object[] objArr = this.f3351b;
                                long[] jArr4 = this.f3352c;
                                long[] jArr5 = new long[i15];
                                Arrays.fill(jArr5, 0, i15, 9223372034707292159L);
                                i2 = 0;
                                int i16 = (i15 + 7) >> 3;
                                int i17 = 0;
                                while (i17 < i16) {
                                    long j11 = j9;
                                    long j12 = jArr3[i17] & (-9187201950435737472L);
                                    int i18 = i17;
                                    jArr3[i18] = ((~j12) + (j12 >>> 7)) & (-72340172838076674L);
                                    i17 = i18 + 1;
                                    j9 = j11;
                                }
                                j3 = j9;
                                int length = jArr3.length;
                                int i19 = length - 1;
                                int i20 = length - 2;
                                jArr3[i20] = (jArr3[i20] & 72057594037927935L) | (-72057594037927936L);
                                jArr3[i19] = jArr3[0];
                                int i21 = 0;
                                while (i21 != i15) {
                                    int i22 = i21 >> 3;
                                    int i23 = (i21 & 7) << 3;
                                    long j13 = (jArr3[i22] >> i23) & j3;
                                    if (j13 != 128 && j13 == 254) {
                                        Object obj2 = objArr[i21];
                                        int iHashCode2 = (obj2 != null ? obj2.hashCode() : 0) * i13;
                                        int i24 = iHashCode2 ^ (iHashCode2 << 16);
                                        int i25 = i24 >>> 7;
                                        int iF2 = f(i25);
                                        int i26 = i25 & i15;
                                        if (((iF2 - i26) & i15) / 8 == ((i21 - i26) & i15) / 8) {
                                            int i27 = i15;
                                            Object[] objArr2 = objArr;
                                            jArr3[i22] = (jArr3[i22] & (~(j3 << i23))) | (((long) (i24 & CertificateBody.profileType)) << i23);
                                            if (jArr5[i21] == 9223372034707292159L) {
                                                long j14 = i21;
                                                jArr5[i21] = j14 | (j14 << 32);
                                            }
                                            jArr3[jArr3.length - 1] = jArr3[0];
                                            i21++;
                                            i15 = i27;
                                            objArr = objArr2;
                                        } else {
                                            int i28 = i15;
                                            Object[] objArr3 = objArr;
                                            int i29 = iF2 >> 3;
                                            long j15 = jArr3[i29];
                                            int i30 = (iF2 & 7) << 3;
                                            if (((j15 >> i30) & j3) == 128) {
                                                jArr3[i29] = (j15 & (~(j3 << i30))) | (((long) (i24 & CertificateBody.profileType)) << i30);
                                                jArr3[i22] = (jArr3[i22] & (~(j3 << i23))) | (128 << i23);
                                                objArr3[iF2] = objArr3[i21];
                                                objArr3[i21] = null;
                                                jArr4[iF2] = jArr4[i21];
                                                jArr4[i21] = 4611686018427387903L;
                                                int i31 = (int) ((jArr5[i21] >> 32) & BodyPartID.bodyIdMax);
                                                if (i31 != Integer.MAX_VALUE) {
                                                    jArr5[i31] = ((long) iF2) | (jArr5[i31] & (-4294967296L));
                                                    jArr5[i21] = (jArr5[i21] & BodyPartID.bodyIdMax) | (-4294967296L);
                                                } else {
                                                    jArr5[i21] = 9223372032559808512L | ((long) iF2);
                                                }
                                                jArr5[iF2] = (((long) i21) << 32) | 2147483647L;
                                            } else {
                                                j6 = j6;
                                                jArr3[i29] = (((long) (i24 & CertificateBody.profileType)) << i30) | (j15 & (~(j3 << i30)));
                                                Object obj3 = objArr3[iF2];
                                                objArr3[iF2] = objArr3[i21];
                                                objArr3[i21] = obj3;
                                                long j16 = jArr4[iF2];
                                                jArr4[iF2] = jArr4[i21];
                                                jArr4[i21] = j16;
                                                int i32 = (int) ((jArr5[i21] >> 32) & BodyPartID.bodyIdMax);
                                                if (i32 != Integer.MAX_VALUE) {
                                                    long j17 = iF2;
                                                    jArr5[i32] = (jArr5[i32] & (-4294967296L)) | j17;
                                                    jArr5[i21] = (jArr5[i21] & BodyPartID.bodyIdMax) | (j17 << 32);
                                                } else {
                                                    long j18 = iF2;
                                                    jArr5[i21] = j18 | (j18 << 32);
                                                    i32 = i21;
                                                }
                                                jArr5[iF2] = (((long) i32) << 32) | ((long) i21);
                                                i21--;
                                            }
                                            jArr3[jArr3.length - 1] = jArr3[0];
                                            i21++;
                                            i15 = i28;
                                            objArr = objArr3;
                                            j6 = j6;
                                        }
                                    } else {
                                        i21++;
                                    }
                                }
                                j2 = j6;
                                this.f3313h = ScatterMapKt.a(this.f3354f) - this.g;
                                long[] jArr6 = this.f3352c;
                                int length2 = jArr6.length;
                                for (int i33 = 0; i33 < length2; i33++) {
                                    long j19 = jArr6[i33];
                                    int i34 = (int) ((j19 >> 31) & 2147483647L);
                                    int i35 = (int) (j19 & 2147483647L);
                                    jArr6[i33] = (((j19 & (-4611686018427387904L)) | ((long) (i34 == Integer.MAX_VALUE ? Integer.MAX_VALUE : (int) (jArr5[i34] & BodyPartID.bodyIdMax)))) << 31) | ((long) (i35 == Integer.MAX_VALUE ? Integer.MAX_VALUE : (int) (jArr5[i35] & BodyPartID.bodyIdMax)));
                                }
                                int i36 = this.d;
                                if (i36 != Integer.MAX_VALUE) {
                                    this.d = (int) (jArr5[i36] & BodyPartID.bodyIdMax);
                                }
                                int i37 = this.f3353e;
                                if (i37 != Integer.MAX_VALUE) {
                                    this.f3353e = (int) (jArr5[i37] & BodyPartID.bodyIdMax);
                                }
                            }
                        }
                        iF = f(i5);
                    } else {
                        c2 = 31;
                        j4 = 128;
                    }
                    i2 = 0;
                    j2 = j6;
                    j3 = 255;
                    int iC = ScatterMapKt.c(this.f3354f);
                    long[] jArr7 = this.f3350a;
                    Object[] objArr4 = this.f3351b;
                    long[] jArr8 = this.f3352c;
                    int i38 = this.f3354f;
                    int[] iArr = new int[i38];
                    g(iC);
                    long[] jArr9 = this.f3350a;
                    Object[] objArr5 = this.f3351b;
                    long[] jArr10 = this.f3352c;
                    int i39 = this.f3354f;
                    int i40 = 0;
                    while (i40 < i38) {
                        if (((jArr7[i40 >> 3] >> ((i40 & 7) << 3)) & 255) < j4) {
                            Object obj4 = objArr4[i40];
                            int iHashCode3 = (obj4 != null ? obj4.hashCode() : 0) * i13;
                            int i41 = iHashCode3 ^ (iHashCode3 << 16);
                            int iF3 = f(i41 >>> 7);
                            jArr = jArr9;
                            long j20 = i41 & CertificateBody.profileType;
                            int i42 = iF3 >> 3;
                            int i43 = (iF3 & 7) << 3;
                            long j21 = (jArr[i42] & (~(255 << i43))) | (j20 << i43);
                            jArr[i42] = j21;
                            jArr[(((iF3 - 7) & i39) + (i39 & 7)) >> 3] = j21;
                            objArr5[iF3] = obj4;
                            jArr10[iF3] = jArr8[i40];
                            iArr[i40] = iF3;
                        } else {
                            jArr = jArr9;
                        }
                        i40++;
                        jArr7 = jArr7;
                        jArr9 = jArr;
                    }
                    long[] jArr11 = this.f3352c;
                    int length3 = jArr11.length;
                    for (int i44 = 0; i44 < length3; i44++) {
                        long j22 = jArr11[i44];
                        int i45 = (int) ((j22 >> c2) & 2147483647L);
                        int i46 = (int) (j22 & 2147483647L);
                        jArr11[i44] = (((j22 & (-4611686018427387904L)) | ((long) (i45 == Integer.MAX_VALUE ? Integer.MAX_VALUE : iArr[i45]))) << c2) | ((long) (i46 == Integer.MAX_VALUE ? Integer.MAX_VALUE : iArr[i46]));
                    }
                    int i47 = this.d;
                    if (i47 != Integer.MAX_VALUE) {
                        this.d = iArr[i47];
                    }
                    int i48 = this.f3353e;
                    if (i48 != Integer.MAX_VALUE) {
                        this.f3353e = iArr[i48];
                    }
                    iF = f(i5);
                }
                this.g++;
                int i49 = this.f3313h;
                long[] jArr12 = this.f3350a;
                int i50 = iF >> 3;
                long j23 = jArr12[i50];
                int i51 = (iF & 7) << 3;
                if (((j23 >> i51) & j3) == j4) {
                    i2 = 1;
                }
                this.f3313h = i49 - i2;
                int i52 = this.f3354f;
                long j24 = (j23 & (~(j3 << i51))) | (j2 << i51);
                jArr12[i50] = j24;
                jArr12[(((iF - 7) & i52) + (i52 & 7)) >> 3] = j24;
                return iF;
            }
            i9 += 8;
            i8 = (i8 + i9) & i7;
            i3 = i13;
        }
    }

    public final int f(int i2) {
        int i3 = this.f3354f;
        int i4 = i2 & i3;
        int i5 = 0;
        while (true) {
            long[] jArr = this.f3350a;
            int i6 = i4 >> 3;
            int i7 = (i4 & 7) << 3;
            long j2 = ((jArr[i6 + 1] << (64 - i7)) & ((-i7) >> 63)) | (jArr[i6] >>> i7);
            long j3 = j2 & ((~j2) << 7) & (-9187201950435737472L);
            if (j3 != 0) {
                return (i4 + (Long.numberOfTrailingZeros(j3) >> 3)) & i3;
            }
            i5 += 8;
            i4 = (i4 + i5) & i3;
        }
    }

    public final void g(int i2) {
        long[] jArr;
        long[] jArr2;
        int iMax = i2 > 0 ? Math.max(7, ScatterMapKt.d(i2)) : 0;
        this.f3354f = iMax;
        if (iMax == 0) {
            jArr = ScatterMapKt.f3365a;
        } else {
            int i3 = ((iMax + 15) & (-8)) >> 3;
            long[] jArr3 = new long[i3];
            Arrays.fill(jArr3, 0, i3, -9187201950435737472L);
            jArr = jArr3;
        }
        this.f3350a = jArr;
        int i4 = iMax >> 3;
        long j2 = 255 << ((iMax & 7) << 3);
        jArr[i4] = (jArr[i4] & (~j2)) | j2;
        this.f3313h = ScatterMapKt.a(this.f3354f) - this.g;
        this.f3351b = iMax == 0 ? ContainerHelpersKt.f3401c : new Object[iMax];
        if (iMax == 0) {
            jArr2 = SieveCacheKt.f3380a;
        } else {
            long[] jArr4 = new long[iMax];
            Arrays.fill(jArr4, 0, iMax, 4611686018427387903L);
            jArr2 = jArr4;
        }
        this.f3352c = jArr2;
    }

    public final void h(Object obj) {
        int iE = e(obj);
        this.f3351b[iE] = obj;
        long[] jArr = this.f3352c;
        int i2 = this.d;
        jArr[iE] = (((long) i2) & 2147483647L) | 4611686016279904256L;
        if (i2 != Integer.MAX_VALUE) {
            jArr[i2] = ((((long) iE) & 2147483647L) << 31) | (jArr[i2] & (-4611686016279904257L));
        }
        this.d = iE;
        if (this.f3353e == Integer.MAX_VALUE) {
            this.f3353e = iE;
        }
    }

    public final boolean i(Object obj) {
        int iNumberOfTrailingZeros;
        int iHashCode = (obj != null ? obj.hashCode() : 0) * (-862048943);
        int i2 = iHashCode ^ (iHashCode << 16);
        int i3 = i2 & CertificateBody.profileType;
        int i4 = this.f3354f;
        int i5 = (i2 >>> 7) & i4;
        int i6 = 0;
        loop0: while (true) {
            long[] jArr = this.f3350a;
            int i7 = i5 >> 3;
            int i8 = (i5 & 7) << 3;
            long j2 = ((jArr[i7 + 1] << (64 - i8)) & ((-i8) >> 63)) | (jArr[i7] >>> i8);
            long j3 = (((long) i3) * 72340172838076673L) ^ j2;
            for (long j4 = (~j3) & (j3 - 72340172838076673L) & (-9187201950435737472L); j4 != 0; j4 &= j4 - 1) {
                iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j4) >> 3) + i5) & i4;
                if (Intrinsics.c(this.f3351b[iNumberOfTrailingZeros], obj)) {
                    break loop0;
                }
            }
            if ((j2 & ((~j2) << 6) & (-9187201950435737472L)) != 0) {
                iNumberOfTrailingZeros = -1;
                break;
            }
            i6 += 8;
            i5 = (i5 + i6) & i4;
        }
        boolean z = iNumberOfTrailingZeros >= 0;
        if (z) {
            j(iNumberOfTrailingZeros);
        }
        return z;
    }

    public final void j(int i2) {
        this.g--;
        long[] jArr = this.f3350a;
        int i3 = this.f3354f;
        int i4 = i2 >> 3;
        int i5 = (i2 & 7) << 3;
        long j2 = (jArr[i4] & (~(255 << i5))) | (254 << i5);
        jArr[i4] = j2;
        jArr[(((i2 - 7) & i3) + (i3 & 7)) >> 3] = j2;
        this.f3351b[i2] = null;
        long[] jArr2 = this.f3352c;
        long j3 = jArr2[i2];
        int i6 = (int) ((j3 >> 31) & 2147483647L);
        int i7 = (int) (j3 & 2147483647L);
        if (i6 != Integer.MAX_VALUE) {
            jArr2[i6] = (jArr2[i6] & (-2147483648L)) | (((long) i7) & 2147483647L);
        } else {
            this.d = i7;
        }
        if (i7 != Integer.MAX_VALUE) {
            jArr2[i7] = ((((long) i6) & 2147483647L) << 31) | (jArr2[i7] & (-4611686016279904257L));
        } else {
            this.f3353e = i6;
        }
        jArr2[i2] = 4611686018427387903L;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x004f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:17:0x0051 A[LOOP:0: B:5:0x0012->B:17:0x0051, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:24:0x0054 A[EDGE_INSN: B:24:0x0054->B:18:0x0054 BREAK  A[LOOP:0: B:5:0x0012->B:17:0x0051], SYNTHETIC] */
    public final boolean k(Collection collection) {
        collection.getClass();
        Object[] objArr = this.f3351b;
        int i2 = this.g;
        long[] jArr = this.f3350a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i3 = 0;
            while (true) {
                long j2 = jArr[i3];
                if ((((~j2) << 7) & j2 & (-9187201950435737472L)) == -9187201950435737472L) {
                    if (i3 != length) {
                        break;
                        break;
                    }
                    i3++;
                } else {
                    int i4 = 8 - ((~(i3 - length)) >>> 31);
                    for (int i5 = 0; i5 < i4; i5++) {
                        if ((255 & j2) < 128) {
                            int i6 = (i3 << 3) + i5;
                            if (!CollectionsKt.u(collection, objArr[i6])) {
                                j(i6);
                            }
                        }
                        j2 >>= 8;
                    }
                    if (i4 != 8) {
                        break;
                    }
                    if (i3 != length) {
                        break;
                    }
                    i3++;
                }
            }
        }
        return i2 != this.g;
    }

    public /* synthetic */ MutableOrderedScatterSet(int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 6 : i2);
    }

    public MutableOrderedScatterSet() {
        this(0, 1, null);
    }
}
