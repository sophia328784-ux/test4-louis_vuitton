package androidx.collection;

import defpackage.md;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/collection/MutableIntSet;", "Landroidx/collection/IntSet;", "", "initialCapacity", "<init>", "(I)V", "collection"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MutableIntSet extends IntSet {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3302e;

    public MutableIntSet(int i2) {
        super(null);
        if (i2 >= 0) {
            f(ScatterMapKt.e(i2));
        } else {
            md.n("Capacity must be a positive value.");
            throw null;
        }
    }

    public final boolean b(int i2) {
        int i3 = this.d;
        this.f3264b[d(i2)] = i2;
        return this.d != i3;
    }

    public final void c() {
        this.d = 0;
        long[] jArr = this.f3263a;
        if (jArr != ScatterMapKt.f3365a) {
            ArraysKt.u(jArr, -9187201950435737472L);
            long[] jArr2 = this.f3263a;
            int i2 = this.f3265c;
            int i3 = i2 >> 3;
            long j2 = 255 << ((i2 & 7) << 3);
            jArr2[i3] = (jArr2[i3] & (~j2)) | j2;
        }
        this.f3302e = ScatterMapKt.a(this.f3265c) - this.d;
    }

    public final int d(int i2) {
        long j2;
        long j3;
        int i3;
        long j4;
        long[] jArr;
        int[] iArr;
        int i4;
        int i5 = -862048943;
        int iHashCode = Integer.hashCode(i2) * (-862048943);
        int i6 = iHashCode ^ (iHashCode << 16);
        int i7 = i6 >>> 7;
        int i8 = i6 & CertificateBody.profileType;
        int i9 = this.f3265c;
        int i10 = i7 & i9;
        int i11 = 0;
        while (true) {
            long[] jArr2 = this.f3263a;
            int i12 = i10 >> 3;
            int i13 = (i10 & 7) << 3;
            int i14 = 1;
            long j5 = ((jArr2[i12 + 1] << (64 - i13)) & ((-i13) >> 63)) | (jArr2[i12] >>> i13);
            long j6 = i8;
            int i15 = i11;
            int i16 = 0;
            long j7 = j5 ^ (j6 * 72340172838076673L);
            long j8 = (~j7) & (j7 - 72340172838076673L) & (-9187201950435737472L);
            while (j8 != 0) {
                int iNumberOfTrailingZeros = (i10 + (Long.numberOfTrailingZeros(j8) >> 3)) & i9;
                int i17 = i5;
                int i18 = i16;
                if (this.f3264b[iNumberOfTrailingZeros] == i2) {
                    return iNumberOfTrailingZeros;
                }
                j8 &= j8 - 1;
                i5 = i17;
                i16 = i18;
            }
            int i19 = i5;
            int i20 = i16;
            char c2 = '\b';
            if ((((~j5) << 6) & j5 & (-9187201950435737472L)) != 0) {
                int iE = e(i7);
                long j9 = 255;
                if (this.f3302e != 0 || ((this.f3263a[iE >> 3] >> ((iE & 7) << 3)) & 255) == 254) {
                    j2 = 255;
                    j3 = j6;
                    i3 = 1;
                    j4 = 128;
                } else {
                    int i21 = this.f3265c;
                    if (i21 > 8) {
                        j4 = 128;
                        long j10 = this.d;
                        ULong.Companion companion = ULong.INSTANCE;
                        if (Long.compareUnsigned(j10 * 32, ((long) i21) * 25) <= 0) {
                            long[] jArr3 = this.f3263a;
                            int i22 = this.f3265c;
                            int[] iArr2 = this.f3264b;
                            int i23 = (i22 + 7) >> 3;
                            int i24 = i20;
                            while (i24 < i23) {
                                char c3 = c2;
                                long j11 = jArr3[i24] & (-9187201950435737472L);
                                jArr3[i24] = (-72340172838076674L) & ((~j11) + (j11 >>> 7));
                                i24++;
                                j6 = j6;
                                c2 = c3;
                                j9 = j9;
                            }
                            j2 = j9;
                            j3 = j6;
                            int iZ = ArraysKt.z(jArr3);
                            int i25 = iZ - 1;
                            long j12 = 72057594037927935L;
                            jArr3[i25] = (jArr3[i25] & 72057594037927935L) | (-72057594037927936L);
                            jArr3[iZ] = jArr3[i20];
                            int i26 = i20;
                            while (i26 != i22) {
                                int i27 = i26 >> 3;
                                int i28 = (i26 & 7) << 3;
                                long j13 = (jArr3[i27] >> i28) & j2;
                                if (j13 != 128 && j13 == 254) {
                                    int iHashCode2 = Integer.hashCode(iArr2[i26]) * i19;
                                    int i29 = iHashCode2 ^ (iHashCode2 << 16);
                                    int i30 = i29 >>> 7;
                                    int iE2 = e(i30);
                                    int i31 = i30 & i22;
                                    if (((iE2 - i31) & i22) / 8 == ((i26 - i31) & i22) / 8) {
                                        long j14 = j12;
                                        jArr3[i27] = ((i29 & CertificateBody.profileType) << i28) | ((~(j2 << i28)) & jArr3[i27]);
                                        jArr3[jArr3.length - i14] = (jArr3[i20] & j14) | Long.MIN_VALUE;
                                        i26++;
                                        j12 = j14;
                                    } else {
                                        long j15 = j12;
                                        int i32 = iE2 >> 3;
                                        long j16 = jArr3[i32];
                                        int i33 = (iE2 & 7) << 3;
                                        if (((j16 >> i33) & j2) == 128) {
                                            iArr = iArr2;
                                            int i34 = i26;
                                            jArr3[i32] = ((~(j2 << i33)) & j16) | (((long) (i29 & CertificateBody.profileType)) << i33);
                                            jArr3[i27] = (jArr3[i27] & (~(j2 << i28))) | (128 << i28);
                                            iArr[iE2] = iArr[i34];
                                            iArr[i34] = i20;
                                            i4 = i34;
                                        } else {
                                            iArr = iArr2;
                                            int i35 = i26;
                                            jArr3[i32] = (((long) (i29 & CertificateBody.profileType)) << i33) | ((~(j2 << i33)) & j16);
                                            int i36 = iArr[iE2];
                                            iArr[iE2] = iArr[i35];
                                            iArr[i35] = i36;
                                            i4 = i35 - 1;
                                        }
                                        jArr3[jArr3.length - i14] = (jArr3[i20] & j15) | Long.MIN_VALUE;
                                        i26 = i4 + i14;
                                        i14 = i14;
                                        j12 = j15;
                                        iArr2 = iArr;
                                    }
                                } else {
                                    i26++;
                                }
                            }
                            i3 = i14;
                            this.f3302e = ScatterMapKt.a(this.f3265c) - this.d;
                        }
                        iE = e(i7);
                    } else {
                        j4 = 128;
                    }
                    j2 = 255;
                    j3 = j6;
                    i3 = 1;
                    int iC = ScatterMapKt.c(this.f3265c);
                    long[] jArr4 = this.f3263a;
                    int[] iArr3 = this.f3264b;
                    int i37 = this.f3265c;
                    f(iC);
                    long[] jArr5 = this.f3263a;
                    int[] iArr4 = this.f3264b;
                    int i38 = this.f3265c;
                    int i39 = i20;
                    while (i39 < i37) {
                        if (((jArr4[i39 >> 3] >> ((i39 & 7) << 3)) & 255) < j4) {
                            int i40 = iArr3[i39];
                            int iHashCode3 = Integer.hashCode(i40) * i19;
                            int i41 = iHashCode3 ^ (iHashCode3 << 16);
                            int iE3 = e(i41 >>> 7);
                            long j17 = i41 & CertificateBody.profileType;
                            int i42 = iE3 >> 3;
                            int i43 = (iE3 & 7) << 3;
                            jArr = jArr5;
                            long j18 = (jArr5[i42] & (~(255 << i43))) | (j17 << i43);
                            jArr[i42] = j18;
                            jArr[(((iE3 - 7) & i38) + (i38 & 7)) >> 3] = j18;
                            iArr4[iE3] = i40;
                        } else {
                            jArr = jArr5;
                        }
                        i39++;
                        jArr4 = jArr4;
                        jArr5 = jArr;
                    }
                    iE = e(i7);
                }
                this.d += i3;
                int i44 = this.f3302e;
                long[] jArr6 = this.f3263a;
                int i45 = iE >> 3;
                long j19 = jArr6[i45];
                int i46 = (iE & 7) << 3;
                if (((j19 >> i46) & j2) != j4) {
                    i3 = i20;
                }
                this.f3302e = i44 - i3;
                int i47 = this.f3265c;
                long j20 = (j19 & (~(j2 << i46))) | (j3 << i46);
                jArr6[i45] = j20;
                jArr6[(((iE - 7) & i47) + (i47 & 7)) >> 3] = j20;
                return iE;
            }
            i11 = i15 + 8;
            i10 = (i10 + i11) & i9;
            i5 = i19;
        }
    }

    public final int e(int i2) {
        int i3 = this.f3265c;
        int i4 = i2 & i3;
        int i5 = 0;
        while (true) {
            long[] jArr = this.f3263a;
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
        this.f3265c = iMax;
        if (iMax == 0) {
            jArr = ScatterMapKt.f3365a;
        } else {
            int i3 = ((iMax + 15) & (-8)) >> 3;
            long[] jArr2 = new long[i3];
            Arrays.fill(jArr2, 0, i3, -9187201950435737472L);
            jArr = jArr2;
        }
        this.f3263a = jArr;
        int i4 = iMax >> 3;
        long j2 = 255 << ((iMax & 7) << 3);
        jArr[i4] = (jArr[i4] & (~j2)) | j2;
        this.f3302e = ScatterMapKt.a(this.f3265c) - this.d;
        this.f3264b = new int[iMax];
    }

    public final boolean g(int i2) {
        int iNumberOfTrailingZeros;
        int iHashCode = Integer.hashCode(i2) * (-862048943);
        int i3 = iHashCode ^ (iHashCode << 16);
        int i4 = i3 & CertificateBody.profileType;
        int i5 = this.f3265c;
        int i6 = (i3 >>> 7) & i5;
        int i7 = 0;
        loop0: while (true) {
            long[] jArr = this.f3263a;
            int i8 = i6 >> 3;
            int i9 = (i6 & 7) << 3;
            long j2 = ((jArr[i8 + 1] << (64 - i9)) & ((-i9) >> 63)) | (jArr[i8] >>> i9);
            long j3 = (((long) i4) * 72340172838076673L) ^ j2;
            for (long j4 = (~j3) & (j3 - 72340172838076673L) & (-9187201950435737472L); j4 != 0; j4 &= j4 - 1) {
                iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j4) >> 3) + i6) & i5;
                if (this.f3264b[iNumberOfTrailingZeros] == i2) {
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
        boolean z = iNumberOfTrailingZeros >= 0;
        if (z) {
            h(iNumberOfTrailingZeros);
        }
        return z;
    }

    public final void h(int i2) {
        this.d--;
        long[] jArr = this.f3263a;
        int i3 = this.f3265c;
        int i4 = i2 >> 3;
        int i5 = (i2 & 7) << 3;
        long j2 = (jArr[i4] & (~(255 << i5))) | (254 << i5);
        jArr[i4] = j2;
        jArr[(((i2 - 7) & i3) + (i3 & 7)) >> 3] = j2;
    }

    public MutableIntSet() {
        this(0, 1, null);
    }

    public /* synthetic */ MutableIntSet(int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 6 : i2);
    }
}
