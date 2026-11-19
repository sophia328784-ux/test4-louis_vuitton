package androidx.collection;

import defpackage.md;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/collection/MutableIntIntMap;", "Landroidx/collection/IntIntMap;", "", "initialCapacity", "<init>", "(I)V", "collection"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MutableIntIntMap extends IntIntMap {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3300f;

    public MutableIntIntMap(int i2) {
        super(null);
        if (i2 >= 0) {
            e(ScatterMapKt.e(i2));
        } else {
            md.n("Capacity must be a positive value.");
            throw null;
        }
    }

    public final void c() {
        this.f3252e = 0;
        long[] jArr = this.f3249a;
        if (jArr != ScatterMapKt.f3365a) {
            ArraysKt.u(jArr, -9187201950435737472L);
            long[] jArr2 = this.f3249a;
            int i2 = this.d;
            int i3 = i2 >> 3;
            long j2 = 255 << ((i2 & 7) << 3);
            jArr2[i3] = (jArr2[i3] & (~j2)) | j2;
        }
        this.f3300f = ScatterMapKt.a(this.d) - this.f3252e;
    }

    public final int d(int i2) {
        int i3 = this.d;
        int i4 = i2 & i3;
        int i5 = 0;
        while (true) {
            long[] jArr = this.f3249a;
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
        this.f3249a = jArr;
        int i4 = iMax >> 3;
        long j2 = 255 << ((iMax & 7) << 3);
        jArr[i4] = (jArr[i4] & (~j2)) | j2;
        this.f3300f = ScatterMapKt.a(this.d) - this.f3252e;
        this.f3250b = new int[iMax];
        this.f3251c = new int[iMax];
    }

    public final void f(int i2, int i3) {
        long j2;
        long j3;
        int i4;
        int i5;
        long j4;
        int iNumberOfTrailingZeros;
        long[] jArr;
        int[] iArr;
        int[] iArr2;
        int i6 = i2;
        int i7 = -862048943;
        int iHashCode = Integer.hashCode(i6) * (-862048943);
        int i8 = iHashCode ^ (iHashCode << 16);
        int i9 = i8 >>> 7;
        int i10 = i8 & CertificateBody.profileType;
        int i11 = this.d;
        int i12 = i9 & i11;
        int i13 = 0;
        loop0: while (true) {
            long[] jArr2 = this.f3249a;
            int i14 = i12 >> 3;
            int i15 = (i12 & 7) << 3;
            int i16 = 1;
            int i17 = i13;
            int i18 = 0;
            long j5 = (((-i15) >> 63) & (jArr2[i14 + 1] << (64 - i15))) | (jArr2[i14] >>> i15);
            long j6 = i10;
            long j7 = j5 ^ (j6 * 72340172838076673L);
            long j8 = (j7 - 72340172838076673L) & (~j7) & (-9187201950435737472L);
            while (j8 != 0) {
                iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j8) >> 3) + i12) & i11;
                int i19 = i7;
                if (this.f3250b[iNumberOfTrailingZeros] == i6) {
                    break loop0;
                }
                j8 &= j8 - 1;
                i7 = i19;
            }
            int i20 = i7;
            if ((j5 & ((~j5) << 6) & (-9187201950435737472L)) != 0) {
                int iD = d(i9);
                long j9 = 255;
                if (this.f3300f != 0 || ((this.f3249a[iD >> 3] >> ((iD & 7) << 3)) & 255) == 254) {
                    j2 = j6;
                    j3 = 255;
                    i4 = 1;
                    i5 = 0;
                    j4 = 128;
                } else {
                    int i21 = this.d;
                    if (i21 > 8) {
                        j4 = 128;
                        long j10 = this.f3252e;
                        ULong.Companion companion = ULong.INSTANCE;
                        if (Long.compareUnsigned(j10 * 32, ((long) i21) * 25) <= 0) {
                            long[] jArr3 = this.f3249a;
                            int i22 = this.d;
                            int[] iArr3 = this.f3250b;
                            int[] iArr4 = this.f3251c;
                            int i23 = (i22 + 7) >> 3;
                            int i24 = 0;
                            while (i24 < i23) {
                                long j11 = jArr3[i24] & (-9187201950435737472L);
                                jArr3[i24] = (-72340172838076674L) & ((~j11) + (j11 >>> 7));
                                i24++;
                                j9 = j9;
                                j6 = j6;
                            }
                            j2 = j6;
                            j3 = j9;
                            char c2 = 7;
                            int iZ = ArraysKt.z(jArr3);
                            int i25 = iZ - 1;
                            jArr3[i25] = (jArr3[i25] & 72057594037927935L) | (-72057594037927936L);
                            jArr3[iZ] = jArr3[0];
                            int i26 = 0;
                            while (i26 != i22) {
                                int i27 = i26 >> 3;
                                int i28 = (i26 & 7) << 3;
                                long j12 = (jArr3[i27] >> i28) & j3;
                                if (j12 != 128 && j12 == 254) {
                                    int iHashCode2 = Integer.hashCode(iArr3[i26]) * i20;
                                    int i29 = iHashCode2 ^ (iHashCode2 << 16);
                                    int i30 = i29 >>> 7;
                                    int iD2 = d(i30);
                                    int i31 = i30 & i22;
                                    char c3 = c2;
                                    if (((iD2 - i31) & i22) / 8 == ((i26 - i31) & i22) / 8) {
                                        int i32 = i18;
                                        jArr3[i27] = (((long) (i29 & CertificateBody.profileType)) << i28) | (jArr3[i27] & (~(j3 << i28)));
                                        jArr3[jArr3.length - 1] = (jArr3[i32] & 72057594037927935L) | Long.MIN_VALUE;
                                        i26++;
                                        i16 = i16;
                                        c2 = c3;
                                        i18 = i32;
                                    } else {
                                        int i33 = i16;
                                        int i34 = i18;
                                        int i35 = iD2 >> 3;
                                        long j13 = jArr3[i35];
                                        int i36 = (iD2 & 7) << 3;
                                        if (((j13 >> i36) & j3) == 128) {
                                            iArr = iArr3;
                                            iArr2 = iArr4;
                                            jArr3[i35] = ((~(j3 << i36)) & j13) | (((long) (i29 & CertificateBody.profileType)) << i36);
                                            jArr3[i27] = (jArr3[i27] & (~(j3 << i28))) | (128 << i28);
                                            iArr[iD2] = iArr[i26];
                                            iArr[i26] = i34;
                                            iArr2[iD2] = iArr2[i26];
                                            iArr2[i26] = i34;
                                        } else {
                                            iArr = iArr3;
                                            iArr2 = iArr4;
                                            jArr3[i35] = (((long) (i29 & CertificateBody.profileType)) << i36) | ((~(j3 << i36)) & j13);
                                            int i37 = iArr[iD2];
                                            iArr[iD2] = iArr[i26];
                                            iArr[i26] = i37;
                                            int i38 = iArr2[iD2];
                                            iArr2[iD2] = iArr2[i26];
                                            iArr2[i26] = i38;
                                            i26--;
                                        }
                                        jArr3[jArr3.length - 1] = (jArr3[i34] & 72057594037927935L) | Long.MIN_VALUE;
                                        i26++;
                                        i16 = i33;
                                        c2 = c3;
                                        i18 = i34;
                                        iArr3 = iArr;
                                        iArr4 = iArr2;
                                    }
                                } else {
                                    i26++;
                                }
                            }
                            i4 = i16;
                            i5 = i18;
                            this.f3300f = ScatterMapKt.a(this.d) - this.f3252e;
                        }
                        iD = d(i9);
                    } else {
                        j4 = 128;
                    }
                    j2 = j6;
                    j3 = 255;
                    i4 = 1;
                    i5 = 0;
                    int iC = ScatterMapKt.c(this.d);
                    long[] jArr4 = this.f3249a;
                    int[] iArr5 = this.f3250b;
                    int[] iArr6 = this.f3251c;
                    int i39 = this.d;
                    e(iC);
                    long[] jArr5 = this.f3249a;
                    int[] iArr7 = this.f3250b;
                    int[] iArr8 = this.f3251c;
                    int i40 = this.d;
                    int i41 = 0;
                    while (i41 < i39) {
                        if (((jArr4[i41 >> 3] >> ((i41 & 7) << 3)) & 255) < j4) {
                            int i42 = iArr5[i41];
                            int iHashCode3 = Integer.hashCode(i42) * i20;
                            int i43 = iHashCode3 ^ (iHashCode3 << 16);
                            int iD3 = d(i43 >>> 7);
                            jArr = jArr5;
                            long j14 = i43 & CertificateBody.profileType;
                            int i44 = iD3 >> 3;
                            int i45 = (iD3 & 7) << 3;
                            long j15 = (jArr[i44] & (~(255 << i45))) | (j14 << i45);
                            jArr[i44] = j15;
                            jArr[(((iD3 - 7) & i40) + (i40 & 7)) >> 3] = j15;
                            iArr7[iD3] = i42;
                            iArr8[iD3] = iArr6[i41];
                        } else {
                            jArr = jArr5;
                        }
                        i41++;
                        jArr5 = jArr;
                    }
                    iD = d(i9);
                }
                this.f3252e++;
                int i46 = this.f3300f;
                long[] jArr6 = this.f3249a;
                int i47 = iD >> 3;
                long j16 = jArr6[i47];
                int i48 = (iD & 7) << 3;
                if (((j16 >> i48) & j3) == j4) {
                    i5 = i4;
                }
                this.f3300f = i46 - i5;
                int i49 = this.d;
                long j17 = (j16 & (~(j3 << i48))) | (j2 << i48);
                jArr6[i47] = j17;
                jArr6[(((iD - 7) & i49) + (i49 & 7)) >> 3] = j17;
                iNumberOfTrailingZeros = ~iD;
                break;
            }
            i13 = i17 + 8;
            i12 = (i12 + i13) & i11;
            i6 = i2;
            i7 = i20;
        }
        if (iNumberOfTrailingZeros < 0) {
            iNumberOfTrailingZeros = ~iNumberOfTrailingZeros;
        }
        this.f3250b[iNumberOfTrailingZeros] = i2;
        this.f3251c[iNumberOfTrailingZeros] = i3;
    }

    public MutableIntIntMap() {
        this(0, 1, null);
    }

    public /* synthetic */ MutableIntIntMap(int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 6 : i2);
    }
}
