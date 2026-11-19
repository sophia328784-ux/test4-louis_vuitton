package androidx.collection;

import defpackage.md;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0011\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/collection/MutableLongObjectMap;", "V", "Landroidx/collection/LongObjectMap;", "", "initialCapacity", "<init>", "(I)V", "collection"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MutableLongObjectMap<V> extends LongObjectMap<V> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3303f;

    public MutableLongObjectMap(int i2) {
        super(null);
        if (i2 >= 0) {
            e(ScatterMapKt.e(i2));
        } else {
            md.n("Capacity must be a positive value.");
            throw null;
        }
    }

    public final void c() {
        this.f3280e = 0;
        long[] jArr = this.f3277a;
        if (jArr != ScatterMapKt.f3365a) {
            ArraysKt.u(jArr, -9187201950435737472L);
            long[] jArr2 = this.f3277a;
            int i2 = this.d;
            int i3 = i2 >> 3;
            long j2 = 255 << ((i2 & 7) << 3);
            jArr2[i3] = (jArr2[i3] & (~j2)) | j2;
        }
        ArraysKt.r(this.f3279c, 0, this.d, null);
        this.f3303f = ScatterMapKt.a(this.d) - this.f3280e;
    }

    public final int d(int i2) {
        int i3 = this.d;
        int i4 = i2 & i3;
        int i5 = 0;
        while (true) {
            long[] jArr = this.f3277a;
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

    public final void e(int i2) {
        long[] jArr;
        int iMax = i2 > 0 ? Math.max(7, ScatterMapKt.d(i2)) : 0;
        this.d = iMax;
        if (iMax == 0) {
            jArr = ScatterMapKt.f3365a;
        } else {
            int i3 = ((iMax + 15) & (-8)) >> 3;
            long[] jArr2 = new long[i3];
            Arrays.fill(jArr2, 0, i3, -9187201950435737472L);
            jArr = jArr2;
        }
        this.f3277a = jArr;
        int i4 = iMax >> 3;
        long j2 = 255 << ((iMax & 7) << 3);
        jArr[i4] = (jArr[i4] & (~j2)) | j2;
        this.f3303f = ScatterMapKt.a(this.d) - this.f3280e;
        this.f3278b = new long[iMax];
        this.f3279c = new Object[iMax];
    }

    public final Object f(long j2) {
        int iNumberOfTrailingZeros;
        int iHashCode = Long.hashCode(j2) * (-862048943);
        int i2 = iHashCode ^ (iHashCode << 16);
        int i3 = i2 & CertificateBody.profileType;
        int i4 = this.d;
        int i5 = (i2 >>> 7) & i4;
        int i6 = 0;
        loop0: while (true) {
            long[] jArr = this.f3277a;
            int i7 = i5 >> 3;
            int i8 = (i5 & 7) << 3;
            long j3 = ((jArr[i7 + 1] << (64 - i8)) & ((-i8) >> 63)) | (jArr[i7] >>> i8);
            long j4 = (((long) i3) * 72340172838076673L) ^ j3;
            for (long j5 = (~j4) & (j4 - 72340172838076673L) & (-9187201950435737472L); j5 != 0; j5 &= j5 - 1) {
                iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j5) >> 3) + i5) & i4;
                if (this.f3278b[iNumberOfTrailingZeros] == j2) {
                    break loop0;
                }
            }
            if ((j3 & ((~j3) << 6) & (-9187201950435737472L)) != 0) {
                iNumberOfTrailingZeros = -1;
                break;
            }
            i6 += 8;
            i5 = (i5 + i6) & i4;
        }
        if (iNumberOfTrailingZeros < 0) {
            return null;
        }
        this.f3280e--;
        long[] jArr2 = this.f3277a;
        int i9 = this.d;
        int i10 = iNumberOfTrailingZeros >> 3;
        int i11 = (iNumberOfTrailingZeros & 7) << 3;
        long j6 = (jArr2[i10] & (~(255 << i11))) | (254 << i11);
        jArr2[i10] = j6;
        jArr2[(((iNumberOfTrailingZeros - 7) & i9) + (i9 & 7)) >> 3] = j6;
        Object[] objArr = this.f3279c;
        Object obj = objArr[iNumberOfTrailingZeros];
        objArr[iNumberOfTrailingZeros] = null;
        return obj;
    }

    public final void g(long j2, Object obj) {
        long j3;
        long j4;
        int i2;
        int i3;
        long j5;
        int iNumberOfTrailingZeros;
        long[] jArr;
        Object[] objArr;
        long[] jArr2;
        int i4 = -862048943;
        int iHashCode = Long.hashCode(j2) * (-862048943);
        int i5 = iHashCode ^ (iHashCode << 16);
        int i6 = i5 >>> 7;
        int i7 = i5 & CertificateBody.profileType;
        int i8 = this.d;
        int i9 = i6 & i8;
        int i10 = 0;
        loop0: while (true) {
            long[] jArr3 = this.f3277a;
            int i11 = i9 >> 3;
            int i12 = (i9 & 7) << 3;
            int i13 = 1;
            long j6 = ((jArr3[i11 + 1] << (64 - i12)) & ((-i12) >> 63)) | (jArr3[i11] >>> i12);
            long j7 = i7;
            int i14 = i10;
            int i15 = 0;
            long j8 = j6 ^ (j7 * 72340172838076673L);
            long j9 = (~j8) & (j8 - 72340172838076673L) & (-9187201950435737472L);
            while (j9 != 0) {
                iNumberOfTrailingZeros = (i9 + (Long.numberOfTrailingZeros(j9) >> 3)) & i8;
                int i16 = i4;
                if (this.f3278b[iNumberOfTrailingZeros] == j2) {
                    break loop0;
                }
                j9 &= j9 - 1;
                i4 = i16;
            }
            int i17 = i4;
            if ((((~j6) << 6) & j6 & (-9187201950435737472L)) != 0) {
                int iD = d(i6);
                if (this.f3303f != 0 || ((this.f3277a[iD >> 3] >> ((iD & 7) << 3)) & 255) == 254) {
                    j3 = 255;
                    j4 = j7;
                    i2 = 0;
                    i3 = 1;
                    j5 = 128;
                } else {
                    int i18 = this.d;
                    if (i18 > 8) {
                        j5 = 128;
                        long j10 = this.f3280e;
                        ULong.Companion companion = ULong.INSTANCE;
                        if (Long.compareUnsigned(j10 * 32, ((long) i18) * 25) <= 0) {
                            long[] jArr4 = this.f3277a;
                            int i19 = this.d;
                            long[] jArr5 = this.f3278b;
                            Object[] objArr2 = this.f3279c;
                            int i20 = (i19 + 7) >> 3;
                            j3 = 255;
                            int i21 = 0;
                            while (i21 < i20) {
                                long j11 = jArr4[i21] & (-9187201950435737472L);
                                jArr4[i21] = (-72340172838076674L) & ((~j11) + (j11 >>> 7));
                                i21++;
                                i13 = i13;
                                i15 = i15;
                                j7 = j7;
                            }
                            j4 = j7;
                            i2 = i15;
                            int i22 = i13;
                            char c2 = 7;
                            int iZ = ArraysKt.z(jArr4);
                            int i23 = iZ - 1;
                            long j12 = 72057594037927935L;
                            jArr4[i23] = (jArr4[i23] & 72057594037927935L) | (-72057594037927936L);
                            jArr4[iZ] = jArr4[i2];
                            int i24 = i2;
                            while (i24 != i19) {
                                int i25 = i24 >> 3;
                                int i26 = (i24 & 7) << 3;
                                long j13 = (jArr4[i25] >> i26) & 255;
                                if (j13 != 128 && j13 == 254) {
                                    int iHashCode2 = Long.hashCode(jArr5[i24]) * i17;
                                    int i27 = iHashCode2 ^ (iHashCode2 << 16);
                                    int i28 = i27 >>> 7;
                                    int iD2 = d(i28);
                                    int i29 = i28 & i19;
                                    char c3 = c2;
                                    if (((iD2 - i29) & i19) / 8 == ((i24 - i29) & i19) / 8) {
                                        int i30 = i22;
                                        long j14 = j12;
                                        jArr4[i25] = (((long) (i27 & CertificateBody.profileType)) << i26) | (jArr4[i25] & (~(255 << i26)));
                                        jArr4[jArr4.length - i30] = (jArr4[i2] & j14) | Long.MIN_VALUE;
                                        i24++;
                                        i22 = i30;
                                        c2 = c3;
                                        j12 = j14;
                                    } else {
                                        int i31 = i22;
                                        long j15 = j12;
                                        int i32 = iD2 >> 3;
                                        long j16 = jArr4[i32];
                                        int i33 = (iD2 & 7) << 3;
                                        if (((j16 >> i33) & 255) == 128) {
                                            jArr2 = jArr5;
                                            objArr = objArr2;
                                            jArr4[i32] = (j16 & (~(255 << i33))) | (((long) (i27 & CertificateBody.profileType)) << i33);
                                            jArr4[i25] = (jArr4[i25] & (~(255 << i26))) | (128 << i26);
                                            jArr2[iD2] = jArr2[i24];
                                            jArr2[i24] = 0;
                                            objArr[iD2] = objArr[i24];
                                            objArr[i24] = null;
                                        } else {
                                            objArr = objArr2;
                                            jArr2 = jArr5;
                                            jArr4[i32] = (((long) (i27 & CertificateBody.profileType)) << i33) | (j16 & (~(255 << i33)));
                                            long j17 = jArr2[iD2];
                                            jArr2[iD2] = jArr2[i24];
                                            jArr2[i24] = j17;
                                            Object obj2 = objArr[iD2];
                                            objArr[iD2] = objArr[i24];
                                            objArr[i24] = obj2;
                                            i24--;
                                        }
                                        jArr4[jArr4.length - 1] = (jArr4[i2] & j15) | Long.MIN_VALUE;
                                        i24++;
                                        jArr5 = jArr2;
                                        i22 = i31;
                                        c2 = c3;
                                        j12 = j15;
                                        objArr2 = objArr;
                                    }
                                } else {
                                    i24++;
                                }
                            }
                            i3 = i22;
                            this.f3303f = ScatterMapKt.a(this.d) - this.f3280e;
                        }
                        iD = d(i6);
                    } else {
                        j5 = 128;
                    }
                    j3 = 255;
                    j4 = j7;
                    i2 = 0;
                    i3 = 1;
                    int iC = ScatterMapKt.c(this.d);
                    long[] jArr6 = this.f3277a;
                    long[] jArr7 = this.f3278b;
                    Object[] objArr3 = this.f3279c;
                    int i34 = this.d;
                    e(iC);
                    long[] jArr8 = this.f3277a;
                    long[] jArr9 = this.f3278b;
                    Object[] objArr4 = this.f3279c;
                    int i35 = this.d;
                    int i36 = 0;
                    while (i36 < i34) {
                        if (((jArr6[i36 >> 3] >> ((i36 & 7) << 3)) & 255) < j5) {
                            long j18 = jArr7[i36];
                            int iHashCode3 = Long.hashCode(j18) * i17;
                            int i37 = iHashCode3 ^ (iHashCode3 << 16);
                            int iD3 = d(i37 >>> 7);
                            jArr = jArr8;
                            long j19 = i37 & CertificateBody.profileType;
                            int i38 = iD3 >> 3;
                            int i39 = (iD3 & 7) << 3;
                            long j20 = (jArr[i38] & (~(255 << i39))) | (j19 << i39);
                            jArr[i38] = j20;
                            jArr[(((iD3 - 7) & i35) + (i35 & 7)) >> 3] = j20;
                            jArr9[iD3] = j18;
                            objArr4[iD3] = objArr3[i36];
                        } else {
                            jArr = jArr8;
                        }
                        i36++;
                        jArr6 = jArr6;
                        jArr8 = jArr;
                    }
                    iD = d(i6);
                }
                iNumberOfTrailingZeros = iD;
                this.f3280e++;
                int i40 = this.f3303f;
                long[] jArr10 = this.f3277a;
                int i41 = iNumberOfTrailingZeros >> 3;
                long j21 = jArr10[i41];
                int i42 = (iNumberOfTrailingZeros & 7) << 3;
                if (((j21 >> i42) & j3) != j5) {
                    i3 = i2;
                }
                this.f3303f = i40 - i3;
                int i43 = this.d;
                long j22 = (j21 & (~(j3 << i42))) | (j4 << i42);
                jArr10[i41] = j22;
                jArr10[(((iNumberOfTrailingZeros - 7) & i43) + (i43 & 7)) >> 3] = j22;
                break;
            }
            i10 = i14 + 8;
            i9 = (i9 + i10) & i8;
            i4 = i17;
        }
        this.f3278b[iNumberOfTrailingZeros] = j2;
        this.f3279c[iNumberOfTrailingZeros] = obj;
    }

    public /* synthetic */ MutableLongObjectMap(int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 6 : i2);
    }

    public MutableLongObjectMap() {
        this(0, 1, null);
    }
}
