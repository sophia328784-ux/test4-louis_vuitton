package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import defpackage.md;
import java.util.Arrays;
import java.util.Set;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0011\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/collection/MutableScatterSet;", "E", "Landroidx/collection/ScatterSet;", "", "initialCapacity", "<init>", "(I)V", "collection"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MutableScatterSet<E> extends ScatterSet<E> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3324e;

    public MutableScatterSet(int i2) {
        super(null);
        if (i2 >= 0) {
            i(ScatterMapKt.e(i2));
        } else {
            md.n("Capacity must be a positive value.");
            throw null;
        }
    }

    public final boolean d(Object obj) {
        int i2 = this.d;
        this.f3368b[g(obj)] = obj;
        return this.d != i2;
    }

    public final Set e() {
        return new MutableSetWrapper(this);
    }

    public final void f() {
        this.d = 0;
        long[] jArr = this.f3367a;
        if (jArr != ScatterMapKt.f3365a) {
            ArraysKt.u(jArr, -9187201950435737472L);
            long[] jArr2 = this.f3367a;
            int i2 = this.f3369c;
            int i3 = i2 >> 3;
            long j2 = 255 << ((i2 & 7) << 3);
            jArr2[i3] = (jArr2[i3] & (~j2)) | j2;
        }
        ArraysKt.r(this.f3368b, 0, this.f3369c, null);
        this.f3324e = ScatterMapKt.a(this.f3369c) - this.d;
    }

    public final int g(Object obj) {
        long j2;
        long j3;
        long j4;
        long[] jArr;
        Object[] objArr;
        int i2 = -862048943;
        int iHashCode = (obj != null ? obj.hashCode() : 0) * (-862048943);
        int i3 = iHashCode ^ (iHashCode << 16);
        int i4 = i3 >>> 7;
        int i5 = i3 & CertificateBody.profileType;
        int i6 = this.f3369c;
        int i7 = i4 & i6;
        int i8 = 0;
        while (true) {
            long[] jArr2 = this.f3367a;
            int i9 = i7 >> 3;
            int i10 = (i7 & 7) << 3;
            long j5 = ((jArr2[i9 + 1] << (64 - i10)) & ((-i10) >> 63)) | (jArr2[i9] >>> i10);
            long j6 = i5;
            int i11 = i5;
            long j7 = j5 ^ (j6 * 72340172838076673L);
            long j8 = (~j7) & (j7 - 72340172838076673L) & (-9187201950435737472L);
            while (j8 != 0) {
                int iNumberOfTrailingZeros = (i7 + (Long.numberOfTrailingZeros(j8) >> 3)) & i6;
                int i12 = i2;
                if (Intrinsics.c(this.f3368b[iNumberOfTrailingZeros], obj)) {
                    return iNumberOfTrailingZeros;
                }
                j8 &= j8 - 1;
                i2 = i12;
            }
            int i13 = i2;
            if ((((~j5) << 6) & j5 & (-9187201950435737472L)) != 0) {
                int iH = h(i4);
                long j9 = 255;
                if (this.f3324e != 0 || ((this.f3367a[iH >> 3] >> ((iH & 7) << 3)) & 255) == 254) {
                    j2 = 255;
                    j3 = j6;
                    j4 = 128;
                } else {
                    int i14 = this.f3369c;
                    if (i14 > 8) {
                        int i15 = 8;
                        long j10 = this.d;
                        ULong.Companion companion = ULong.INSTANCE;
                        if (Long.compareUnsigned(j10 * 32, ((long) i14) * 25) <= 0) {
                            long[] jArr3 = this.f3367a;
                            int i16 = this.f3369c;
                            Object[] objArr2 = this.f3368b;
                            int i17 = (i16 + 7) >> 3;
                            int i18 = 0;
                            j4 = 128;
                            while (i18 < i17) {
                                long j11 = j9;
                                long j12 = jArr3[i18] & (-9187201950435737472L);
                                jArr3[i18] = (-72340172838076674L) & ((~j12) + (j12 >>> 7));
                                i18++;
                                i15 = i15;
                                j6 = j6;
                                j9 = j11;
                            }
                            j2 = j9;
                            j3 = j6;
                            int i19 = i15;
                            int iZ = ArraysKt.z(jArr3);
                            int i20 = iZ - 1;
                            long j13 = 72057594037927935L;
                            jArr3[i20] = (jArr3[i20] & 72057594037927935L) | (-72057594037927936L);
                            jArr3[iZ] = jArr3[0];
                            int i21 = 0;
                            while (i21 != i16) {
                                int i22 = i21 >> 3;
                                int i23 = (i21 & 7) << 3;
                                long j14 = (jArr3[i22] >> i23) & j2;
                                if (j14 != 128 && j14 == 254) {
                                    Object obj2 = objArr2[i21];
                                    int iHashCode2 = (obj2 != null ? obj2.hashCode() : 0) * i13;
                                    int i24 = iHashCode2 ^ (iHashCode2 << 16);
                                    int i25 = i24 >>> 7;
                                    int iH2 = h(i25);
                                    int i26 = i25 & i16;
                                    if (((iH2 - i26) & i16) / i19 == ((i21 - i26) & i16) / i19) {
                                        long j15 = j13;
                                        jArr3[i22] = (((long) (i24 & CertificateBody.profileType)) << i23) | ((~(j2 << i23)) & jArr3[i22]);
                                        jArr3[jArr3.length - 1] = (jArr3[0] & j15) | Long.MIN_VALUE;
                                        i21++;
                                        j13 = j15;
                                    } else {
                                        long j16 = j13;
                                        int i27 = iH2 >> 3;
                                        long j17 = jArr3[i27];
                                        int i28 = (iH2 & 7) << 3;
                                        if (((j17 >> i28) & j2) == 128) {
                                            objArr = objArr2;
                                            jArr3[i27] = ((~(j2 << i28)) & j17) | (((long) (i24 & CertificateBody.profileType)) << i28);
                                            jArr3[i22] = (jArr3[i22] & (~(j2 << i23))) | (128 << i23);
                                            objArr[iH2] = objArr[i21];
                                            objArr[i21] = null;
                                        } else {
                                            objArr = objArr2;
                                            jArr3[i27] = (((long) (i24 & CertificateBody.profileType)) << i28) | ((~(j2 << i28)) & j17);
                                            Object obj3 = objArr[iH2];
                                            objArr[iH2] = objArr[i21];
                                            objArr[i21] = obj3;
                                            i21--;
                                        }
                                        jArr3[jArr3.length - 1] = (jArr3[0] & j16) | Long.MIN_VALUE;
                                        i21++;
                                        j13 = j16;
                                        i19 = i19;
                                        i16 = i16;
                                        objArr2 = objArr;
                                    }
                                } else {
                                    i21++;
                                }
                            }
                            this.f3324e = ScatterMapKt.a(this.f3369c) - this.d;
                        }
                        iH = h(i4);
                    }
                    j2 = 255;
                    j3 = j6;
                    j4 = 128;
                    int iC = ScatterMapKt.c(this.f3369c);
                    long[] jArr4 = this.f3367a;
                    Object[] objArr3 = this.f3368b;
                    int i29 = this.f3369c;
                    i(iC);
                    long[] jArr5 = this.f3367a;
                    Object[] objArr4 = this.f3368b;
                    int i30 = this.f3369c;
                    int i31 = 0;
                    while (i31 < i29) {
                        if (((jArr4[i31 >> 3] >> ((i31 & 7) << 3)) & 255) < 128) {
                            Object obj4 = objArr3[i31];
                            int iHashCode3 = (obj4 != null ? obj4.hashCode() : 0) * i13;
                            int i32 = iHashCode3 ^ (iHashCode3 << 16);
                            int iH3 = h(i32 >>> 7);
                            long j18 = i32 & CertificateBody.profileType;
                            int i33 = iH3 >> 3;
                            int i34 = (iH3 & 7) << 3;
                            jArr = jArr5;
                            long j19 = (jArr5[i33] & (~(255 << i34))) | (j18 << i34);
                            jArr[i33] = j19;
                            jArr[(((iH3 - 7) & i30) + (i30 & 7)) >> 3] = j19;
                            objArr4[iH3] = obj4;
                        } else {
                            jArr = jArr5;
                        }
                        i31++;
                        jArr4 = jArr4;
                        jArr5 = jArr;
                    }
                    iH = h(i4);
                }
                this.d++;
                int i35 = this.f3324e;
                long[] jArr6 = this.f3367a;
                int i36 = iH >> 3;
                long j20 = jArr6[i36];
                int i37 = (iH & 7) << 3;
                this.f3324e = i35 - (((j20 >> i37) & j2) == j4 ? 1 : 0);
                int i38 = this.f3369c;
                long j21 = (j20 & (~(j2 << i37))) | (j3 << i37);
                jArr6[i36] = j21;
                jArr6[(((iH - 7) & i38) + (i38 & 7)) >> 3] = j21;
                return iH;
            }
            i8 += 8;
            i7 = (i7 + i8) & i6;
            i5 = i11;
            i2 = i13;
        }
    }

    public final int h(int i2) {
        int i3 = this.f3369c;
        int i4 = i2 & i3;
        int i5 = 0;
        while (true) {
            long[] jArr = this.f3367a;
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

    public final void i(int i2) {
        long[] jArr;
        int iMax = i2 > 0 ? Math.max(7, ScatterMapKt.d(i2)) : 0;
        this.f3369c = iMax;
        if (iMax == 0) {
            jArr = ScatterMapKt.f3365a;
        } else {
            int i3 = ((iMax + 15) & (-8)) >> 3;
            long[] jArr2 = new long[i3];
            Arrays.fill(jArr2, 0, i3, -9187201950435737472L);
            jArr = jArr2;
        }
        this.f3367a = jArr;
        int i4 = iMax >> 3;
        long j2 = 255 << ((iMax & 7) << 3);
        jArr[i4] = (jArr[i4] & (~j2)) | j2;
        this.f3324e = ScatterMapKt.a(this.f3369c) - this.d;
        this.f3368b = iMax == 0 ? ContainerHelpersKt.f3401c : new Object[iMax];
    }

    public final void j(Object obj) {
        int iNumberOfTrailingZeros;
        int i2 = 0;
        int iHashCode = (obj != null ? obj.hashCode() : 0) * (-862048943);
        int i3 = iHashCode ^ (iHashCode << 16);
        int i4 = i3 & CertificateBody.profileType;
        int i5 = this.f3369c;
        int i6 = i3 >>> 7;
        loop0: while (true) {
            int i7 = i6 & i5;
            long[] jArr = this.f3367a;
            int i8 = i7 >> 3;
            int i9 = (i7 & 7) << 3;
            long j2 = ((jArr[i8 + 1] << (64 - i9)) & ((-i9) >> 63)) | (jArr[i8] >>> i9);
            long j3 = (((long) i4) * 72340172838076673L) ^ j2;
            for (long j4 = (~j3) & (j3 - 72340172838076673L) & (-9187201950435737472L); j4 != 0; j4 &= j4 - 1) {
                iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j4) >> 3) + i7) & i5;
                if (Intrinsics.c(this.f3368b[iNumberOfTrailingZeros], obj)) {
                    break loop0;
                }
            }
            if ((j2 & ((~j2) << 6) & (-9187201950435737472L)) != 0) {
                iNumberOfTrailingZeros = -1;
                break;
            } else {
                i2 += 8;
                i6 = i7 + i2;
            }
        }
        if (iNumberOfTrailingZeros >= 0) {
            n(iNumberOfTrailingZeros);
        }
    }

    public final void k(ScatterSet scatterSet) {
        scatterSet.getClass();
        Object[] objArr = scatterSet.f3368b;
        long[] jArr = scatterSet.f3367a;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i2 = 0;
        while (true) {
            long j2 = jArr[i2];
            if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i3 = 8 - ((~(i2 - length)) >>> 31);
                for (int i4 = 0; i4 < i3; i4++) {
                    if ((255 & j2) < 128) {
                        l(objArr[(i2 << 3) + i4]);
                    }
                    j2 >>= 8;
                }
                if (i3 != 8) {
                    return;
                }
            }
            if (i2 == length) {
                return;
            } else {
                i2++;
            }
        }
    }

    public final void l(Object obj) {
        this.f3368b[g(obj)] = obj;
    }

    public final boolean m(Object obj) {
        int iNumberOfTrailingZeros;
        int iHashCode = (obj != null ? obj.hashCode() : 0) * (-862048943);
        int i2 = iHashCode ^ (iHashCode << 16);
        int i3 = i2 & CertificateBody.profileType;
        int i4 = this.f3369c;
        int i5 = (i2 >>> 7) & i4;
        int i6 = 0;
        loop0: while (true) {
            long[] jArr = this.f3367a;
            int i7 = i5 >> 3;
            int i8 = (i5 & 7) << 3;
            long j2 = ((jArr[i7 + 1] << (64 - i8)) & ((-i8) >> 63)) | (jArr[i7] >>> i8);
            long j3 = (((long) i3) * 72340172838076673L) ^ j2;
            for (long j4 = (~j3) & (j3 - 72340172838076673L) & (-9187201950435737472L); j4 != 0; j4 &= j4 - 1) {
                iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j4) >> 3) + i5) & i4;
                if (Intrinsics.c(this.f3368b[iNumberOfTrailingZeros], obj)) {
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
            n(iNumberOfTrailingZeros);
        }
        return z;
    }

    public final void n(int i2) {
        this.d--;
        long[] jArr = this.f3367a;
        int i3 = this.f3369c;
        int i4 = i2 >> 3;
        int i5 = (i2 & 7) << 3;
        long j2 = (jArr[i4] & (~(255 << i5))) | (254 << i5);
        jArr[i4] = j2;
        jArr[(((i2 - 7) & i3) + (i3 & 7)) >> 3] = j2;
        this.f3368b[i2] = null;
    }

    public MutableScatterSet() {
        this(0, 1, null);
    }

    public /* synthetic */ MutableScatterSet(int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 6 : i2);
    }
}
