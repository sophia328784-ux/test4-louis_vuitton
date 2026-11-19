package androidx.collection;

import defpackage.md;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0011\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/collection/MutableIntObjectMap;", "V", "Landroidx/collection/IntObjectMap;", "", "initialCapacity", "<init>", "(I)V", "collection"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MutableIntObjectMap<V> extends IntObjectMap<V> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3301f;

    public MutableIntObjectMap(int i2) {
        super(null);
        if (i2 >= 0) {
            f(ScatterMapKt.e(i2));
        } else {
            md.n("Capacity must be a positive value.");
            throw null;
        }
    }

    public final void c() {
        this.f3261e = 0;
        long[] jArr = this.f3258a;
        if (jArr != ScatterMapKt.f3365a) {
            ArraysKt.u(jArr, -9187201950435737472L);
            long[] jArr2 = this.f3258a;
            int i2 = this.d;
            int i3 = i2 >> 3;
            long j2 = 255 << ((i2 & 7) << 3);
            jArr2[i3] = (jArr2[i3] & (~j2)) | j2;
        }
        ArraysKt.r(this.f3260c, 0, this.d, null);
        this.f3301f = ScatterMapKt.a(this.d) - this.f3261e;
    }

    public final int d(int i2) {
        long j2;
        long j3;
        int i3;
        long j4;
        long[] jArr;
        int[] iArr;
        Object[] objArr;
        int i4 = -862048943;
        int iHashCode = Integer.hashCode(i2) * (-862048943);
        int i5 = iHashCode ^ (iHashCode << 16);
        int i6 = i5 >>> 7;
        int i7 = i5 & CertificateBody.profileType;
        int i8 = this.d;
        int i9 = i6 & i8;
        int i10 = 0;
        while (true) {
            long[] jArr2 = this.f3258a;
            int i11 = i9 >> 3;
            int i12 = (i9 & 7) << 3;
            int i13 = 1;
            long j5 = ((jArr2[i11 + 1] << (64 - i12)) & ((-i12) >> 63)) | (jArr2[i11] >>> i12);
            long j6 = i7;
            int i14 = i10;
            int i15 = 0;
            long j7 = j5 ^ (j6 * 72340172838076673L);
            long j8 = (~j7) & (j7 - 72340172838076673L) & (-9187201950435737472L);
            while (j8 != 0) {
                int iNumberOfTrailingZeros = (i9 + (Long.numberOfTrailingZeros(j8) >> 3)) & i8;
                int i16 = i4;
                int i17 = i15;
                if (this.f3259b[iNumberOfTrailingZeros] == i2) {
                    return iNumberOfTrailingZeros;
                }
                j8 &= j8 - 1;
                i4 = i16;
                i15 = i17;
            }
            int i18 = i4;
            int i19 = i15;
            if ((((~j5) << 6) & j5 & (-9187201950435737472L)) != 0) {
                int iE = e(i6);
                long j9 = 255;
                if (this.f3301f != 0 || ((this.f3258a[iE >> 3] >> ((iE & 7) << 3)) & 255) == 254) {
                    j2 = 255;
                    j3 = j6;
                    i3 = 1;
                    j4 = 128;
                } else {
                    int i20 = this.d;
                    if (i20 > 8) {
                        j4 = 128;
                        long j10 = this.f3261e;
                        ULong.Companion companion = ULong.INSTANCE;
                        if (Long.compareUnsigned(j10 * 32, ((long) i20) * 25) <= 0) {
                            long[] jArr3 = this.f3258a;
                            int i21 = this.d;
                            int[] iArr2 = this.f3259b;
                            Object[] objArr2 = this.f3260c;
                            int i22 = (i21 + 7) >> 3;
                            int i23 = i19;
                            while (i23 < i22) {
                                long j11 = j9;
                                long j12 = jArr3[i23] & (-9187201950435737472L);
                                jArr3[i23] = (-72340172838076674L) & ((~j12) + (j12 >>> 7));
                                i23++;
                                j6 = j6;
                                j9 = j11;
                            }
                            j2 = j9;
                            j3 = j6;
                            int iZ = ArraysKt.z(jArr3);
                            int i24 = iZ - 1;
                            long j13 = 72057594037927935L;
                            jArr3[i24] = (jArr3[i24] & 72057594037927935L) | (-72057594037927936L);
                            jArr3[iZ] = jArr3[i19];
                            int i25 = i19;
                            while (i25 != i21) {
                                int i26 = i25 >> 3;
                                int i27 = (i25 & 7) << 3;
                                long j14 = (jArr3[i26] >> i27) & j2;
                                if (j14 != 128 && j14 == 254) {
                                    int iHashCode2 = Integer.hashCode(iArr2[i25]) * i18;
                                    int i28 = iHashCode2 ^ (iHashCode2 << 16);
                                    int i29 = i28 >>> 7;
                                    int iE2 = e(i29);
                                    int i30 = i29 & i21;
                                    if (((iE2 - i30) & i21) / 8 == ((i25 - i30) & i21) / 8) {
                                        long j15 = j13;
                                        jArr3[i26] = ((i28 & CertificateBody.profileType) << i27) | ((~(j2 << i27)) & jArr3[i26]);
                                        jArr3[jArr3.length - i13] = (jArr3[i19] & j15) | Long.MIN_VALUE;
                                        i25++;
                                        j13 = j15;
                                    } else {
                                        long j16 = j13;
                                        int i31 = iE2 >> 3;
                                        long j17 = jArr3[i31];
                                        int i32 = (iE2 & 7) << 3;
                                        if (((j17 >> i32) & j2) == 128) {
                                            iArr = iArr2;
                                            objArr = objArr2;
                                            jArr3[i31] = ((~(j2 << i32)) & j17) | (((long) (i28 & CertificateBody.profileType)) << i32);
                                            jArr3[i26] = (jArr3[i26] & (~(j2 << i27))) | (128 << i27);
                                            iArr[iE2] = iArr[i25];
                                            iArr[i25] = i19;
                                            objArr[iE2] = objArr[i25];
                                            objArr[i25] = null;
                                        } else {
                                            iArr = iArr2;
                                            objArr = objArr2;
                                            jArr3[i31] = (((long) (i28 & CertificateBody.profileType)) << i32) | ((~(j2 << i32)) & j17);
                                            int i33 = iArr[iE2];
                                            iArr[iE2] = iArr[i25];
                                            iArr[i25] = i33;
                                            Object obj = objArr[iE2];
                                            objArr[iE2] = objArr[i25];
                                            objArr[i25] = obj;
                                            i25--;
                                        }
                                        jArr3[jArr3.length - 1] = (jArr3[i19] & j16) | Long.MIN_VALUE;
                                        i25++;
                                        j13 = j16;
                                        i13 = i13;
                                        iArr2 = iArr;
                                        objArr2 = objArr;
                                    }
                                } else {
                                    i25++;
                                }
                            }
                            i3 = i13;
                            this.f3301f = ScatterMapKt.a(this.d) - this.f3261e;
                        }
                        iE = e(i6);
                    } else {
                        j4 = 128;
                    }
                    j2 = 255;
                    j3 = j6;
                    i3 = 1;
                    int iC = ScatterMapKt.c(this.d);
                    long[] jArr4 = this.f3258a;
                    int[] iArr3 = this.f3259b;
                    Object[] objArr3 = this.f3260c;
                    int i34 = this.d;
                    f(iC);
                    long[] jArr5 = this.f3258a;
                    int[] iArr4 = this.f3259b;
                    Object[] objArr4 = this.f3260c;
                    int i35 = this.d;
                    int i36 = i19;
                    while (i36 < i34) {
                        if (((jArr4[i36 >> 3] >> ((i36 & 7) << 3)) & 255) < j4) {
                            int i37 = iArr3[i36];
                            int iHashCode3 = Integer.hashCode(i37) * i18;
                            int i38 = iHashCode3 ^ (iHashCode3 << 16);
                            int iE3 = e(i38 >>> 7);
                            long j18 = i38 & CertificateBody.profileType;
                            int i39 = iE3 >> 3;
                            int i40 = (iE3 & 7) << 3;
                            jArr = jArr5;
                            long j19 = (jArr5[i39] & (~(255 << i40))) | (j18 << i40);
                            jArr[i39] = j19;
                            jArr[(((iE3 - 7) & i35) + (i35 & 7)) >> 3] = j19;
                            iArr4[iE3] = i37;
                            objArr4[iE3] = objArr3[i36];
                        } else {
                            jArr = jArr5;
                        }
                        i36++;
                        jArr4 = jArr4;
                        jArr5 = jArr;
                    }
                    iE = e(i6);
                }
                this.f3261e++;
                int i41 = this.f3301f;
                long[] jArr6 = this.f3258a;
                int i42 = iE >> 3;
                long j20 = jArr6[i42];
                int i43 = (iE & 7) << 3;
                if (((j20 >> i43) & j2) != j4) {
                    i3 = i19;
                }
                this.f3301f = i41 - i3;
                int i44 = this.d;
                long j21 = (j20 & (~(j2 << i43))) | (j3 << i43);
                jArr6[i42] = j21;
                jArr6[(((iE - 7) & i44) + (i44 & 7)) >> 3] = j21;
                return iE;
            }
            i10 = i14 + 8;
            i9 = (i9 + i10) & i8;
            i4 = i18;
        }
    }

    public final int e(int i2) {
        int i3 = this.d;
        int i4 = i2 & i3;
        int i5 = 0;
        while (true) {
            long[] jArr = this.f3258a;
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

    public final void f(int i2) {
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
        this.f3258a = jArr;
        int i4 = iMax >> 3;
        long j2 = 255 << ((iMax & 7) << 3);
        jArr[i4] = (jArr[i4] & (~j2)) | j2;
        this.f3301f = ScatterMapKt.a(this.d) - this.f3261e;
        this.f3259b = new int[iMax];
        this.f3260c = new Object[iMax];
    }

    public final Object g(int i2) {
        int iNumberOfTrailingZeros;
        int iHashCode = Integer.hashCode(i2) * (-862048943);
        int i3 = iHashCode ^ (iHashCode << 16);
        int i4 = i3 & CertificateBody.profileType;
        int i5 = this.d;
        int i6 = (i3 >>> 7) & i5;
        int i7 = 0;
        loop0: while (true) {
            long[] jArr = this.f3258a;
            int i8 = i6 >> 3;
            int i9 = (i6 & 7) << 3;
            long j2 = ((jArr[i8 + 1] << (64 - i9)) & ((-i9) >> 63)) | (jArr[i8] >>> i9);
            long j3 = (((long) i4) * 72340172838076673L) ^ j2;
            for (long j4 = (~j3) & (j3 - 72340172838076673L) & (-9187201950435737472L); j4 != 0; j4 &= j4 - 1) {
                iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j4) >> 3) + i6) & i5;
                if (this.f3259b[iNumberOfTrailingZeros] == i2) {
                    break loop0;
                }
            }
            if ((j2 & ((~j2) << 6) & (-9187201950435737472L)) != 0) {
                iNumberOfTrailingZeros = -1;
                break;
            }
            i7 += 8;
            i6 = (i6 + i7) & i5;
        }
        if (iNumberOfTrailingZeros >= 0) {
            return h(iNumberOfTrailingZeros);
        }
        return null;
    }

    public final Object h(int i2) {
        this.f3261e--;
        long[] jArr = this.f3258a;
        int i3 = this.d;
        int i4 = i2 >> 3;
        int i5 = (i2 & 7) << 3;
        long j2 = (jArr[i4] & (~(255 << i5))) | (254 << i5);
        jArr[i4] = j2;
        jArr[(((i2 - 7) & i3) + (i3 & 7)) >> 3] = j2;
        Object[] objArr = this.f3260c;
        Object obj = objArr[i2];
        objArr[i2] = null;
        return obj;
    }

    public final void i(int i2, Object obj) {
        int iD = d(i2);
        this.f3259b[iD] = i2;
        this.f3260c[iD] = obj;
    }

    public /* synthetic */ MutableIntObjectMap(int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 6 : i2);
    }

    public MutableIntObjectMap() {
        this(0, 1, null);
    }
}
