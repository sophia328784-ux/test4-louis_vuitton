package androidx.collection;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001\u0082\u0001\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/collection/FloatSet;", "", "Landroidx/collection/MutableFloatSet;", "collection"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class FloatSet {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long[] f3243a = ScatterMapKt.f3365a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float[] f3244b = FloatSetKt.f3246a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3245c;

    public FloatSet(DefaultConstructorMarker defaultConstructorMarker) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [int] */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r15v4, types: [int] */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1, types: [int] */
    /* JADX WARN: Type inference failed for: r19v3 */
    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        boolean z3;
        int i2;
        long j2;
        int iNumberOfTrailingZeros;
        boolean z4 = true;
        if (obj == this) {
            return true;
        }
        boolean z5 = false;
        if (!(obj instanceof FloatSet)) {
            return false;
        }
        FloatSet floatSet = (FloatSet) obj;
        float[] fArr = this.f3244b;
        long[] jArr = this.f3243a;
        int length = jArr.length - 2;
        if (length < 0) {
            return true;
        }
        int i3 = 0;
        while (true) {
            long j3 = jArr[i3];
            long j4 = -9187201950435737472L;
            if ((((~j3) << 7) & j3 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i4 = 8;
                int i5 = 8 - ((~(i3 - length)) >>> 31);
                for (?? r14 = z5; r14 < i5; r14++) {
                    if ((255 & j3) < 128) {
                        float f2 = fArr[(i3 << 3) + r14];
                        int iHashCode = Float.hashCode(f2) * (-862048943);
                        int i6 = iHashCode ^ (iHashCode << 16);
                        int i7 = i6 & CertificateBody.profileType;
                        z3 = z5;
                        int i8 = floatSet.f3245c;
                        int i9 = (i6 >>> 7) & i8;
                        ?? r19 = z3;
                        while (true) {
                            long[] jArr2 = floatSet.f3243a;
                            int i10 = i9 >> 3;
                            j2 = j4;
                            int i11 = (i9 & 7) << 3;
                            long j5 = (jArr2[i10] >>> i11) | ((jArr2[i10 + 1] << (64 - i11)) & ((-i11) >> 63));
                            i2 = i4;
                            long j6 = j5 ^ (((long) i7) * 72340172838076673L);
                            for (long j7 = (~j6) & (j6 - 72340172838076673L) & j2; j7 != 0; j7 &= j7 - 1) {
                                iNumberOfTrailingZeros = (i9 + (Long.numberOfTrailingZeros(j7) >> 3)) & i8;
                                if (floatSet.f3244b[iNumberOfTrailingZeros] == f2) {
                                    break;
                                }
                            }
                            if ((j5 & ((~j5) << 6) & j2) != 0) {
                                iNumberOfTrailingZeros = -1;
                                break;
                            }
                            int i12 = r19 + 8;
                            i9 = (i9 + i12) & i8;
                            i4 = i2;
                            j4 = j2;
                            r19 = i12;
                        }
                        if (iNumberOfTrailingZeros < 0) {
                            return z3;
                        }
                    } else {
                        z3 = z5;
                        i2 = i4;
                        j2 = j4;
                    }
                    j3 >>= i2;
                    i4 = i2;
                    z4 = z4;
                    z5 = z3;
                    j4 = j2;
                }
                z = z4;
                z2 = z5;
                if (i5 != i4) {
                    return z;
                }
            } else {
                z = z4;
                z2 = z5;
            }
            if (i3 == length) {
                return z;
            }
            i3++;
            z4 = z;
            z5 = z2;
        }
    }

    public final int hashCode() {
        float[] fArr = this.f3244b;
        long[] jArr = this.f3243a;
        int length = jArr.length - 2;
        if (length < 0) {
            return 0;
        }
        int i2 = 0;
        int iHashCode = 0;
        while (true) {
            long j2 = jArr[i2];
            if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i3 = 8 - ((~(i2 - length)) >>> 31);
                for (int i4 = 0; i4 < i3; i4++) {
                    if ((255 & j2) < 128) {
                        iHashCode = Float.hashCode(fArr[(i2 << 3) + i4]) + iHashCode;
                    }
                    j2 >>= 8;
                }
                if (i3 != 8) {
                    return iHashCode;
                }
            }
            if (i2 == length) {
                return iHashCode;
            }
            i2++;
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x005b A[DONT_INVERT, PHI: r5
      0x005b: PHI (r5v2 int) = (r5v1 int), (r5v3 int) binds: [B:6:0x0024, B:18:0x0059] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:20:0x005d A[LOOP:0: B:5:0x0016->B:20:0x005d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:26:0x0060 A[SYNTHETIC] */
    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) "[");
        float[] fArr = this.f3244b;
        long[] jArr = this.f3243a;
        int length = jArr.length - 2;
        if (length < 0) {
            sb.append((CharSequence) "]");
            break;
        }
        int i2 = 0;
        int i3 = 0;
        loop0: while (true) {
            long j2 = jArr[i2];
            if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i4 = 8 - ((~(i2 - length)) >>> 31);
                for (int i5 = 0; i5 < i4; i5++) {
                    if ((255 & j2) < 128) {
                        float f2 = fArr[(i2 << 3) + i5];
                        if (i3 == -1) {
                            sb.append((CharSequence) "...");
                            break loop0;
                        }
                        if (i3 != 0) {
                            sb.append((CharSequence) ", ");
                        }
                        sb.append(f2);
                        i3++;
                    }
                    j2 >>= 8;
                }
                if (i4 == 8) {
                    if (i2 == length) {
                        i2++;
                    }
                }
                sb.append((CharSequence) "]");
                break;
            }
            if (i2 == length) {
                sb.append((CharSequence) "]");
                break;
            }
            i2++;
        }
        return sb.toString();
    }
}
