package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import defpackage.md;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003B\u0011\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/collection/MutableScatterMap;", "K", "V", "Landroidx/collection/ScatterMap;", "", "initialCapacity", "<init>", "(I)V", "collection"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MutableScatterMap<K, V> extends ScatterMap<K, V> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3323f;

    public MutableScatterMap(int i2) {
        super(null);
        if (i2 >= 0) {
            k(ScatterMapKt.e(i2));
        } else {
            md.n("Capacity must be a positive value.");
            throw null;
        }
    }

    public final void h() {
        this.f3364e = 0;
        long[] jArr = this.f3361a;
        if (jArr != ScatterMapKt.f3365a) {
            ArraysKt.u(jArr, -9187201950435737472L);
            long[] jArr2 = this.f3361a;
            int i2 = this.d;
            int i3 = i2 >> 3;
            long j2 = 255 << ((i2 & 7) << 3);
            jArr2[i3] = (jArr2[i3] & (~j2)) | j2;
        }
        ArraysKt.r(this.f3363c, 0, this.d, null);
        ArraysKt.r(this.f3362b, 0, this.d, null);
        this.f3323f = ScatterMapKt.a(this.d) - this.f3364e;
    }

    public final int i(int i2) {
        int i3 = this.d;
        int i4 = i2 & i3;
        int i5 = 0;
        while (true) {
            long[] jArr = this.f3361a;
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

    public final int j(Object obj) {
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
        int i6 = this.d;
        int i7 = i4 & i6;
        int i8 = 0;
        while (true) {
            long[] jArr2 = this.f3361a;
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
                if (Intrinsics.c(this.f3362b[iNumberOfTrailingZeros], obj)) {
                    return iNumberOfTrailingZeros;
                }
                j8 &= j8 - 1;
                i2 = i12;
            }
            int i13 = i2;
            if ((((~j5) << 6) & j5 & (-9187201950435737472L)) != 0) {
                int i14 = i(i4);
                long j9 = 255;
                if (this.f3323f != 0 || ((this.f3361a[i14 >> 3] >> ((i14 & 7) << 3)) & 255) == 254) {
                    j2 = 255;
                    j3 = j6;
                    j4 = 128;
                } else {
                    int i15 = this.d;
                    if (i15 > 8) {
                        int i16 = 8;
                        long j10 = this.f3364e;
                        ULong.Companion companion = ULong.INSTANCE;
                        if (Long.compareUnsigned(j10 * 32, ((long) i15) * 25) <= 0) {
                            long[] jArr3 = this.f3361a;
                            int i17 = this.d;
                            Object[] objArr2 = this.f3362b;
                            Object[] objArr3 = this.f3363c;
                            j4 = 128;
                            int i18 = (i17 + 7) >> 3;
                            int i19 = 0;
                            while (i19 < i18) {
                                long j11 = j9;
                                long j12 = jArr3[i19] & (-9187201950435737472L);
                                jArr3[i19] = (-72340172838076674L) & ((~j12) + (j12 >>> 7));
                                i19++;
                                i16 = i16;
                                j6 = j6;
                                j9 = j11;
                            }
                            j2 = j9;
                            j3 = j6;
                            int i20 = i16;
                            int iZ = ArraysKt.z(jArr3);
                            int i21 = iZ - 1;
                            jArr3[i21] = (jArr3[i21] & 72057594037927935L) | (-72057594037927936L);
                            jArr3[iZ] = jArr3[0];
                            int i22 = 0;
                            while (i22 != i17) {
                                int i23 = i22 >> 3;
                                int i24 = (i22 & 7) << 3;
                                long j13 = (jArr3[i23] >> i24) & j2;
                                if (j13 != 128 && j13 == 254) {
                                    Object obj2 = objArr2[i22];
                                    int iHashCode2 = (obj2 != null ? obj2.hashCode() : 0) * i13;
                                    int i25 = iHashCode2 ^ (iHashCode2 << 16);
                                    int i26 = i25 >>> 7;
                                    int i27 = i(i26);
                                    int i28 = i26 & i17;
                                    if (((i27 - i28) & i17) / i20 == ((i22 - i28) & i17) / i20) {
                                        jArr3[i23] = (((long) (i25 & CertificateBody.profileType)) << i24) | (jArr3[i23] & (~(j2 << i24)));
                                        jArr3[jArr3.length - 1] = jArr3[0];
                                        i22++;
                                        i20 = i20;
                                    } else {
                                        int i29 = i20;
                                        int i30 = i27 >> 3;
                                        long j14 = jArr3[i30];
                                        int i31 = (i27 & 7) << 3;
                                        if (((j14 >> i31) & j2) == 128) {
                                            objArr = objArr2;
                                            jArr3[i30] = ((~(j2 << i31)) & j14) | (((long) (i25 & CertificateBody.profileType)) << i31);
                                            jArr3[i23] = (jArr3[i23] & (~(j2 << i24))) | (128 << i24);
                                            objArr[i27] = objArr[i22];
                                            objArr[i22] = null;
                                            objArr3[i27] = objArr3[i22];
                                            objArr3[i22] = null;
                                        } else {
                                            objArr = objArr2;
                                            jArr3[i30] = (((long) (i25 & CertificateBody.profileType)) << i31) | ((~(j2 << i31)) & j14);
                                            Object obj3 = objArr[i27];
                                            objArr[i27] = objArr[i22];
                                            objArr[i22] = obj3;
                                            Object obj4 = objArr3[i27];
                                            objArr3[i27] = objArr3[i22];
                                            objArr3[i22] = obj4;
                                            i22--;
                                        }
                                        jArr3[jArr3.length - 1] = jArr3[0];
                                        i22++;
                                        i20 = i29;
                                        i17 = i17;
                                        objArr2 = objArr;
                                    }
                                } else {
                                    i22++;
                                }
                            }
                            this.f3323f = ScatterMapKt.a(this.d) - this.f3364e;
                        }
                        i14 = i(i4);
                    }
                    j2 = 255;
                    j3 = j6;
                    j4 = 128;
                    int iC = ScatterMapKt.c(this.d);
                    long[] jArr4 = this.f3361a;
                    Object[] objArr4 = this.f3362b;
                    Object[] objArr5 = this.f3363c;
                    int i32 = this.d;
                    k(iC);
                    long[] jArr5 = this.f3361a;
                    Object[] objArr6 = this.f3362b;
                    Object[] objArr7 = this.f3363c;
                    int i33 = this.d;
                    int i34 = 0;
                    while (i34 < i32) {
                        if (((jArr4[i34 >> 3] >> ((i34 & 7) << 3)) & 255) < 128) {
                            Object obj5 = objArr4[i34];
                            int iHashCode3 = (obj5 != null ? obj5.hashCode() : 0) * i13;
                            int i35 = iHashCode3 ^ (iHashCode3 << 16);
                            int i36 = i(i35 >>> 7);
                            jArr = jArr5;
                            long j15 = i35 & CertificateBody.profileType;
                            int i37 = i36 >> 3;
                            int i38 = (i36 & 7) << 3;
                            long j16 = (jArr[i37] & (~(255 << i38))) | (j15 << i38);
                            jArr[i37] = j16;
                            jArr[(((i36 - 7) & i33) + (i33 & 7)) >> 3] = j16;
                            objArr6[i36] = obj5;
                            objArr7[i36] = objArr5[i34];
                        } else {
                            jArr = jArr5;
                        }
                        i34++;
                        jArr4 = jArr4;
                        jArr5 = jArr;
                    }
                    i14 = i(i4);
                }
                this.f3364e++;
                int i39 = this.f3323f;
                long[] jArr6 = this.f3361a;
                int i40 = i14 >> 3;
                long j17 = jArr6[i40];
                int i41 = (i14 & 7) << 3;
                this.f3323f = i39 - (((j17 >> i41) & j2) == j4 ? 1 : 0);
                int i42 = this.d;
                long j18 = (j17 & (~(j2 << i41))) | (j3 << i41);
                jArr6[i40] = j18;
                jArr6[(((i14 - 7) & i42) + (i42 & 7)) >> 3] = j18;
                return ~i14;
            }
            i8 += 8;
            i7 = (i7 + i8) & i6;
            i5 = i11;
            i2 = i13;
        }
    }

    public final void k(int i2) {
        long[] jArr;
        int iMax = i2 > 0 ? Math.max(7, ScatterMapKt.d(i2)) : 0;
        this.d = iMax;
        if (iMax == 0) {
            jArr = ScatterMapKt.f3365a;
        } else {
            int i3 = ((iMax + 15) & (-8)) >> 3;
            long[] jArr2 = new long[i3];
            Arrays.fill(jArr2, 0, i3, -9187201950435737472L);
            int i4 = iMax >> 3;
            long j2 = 255 << ((iMax & 7) << 3);
            jArr2[i4] = (jArr2[i4] & (~j2)) | j2;
            jArr = jArr2;
        }
        this.f3361a = jArr;
        this.f3323f = ScatterMapKt.a(this.d) - this.f3364e;
        Object[] objArr = ContainerHelpersKt.f3401c;
        this.f3362b = iMax == 0 ? objArr : new Object[iMax];
        if (iMax != 0) {
            objArr = new Object[iMax];
        }
        this.f3363c = objArr;
    }

    public final void l(ScatterMap scatterMap) {
        scatterMap.getClass();
        Object[] objArr = scatterMap.f3362b;
        Object[] objArr2 = scatterMap.f3363c;
        long[] jArr = scatterMap.f3361a;
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
                        int i5 = (i2 << 3) + i4;
                        o(objArr[i5], objArr2[i5]);
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

    public final Object m(Object obj) {
        int iNumberOfTrailingZeros;
        int i2 = 0;
        int iHashCode = (obj != null ? obj.hashCode() : 0) * (-862048943);
        int i3 = iHashCode ^ (iHashCode << 16);
        int i4 = i3 & CertificateBody.profileType;
        int i5 = this.d;
        int i6 = i3 >>> 7;
        loop0: while (true) {
            int i7 = i6 & i5;
            long[] jArr = this.f3361a;
            int i8 = i7 >> 3;
            int i9 = (i7 & 7) << 3;
            long j2 = ((jArr[i8 + 1] << (64 - i9)) & ((-i9) >> 63)) | (jArr[i8] >>> i9);
            long j3 = (((long) i4) * 72340172838076673L) ^ j2;
            for (long j4 = (~j3) & (j3 - 72340172838076673L) & (-9187201950435737472L); j4 != 0; j4 &= j4 - 1) {
                iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j4) >> 3) + i7) & i5;
                if (Intrinsics.c(this.f3362b[iNumberOfTrailingZeros], obj)) {
                    break loop0;
                }
            }
            if ((j2 & ((~j2) << 6) & (-9187201950435737472L)) != 0) {
                iNumberOfTrailingZeros = -1;
                break;
            }
            i2 += 8;
            i6 = i7 + i2;
        }
        if (iNumberOfTrailingZeros >= 0) {
            return n(iNumberOfTrailingZeros);
        }
        return null;
    }

    public final Object n(int i2) {
        this.f3364e--;
        long[] jArr = this.f3361a;
        int i3 = this.d;
        int i4 = i2 >> 3;
        int i5 = (i2 & 7) << 3;
        long j2 = (jArr[i4] & (~(255 << i5))) | (254 << i5);
        jArr[i4] = j2;
        jArr[(((i2 - 7) & i3) + (i3 & 7)) >> 3] = j2;
        this.f3362b[i2] = null;
        Object[] objArr = this.f3363c;
        Object obj = objArr[i2];
        objArr[i2] = null;
        return obj;
    }

    public final void o(Object obj, Object obj2) {
        int iJ = j(obj);
        if (iJ < 0) {
            iJ = ~iJ;
        }
        this.f3362b[iJ] = obj;
        this.f3363c[iJ] = obj2;
    }

    public /* synthetic */ MutableScatterMap(int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 6 : i2);
    }

    public MutableScatterMap() {
        this(0, 1, null);
    }
}
