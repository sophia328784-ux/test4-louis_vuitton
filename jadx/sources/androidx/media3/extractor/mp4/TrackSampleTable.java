package androidx.media3.extractor.mp4;

import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import defpackage.a;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes.dex */
public final class TrackSampleTable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Track f16613a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f16614b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long[] f16615c;
    public final int[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f16616e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long[] f16617f;
    public final int[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int[] f16618h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f16619i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f16620j;

    public TrackSampleTable(Track track, long[] jArr, int[] iArr, int i2, long[] jArr2, int[] iArr2, int[] iArr3, boolean z, long j2, int i3) {
        Preconditions.g(iArr.length == jArr2.length);
        Preconditions.g(jArr.length == jArr2.length);
        Preconditions.g(iArr2.length == jArr2.length);
        this.f16613a = track;
        this.f16615c = jArr;
        this.d = iArr;
        this.f16616e = i2;
        this.f16617f = jArr2;
        this.g = iArr2;
        this.f16618h = iArr3;
        this.f16620j = z;
        this.f16619i = j2;
        this.f16614b = i3;
        if (iArr2.length > 0) {
            int length = iArr2.length - 1;
            iArr2[length] = iArr2[length] | PKIFailureInfo.duplicateCertReq;
        }
    }

    public final int a(long j2) {
        long[] jArr = this.f16617f;
        if (jArr.length <= 0) {
            return -1;
        }
        int i2 = 0;
        if (this.f16620j) {
            return Util.f(jArr, j2, false);
        }
        int[] iArr = this.f16618h;
        int length = iArr.length - 1;
        int i3 = -1;
        while (i2 <= length) {
            int iA = a.a(length, i2, 2, i2);
            if (jArr[iArr[iA]] <= j2) {
                i2 = iA + 1;
                i3 = iA;
            } else {
                length = iA - 1;
            }
        }
        if (i3 == -1) {
            return -1;
        }
        long j3 = jArr[iArr[i3]];
        if (j3 == j2) {
            while (i3 > 0 && jArr[iArr[i3 - 1]] == j3) {
                i3--;
            }
        }
        return iArr[i3];
    }

    public final int b(long j2) {
        long[] jArr = this.f16617f;
        if (jArr.length <= 0) {
            return -1;
        }
        if (this.f16620j) {
            return Util.b(jArr, j2, true);
        }
        int[] iArr = this.f16618h;
        int length = iArr.length - 1;
        int i2 = 0;
        int i3 = -1;
        while (i2 <= length) {
            int iA = a.a(length, i2, 2, i2);
            if (jArr[iArr[iA]] >= j2) {
                length = iA - 1;
                i3 = iA;
            } else {
                i2 = iA + 1;
            }
        }
        if (i3 == -1) {
            return -1;
        }
        long j3 = jArr[iArr[i3]];
        if (j3 == j2) {
            while (i3 < iArr.length - 1) {
                int i4 = i3 + 1;
                if (jArr[iArr[i4]] != j3) {
                    break;
                }
                i3 = i4;
            }
        }
        return iArr[i3];
    }
}
