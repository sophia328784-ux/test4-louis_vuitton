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
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0011\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/collection/MutableObjectFloatMap;", "K", "Landroidx/collection/ObjectFloatMap;", "", "initialCapacity", "<init>", "(I)V", "collection"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MutableObjectFloatMap<K> extends ObjectFloatMap<K> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3305f;

    public MutableObjectFloatMap(int i2) {
        super(null);
        if (i2 >= 0) {
            d(ScatterMapKt.e(i2));
        } else {
            md.n("Capacity must be a positive value.");
            throw null;
        }
    }

    public final int c(int i2) {
        int i3 = this.d;
        int i4 = i2 & i3;
        int i5 = 0;
        while (true) {
            long[] jArr = this.f3335a;
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

    public final void d(int i2) {
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
        this.f3335a = jArr;
        int i4 = iMax >> 3;
        long j2 = 255 << ((iMax & 7) << 3);
        jArr[i4] = (jArr[i4] & (~j2)) | j2;
        this.f3305f = ScatterMapKt.a(this.d) - this.f3338e;
        this.f3336b = new Object[iMax];
        this.f3337c = new float[iMax];
    }

    public final void e(int i2) {
        this.f3338e--;
        long[] jArr = this.f3335a;
        int i3 = this.d;
        int i4 = i2 >> 3;
        int i5 = (i2 & 7) << 3;
        long j2 = (jArr[i4] & (~(255 << i5))) | (254 << i5);
        jArr[i4] = j2;
        jArr[(((i2 - 7) & i3) + (i3 & 7)) >> 3] = j2;
        this.f3336b[i2] = null;
    }

    public final void f(Object obj, float f2) {
        long j2;
        long j3;
        long j4;
        int i2;
        long[] jArr;
        Object[] objArr;
        Object obj2 = obj;
        int i3 = -862048943;
        int iHashCode = (obj2 != null ? obj2.hashCode() : 0) * (-862048943);
        int i4 = iHashCode ^ (iHashCode << 16);
        int i5 = i4 >>> 7;
        int i6 = i4 & CertificateBody.profileType;
        int i7 = this.d;
        int i8 = i5 & i7;
        int i9 = 0;
        loop0: while (true) {
            long[] jArr2 = this.f3335a;
            int i10 = i8 >> 3;
            int i11 = (i8 & 7) << 3;
            long j5 = ((jArr2[i10 + 1] << (64 - i11)) & ((-i11) >> 63)) | (jArr2[i10] >>> i11);
            long j6 = i6;
            int i12 = i6;
            long j7 = j5 ^ (j6 * 72340172838076673L);
            long j8 = -9187201950435737472L;
            long j9 = (~j7) & (j7 - 72340172838076673L) & (-9187201950435737472L);
            while (j9 != 0) {
                int iNumberOfTrailingZeros = (i8 + (Long.numberOfTrailingZeros(j9) >> 3)) & i7;
                int i13 = i3;
                if (Intrinsics.c(this.f3336b[iNumberOfTrailingZeros], obj2)) {
                    i2 = iNumberOfTrailingZeros;
                    break loop0;
                } else {
                    j9 &= j9 - 1;
                    i3 = i13;
                }
            }
            int i14 = i3;
            if ((((~j5) << 6) & j5 & (-9187201950435737472L)) != 0) {
                int iC = c(i5);
                if (this.f3305f != 0 || ((this.f3335a[iC >> 3] >> ((iC & 7) << 3)) & 255) == 254) {
                    j2 = 255;
                    j3 = j6;
                    j4 = 128;
                } else {
                    int i15 = this.d;
                    if (i15 > 8) {
                        long j10 = this.f3338e;
                        ULong.Companion companion = ULong.INSTANCE;
                        j4 = 128;
                        if (Long.compareUnsigned(j10 * 32, ((long) i15) * 25) <= 0) {
                            long[] jArr3 = this.f3335a;
                            int i16 = this.d;
                            Object[] objArr2 = this.f3336b;
                            float[] fArr = this.f3337c;
                            int i17 = (i16 + 7) >> 3;
                            j2 = 255;
                            int i18 = 0;
                            while (i18 < i17) {
                                long j11 = jArr3[i18] & j8;
                                jArr3[i18] = (-72340172838076674L) & ((~j11) + (j11 >>> 7));
                                i18++;
                                j6 = j6;
                                j8 = -9187201950435737472L;
                            }
                            j3 = j6;
                            char c2 = 7;
                            int iZ = ArraysKt.z(jArr3);
                            int i19 = iZ - 1;
                            long j12 = 72057594037927935L;
                            jArr3[i19] = (jArr3[i19] & 72057594037927935L) | (-72057594037927936L);
                            jArr3[iZ] = jArr3[0];
                            int i20 = 0;
                            while (i20 != i16) {
                                int i21 = i20 >> 3;
                                int i22 = (i20 & 7) << 3;
                                long j13 = (jArr3[i21] >> i22) & 255;
                                if (j13 != 128 && j13 == 254) {
                                    Object obj3 = objArr2[i20];
                                    int iHashCode2 = (obj3 != null ? obj3.hashCode() : 0) * i14;
                                    int i23 = iHashCode2 ^ (iHashCode2 << 16);
                                    int i24 = i23 >>> 7;
                                    int iC2 = c(i24);
                                    int i25 = i24 & i16;
                                    char c3 = c2;
                                    if (((iC2 - i25) & i16) / 8 == ((i20 - i25) & i16) / 8) {
                                        long j14 = j12;
                                        jArr3[i21] = (((long) (i23 & CertificateBody.profileType)) << i22) | (jArr3[i21] & (~(255 << i22)));
                                        jArr3[jArr3.length - 1] = (jArr3[0] & j14) | Long.MIN_VALUE;
                                        i20++;
                                        c2 = c3;
                                        j12 = j14;
                                    } else {
                                        long j15 = j12;
                                        int i26 = iC2 >> 3;
                                        long j16 = jArr3[i26];
                                        int i27 = (iC2 & 7) << 3;
                                        if (((j16 >> i27) & 255) == 128) {
                                            objArr = objArr2;
                                            jArr3[i26] = ((~(255 << i27)) & j16) | (((long) (i23 & CertificateBody.profileType)) << i27);
                                            jArr3[i21] = (jArr3[i21] & (~(255 << i22))) | (128 << i22);
                                            objArr[iC2] = objArr[i20];
                                            objArr[i20] = null;
                                            fArr[iC2] = fArr[i20];
                                            fArr[i20] = 0.0f;
                                        } else {
                                            objArr = objArr2;
                                            jArr3[i26] = ((~(255 << i27)) & j16) | (((long) (i23 & CertificateBody.profileType)) << i27);
                                            Object obj4 = objArr[iC2];
                                            objArr[iC2] = objArr[i20];
                                            objArr[i20] = obj4;
                                            float f3 = fArr[iC2];
                                            fArr[iC2] = fArr[i20];
                                            fArr[i20] = f3;
                                            i20--;
                                        }
                                        jArr3[jArr3.length - 1] = (jArr3[0] & j15) | Long.MIN_VALUE;
                                        i20++;
                                        i16 = i16;
                                        c2 = c3;
                                        j12 = j15;
                                        objArr2 = objArr;
                                    }
                                } else {
                                    i20++;
                                }
                            }
                            this.f3305f = ScatterMapKt.a(this.d) - this.f3338e;
                        }
                        iC = c(i5);
                    } else {
                        j4 = 128;
                    }
                    j2 = 255;
                    j3 = j6;
                    int iC3 = ScatterMapKt.c(this.d);
                    long[] jArr4 = this.f3335a;
                    Object[] objArr3 = this.f3336b;
                    float[] fArr2 = this.f3337c;
                    int i28 = this.d;
                    d(iC3);
                    long[] jArr5 = this.f3335a;
                    Object[] objArr4 = this.f3336b;
                    float[] fArr3 = this.f3337c;
                    int i29 = this.d;
                    int i30 = 0;
                    while (i30 < i28) {
                        if (((jArr4[i30 >> 3] >> ((i30 & 7) << 3)) & 255) < j4) {
                            Object obj5 = objArr3[i30];
                            int iHashCode3 = (obj5 != null ? obj5.hashCode() : 0) * i14;
                            int i31 = iHashCode3 ^ (iHashCode3 << 16);
                            int iC4 = c(i31 >>> 7);
                            jArr = jArr5;
                            long j17 = i31 & CertificateBody.profileType;
                            int i32 = iC4 >> 3;
                            int i33 = (iC4 & 7) << 3;
                            long j18 = (jArr[i32] & (~(255 << i33))) | (j17 << i33);
                            jArr[i32] = j18;
                            jArr[(((iC4 - 7) & i29) + (i29 & 7)) >> 3] = j18;
                            objArr4[iC4] = obj5;
                            fArr3[iC4] = fArr2[i30];
                        } else {
                            jArr = jArr5;
                        }
                        i30++;
                        jArr5 = jArr;
                    }
                    iC = c(i5);
                }
                this.f3338e++;
                int i34 = this.f3305f;
                long[] jArr6 = this.f3335a;
                int i35 = iC >> 3;
                long j19 = jArr6[i35];
                int i36 = (iC & 7) << 3;
                this.f3305f = i34 - (((j19 >> i36) & j2) == j4 ? 1 : 0);
                int i37 = this.d;
                long j20 = (j19 & (~(j2 << i36))) | (j3 << i36);
                jArr6[i35] = j20;
                jArr6[(((iC - 7) & i37) + (i37 & 7)) >> 3] = j20;
                i2 = ~iC;
                break;
            }
            i9 += 8;
            i8 = (i8 + i9) & i7;
            obj2 = obj;
            i6 = i12;
            i3 = i14;
        }
        if (i2 < 0) {
            i2 = ~i2;
        }
        this.f3336b[i2] = obj;
        this.f3337c[i2] = f2;
    }

    public /* synthetic */ MutableObjectFloatMap(int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 6 : i2);
    }

    public MutableObjectFloatMap() {
        this(0, 1, null);
    }
}
