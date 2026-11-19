package androidx.collection;

import defpackage.md;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0011\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/collection/MutableObjectIntMap;", "K", "Landroidx/collection/ObjectIntMap;", "", "initialCapacity", "<init>", "(I)V", "collection"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MutableObjectIntMap<K> extends ObjectIntMap<K> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3306f;

    public MutableObjectIntMap(int i2) {
        super(null);
        if (i2 >= 0) {
            f(ScatterMapKt.e(i2));
        } else {
            md.n("Capacity must be a positive value.");
            throw null;
        }
    }

    public final void c() {
        this.f3343e = 0;
        long[] jArr = this.f3340a;
        if (jArr != ScatterMapKt.f3365a) {
            ArraysKt.u(jArr, -9187201950435737472L);
            long[] jArr2 = this.f3340a;
            int i2 = this.d;
            int i3 = i2 >> 3;
            long j2 = 255 << ((i2 & 7) << 3);
            jArr2[i3] = (jArr2[i3] & (~j2)) | j2;
        }
        ArraysKt.r(this.f3341b, 0, this.d, null);
        this.f3306f = ScatterMapKt.a(this.d) - this.f3343e;
    }

    public final int d(int i2) {
        int i3 = this.d;
        int i4 = i2 & i3;
        int i5 = 0;
        while (true) {
            long[] jArr = this.f3340a;
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

    public final int e(Object obj) {
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
            long[] jArr2 = this.f3340a;
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
                if (Intrinsics.c(this.f3341b[iNumberOfTrailingZeros], obj)) {
                    return iNumberOfTrailingZeros;
                }
                j8 &= j8 - 1;
                i2 = i12;
            }
            int i13 = i2;
            if ((((~j5) << 6) & j5 & (-9187201950435737472L)) != 0) {
                int iD = d(i4);
                long j9 = 255;
                if (this.f3306f != 0 || ((this.f3340a[iD >> 3] >> ((iD & 7) << 3)) & 255) == 254) {
                    j2 = 255;
                    j3 = j6;
                    j4 = 128;
                } else {
                    int i14 = this.d;
                    if (i14 > 8) {
                        int i15 = 8;
                        long j10 = this.f3343e;
                        ULong.Companion companion = ULong.INSTANCE;
                        if (Long.compareUnsigned(j10 * 32, ((long) i14) * 25) <= 0) {
                            long[] jArr3 = this.f3340a;
                            int i16 = this.d;
                            Object[] objArr2 = this.f3341b;
                            int[] iArr = this.f3342c;
                            j4 = 128;
                            int i17 = (i16 + 7) >> 3;
                            int i18 = 0;
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
                                    int iD2 = d(i25);
                                    int i26 = i25 & i16;
                                    long j15 = j13;
                                    if (((iD2 - i26) & i16) / 8 == ((i21 - i26) & i16) / i19) {
                                        jArr3[i22] = (((long) (i24 & CertificateBody.profileType)) << i23) | (jArr3[i22] & (~(j2 << i23)));
                                        jArr3[jArr3.length - 1] = (jArr3[0] & j15) | Long.MIN_VALUE;
                                        i21++;
                                        i19 = i19;
                                        j13 = j15;
                                    } else {
                                        int i27 = i19;
                                        int i28 = iD2 >> 3;
                                        long j16 = jArr3[i28];
                                        int i29 = (iD2 & 7) << 3;
                                        if (((j16 >> i29) & j2) == 128) {
                                            objArr = objArr2;
                                            jArr3[i28] = ((~(j2 << i29)) & j16) | (((long) (i24 & CertificateBody.profileType)) << i29);
                                            jArr3[i22] = (jArr3[i22] & (~(j2 << i23))) | (128 << i23);
                                            objArr[iD2] = objArr[i21];
                                            objArr[i21] = null;
                                            iArr[iD2] = iArr[i21];
                                            iArr[i21] = 0;
                                        } else {
                                            objArr = objArr2;
                                            jArr3[i28] = (((long) (i24 & CertificateBody.profileType)) << i29) | ((~(j2 << i29)) & j16);
                                            Object obj3 = objArr[iD2];
                                            objArr[iD2] = objArr[i21];
                                            objArr[i21] = obj3;
                                            int i30 = iArr[iD2];
                                            iArr[iD2] = iArr[i21];
                                            iArr[i21] = i30;
                                            i21--;
                                        }
                                        jArr3[jArr3.length - 1] = (jArr3[0] & j15) | Long.MIN_VALUE;
                                        i21++;
                                        i16 = i16;
                                        i19 = i27;
                                        j13 = j15;
                                        objArr2 = objArr;
                                    }
                                } else {
                                    i21++;
                                }
                            }
                            this.f3306f = ScatterMapKt.a(this.d) - this.f3343e;
                        }
                        iD = d(i4);
                    }
                    j2 = 255;
                    j3 = j6;
                    j4 = 128;
                    int iC = ScatterMapKt.c(this.d);
                    long[] jArr4 = this.f3340a;
                    Object[] objArr3 = this.f3341b;
                    int[] iArr2 = this.f3342c;
                    int i31 = this.d;
                    f(iC);
                    long[] jArr5 = this.f3340a;
                    Object[] objArr4 = this.f3341b;
                    int[] iArr3 = this.f3342c;
                    int i32 = this.d;
                    int i33 = 0;
                    while (i33 < i31) {
                        if (((jArr4[i33 >> 3] >> ((i33 & 7) << 3)) & 255) < 128) {
                            Object obj4 = objArr3[i33];
                            int iHashCode3 = (obj4 != null ? obj4.hashCode() : 0) * i13;
                            int i34 = iHashCode3 ^ (iHashCode3 << 16);
                            int iD3 = d(i34 >>> 7);
                            jArr = jArr5;
                            long j17 = i34 & CertificateBody.profileType;
                            int i35 = iD3 >> 3;
                            int i36 = (iD3 & 7) << 3;
                            long j18 = (jArr[i35] & (~(255 << i36))) | (j17 << i36);
                            jArr[i35] = j18;
                            jArr[(((iD3 - 7) & i32) + (i32 & 7)) >> 3] = j18;
                            objArr4[iD3] = obj4;
                            iArr3[iD3] = iArr2[i33];
                        } else {
                            jArr = jArr5;
                        }
                        i33++;
                        jArr4 = jArr4;
                        jArr5 = jArr;
                    }
                    iD = d(i4);
                }
                this.f3343e++;
                int i37 = this.f3306f;
                long[] jArr6 = this.f3340a;
                int i38 = iD >> 3;
                long j19 = jArr6[i38];
                int i39 = (iD & 7) << 3;
                this.f3306f = i37 - (((j19 >> i39) & j2) == j4 ? 1 : 0);
                int i40 = this.d;
                long j20 = (j19 & (~(j2 << i39))) | (j3 << i39);
                jArr6[i38] = j20;
                jArr6[(((iD - 7) & i40) + (i40 & 7)) >> 3] = j20;
                return ~iD;
            }
            i8 += 8;
            i7 = (i7 + i8) & i6;
            i5 = i11;
            i2 = i13;
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
        this.f3340a = jArr;
        int i4 = iMax >> 3;
        long j2 = 255 << ((iMax & 7) << 3);
        jArr[i4] = (jArr[i4] & (~j2)) | j2;
        this.f3306f = ScatterMapKt.a(this.d) - this.f3343e;
        this.f3341b = new Object[iMax];
        this.f3342c = new int[iMax];
    }

    public final void g(int i2) {
        this.f3343e--;
        long[] jArr = this.f3340a;
        int i3 = this.d;
        int i4 = i2 >> 3;
        int i5 = (i2 & 7) << 3;
        long j2 = (jArr[i4] & (~(255 << i5))) | (254 << i5);
        jArr[i4] = j2;
        jArr[(((i2 - 7) & i3) + (i3 & 7)) >> 3] = j2;
        this.f3341b[i2] = null;
    }

    public final void h(int i2, Object obj) {
        int iE = e(obj);
        if (iE < 0) {
            iE = ~iE;
        }
        this.f3341b[iE] = obj;
        this.f3342c[iE] = i2;
    }

    public /* synthetic */ MutableObjectIntMap(int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 6 : i2);
    }

    public MutableObjectIntMap() {
        this(0, 1, null);
    }
}
