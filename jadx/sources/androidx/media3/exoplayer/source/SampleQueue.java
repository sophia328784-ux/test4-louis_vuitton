package androidx.media3.exoplayer.source;

import android.util.SparseArray;
import androidx.media3.common.DataReader;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.drm.DrmSessionManager;
import androidx.media3.exoplayer.upstream.Allocation;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.extractor.TrackOutput;
import com.google.common.base.Preconditions;
import defpackage.md;
import java.io.EOFException;
import java.util.Objects;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes.dex */
public class SampleQueue implements TrackOutput {
    public boolean B;
    public Format C;
    public Format D;
    public long E;
    public boolean G;
    public long H;
    public boolean I;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SampleDataQueue f15583a;
    public final DrmSessionManager d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final DrmSessionEventListener.EventDispatcher f15586e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public UpstreamFormatChangedListener f15587f;
    public Format g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public DrmSession f15588h;
    public int p;
    public int q;
    public int r;
    public int s;
    public boolean y;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SampleExtrasHolder f15584b = new SampleExtrasHolder();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f15589i = 1000;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long[] f15590j = new long[1000];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long[] f15591k = new long[1000];
    public long[] n = new long[1000];
    public int[] m = new int[1000];
    public int[] l = new int[1000];
    public TrackOutput.CryptoData[] o = new TrackOutput.CryptoData[1000];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SpannedData f15585c = new SpannedData(new e());
    public long t = Long.MIN_VALUE;
    public long v = Long.MIN_VALUE;
    public long w = Long.MIN_VALUE;
    public boolean A = true;
    public boolean z = true;
    public boolean F = true;
    public long u = Long.MIN_VALUE;
    public int x = -1;

    public static final class SampleExtrasHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f15592a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f15593b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TrackOutput.CryptoData f15594c;
    }

    public static final class SharedSampleMetadata {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Format f15595a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final DrmSessionManager.DrmSessionReference f15596b;

        public SharedSampleMetadata(Format format, DrmSessionManager.DrmSessionReference drmSessionReference) {
            this.f15595a = format;
            this.f15596b = drmSessionReference;
        }
    }

    public interface UpstreamFormatChangedListener {
        void t();
    }

    public SampleQueue(Allocator allocator, DrmSessionManager drmSessionManager, DrmSessionEventListener.EventDispatcher eventDispatcher) {
        this.d = drmSessionManager;
        this.f15586e = eventDispatcher;
        this.f15583a = new SampleDataQueue(allocator);
    }

    public final synchronized boolean A(int i2) {
        synchronized (this) {
            this.s = 0;
            SampleDataQueue sampleDataQueue = this.f15583a;
            sampleDataQueue.f15578e = sampleDataQueue.d;
        }
        int i3 = this.q;
        if (i2 >= i3 && i2 <= this.p + i3) {
            int i4 = this.x;
            if (i4 != -1 && i2 >= i4) {
                return false;
            }
            this.t = Long.MIN_VALUE;
            this.s = i2 - i3;
            return true;
        }
        return false;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x007c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized boolean B(long r11, boolean r13) throws java.lang.Throwable {
        /*
            r10 = this;
            monitor-enter(r10)
            monitor-enter(r10)     // Catch: java.lang.Throwable -> L6d
            r0 = 0
            r10.s = r0     // Catch: java.lang.Throwable -> L75
            androidx.media3.exoplayer.source.SampleDataQueue r1 = r10.f15583a     // Catch: java.lang.Throwable -> L75
            androidx.media3.exoplayer.source.SampleDataQueue$AllocationNode r2 = r1.d     // Catch: java.lang.Throwable -> L75
            r1.f15578e = r2     // Catch: java.lang.Throwable -> L75
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L72
            int r6 = r10.r(r0)     // Catch: java.lang.Throwable -> L68
            long r1 = r10.u     // Catch: java.lang.Throwable -> L68
            r3 = -9223372036854775808
            int r3 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            long r4 = r10.w
            if (r3 == 0) goto L24
            long r4 = java.lang.Math.min(r4, r1)     // Catch: java.lang.Throwable -> L1f
            goto L24
        L1f:
            r0 = move-exception
            r11 = r0
            r3 = r10
            goto L7e
        L24:
            int r1 = r10.s     // Catch: java.lang.Throwable -> L6d
            int r2 = r10.p     // Catch: java.lang.Throwable -> L6d
            r9 = 1
            if (r1 == r2) goto L2d
            r3 = r9
            goto L2e
        L2d:
            r3 = r0
        L2e:
            if (r3 == 0) goto L3e
            long[] r3 = r10.n     // Catch: java.lang.Throwable -> L68
            r7 = r3[r6]     // Catch: java.lang.Throwable -> L68
            int r3 = (r11 > r7 ? 1 : (r11 == r7 ? 0 : -1))
            if (r3 < 0) goto L3e
            int r3 = (r11 > r4 ? 1 : (r11 == r4 ? 0 : -1))
            if (r3 <= 0) goto L40
            if (r13 != 0) goto L40
        L3e:
            r3 = r10
            goto L6b
        L40:
            boolean r3 = r10.F     // Catch: java.lang.Throwable -> L68
            if (r3 == 0) goto L51
            int r7 = r2 - r1
            r3 = r10
            r4 = r11
            r8 = r13
            int r10 = r3.m(r4, r6, r7, r8)     // Catch: java.lang.Throwable -> L4e
            goto L5a
        L4e:
            r0 = move-exception
        L4f:
            r11 = r0
            goto L7e
        L51:
            r3 = r10
            r4 = r11
            int r7 = r2 - r1
            r8 = 1
            int r10 = r3.n(r4, r6, r7, r8)     // Catch: java.lang.Throwable -> L4e
        L5a:
            r11 = -1
            if (r10 != r11) goto L5f
            monitor-exit(r3)
            return r0
        L5f:
            r3.t = r4     // Catch: java.lang.Throwable -> L4e
            int r11 = r3.s     // Catch: java.lang.Throwable -> L4e
            int r11 = r11 + r10
            r3.s = r11     // Catch: java.lang.Throwable -> L4e
            monitor-exit(r3)
            return r9
        L68:
            r0 = move-exception
            r3 = r10
            goto L4f
        L6b:
            monitor-exit(r3)
            return r0
        L6d:
            r0 = move-exception
            r3 = r10
        L6f:
            r10 = r0
            r11 = r10
            goto L7e
        L72:
            r0 = move-exception
            r3 = r10
            goto L6f
        L75:
            r0 = move-exception
            r3 = r10
        L77:
            r10 = r0
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L7c
            throw r10     // Catch: java.lang.Throwable -> L7a
        L7a:
            r0 = move-exception
            goto L6f
        L7c:
            r0 = move-exception
            goto L77
        L7e:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L4e
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.source.SampleQueue.B(long, boolean):boolean");
    }

    public final synchronized void C(long j2) throws Throwable {
        Throwable th;
        SampleQueue sampleQueue;
        long j3;
        int iM;
        try {
            try {
                if (j2 == this.u) {
                    return;
                }
                int i2 = -1;
                if (j2 != Long.MIN_VALUE) {
                    if (j2 <= this.w) {
                        sampleQueue = this;
                        j3 = j2;
                        iM = sampleQueue.m(j3, this.r, this.p, false);
                    } else {
                        sampleQueue = this;
                        j3 = j2;
                        iM = -1;
                    }
                    if (iM != -1) {
                        i2 = sampleQueue.q + iM;
                    }
                    sampleQueue.x = i2;
                    sampleQueue.u = j3;
                    return;
                }
                try {
                    this.x = -1;
                    return;
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
                th = th;
            }
        } catch (Throwable th4) {
            th = th4;
            th = th;
        }
        throw th;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x000e  */
    public final synchronized void D(int i2) {
        boolean z;
        if (i2 >= 0) {
            try {
                if (this.s + i2 <= this.p) {
                    z = true;
                } else {
                    z = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        } else {
            z = false;
        }
        Preconditions.g(z);
        this.s += i2;
    }

    @Override // androidx.media3.extractor.TrackOutput
    public final void a(ParsableByteArray parsableByteArray, int i2, int i3) {
        while (true) {
            SampleDataQueue sampleDataQueue = this.f15583a;
            if (i2 <= 0) {
                sampleDataQueue.getClass();
                return;
            }
            int iB = sampleDataQueue.b(i2);
            SampleDataQueue.AllocationNode allocationNode = sampleDataQueue.f15579f;
            Allocation allocation = allocationNode.f15582c;
            parsableByteArray.k(((int) (sampleDataQueue.g - allocationNode.f15580a)) + allocation.f15750b, iB, allocation.f15749a);
            i2 -= iB;
            long j2 = sampleDataQueue.g + ((long) iB);
            sampleDataQueue.g = j2;
            SampleDataQueue.AllocationNode allocationNode2 = sampleDataQueue.f15579f;
            if (j2 == allocationNode2.f15581b) {
                sampleDataQueue.f15579f = allocationNode2.d;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0053 A[Catch: all -> 0x0051, TryCatch #0 {all -> 0x0051, blocks: (B:4:0x000a, B:8:0x0016, B:13:0x0026, B:15:0x003d, B:19:0x0055, B:21:0x0063, B:25:0x006c, B:18:0x0053), top: B:35:0x000a }] */
    @Override // androidx.media3.extractor.TrackOutput
    public final void b(Format format) {
        Format formatO = o(format);
        boolean z = false;
        this.B = false;
        this.C = format;
        synchronized (this) {
            try {
                this.A = false;
                if (!Objects.equals(formatO, this.D)) {
                    if (this.f15585c.f15628b.size() == 0) {
                        this.D = formatO;
                    } else {
                        SparseArray sparseArray = this.f15585c.f15628b;
                        if (((SharedSampleMetadata) sparseArray.valueAt(sparseArray.size() - 1)).f15595a.equals(formatO)) {
                            SparseArray sparseArray2 = this.f15585c.f15628b;
                            this.D = ((SharedSampleMetadata) sparseArray2.valueAt(sparseArray2.size() - 1)).f15595a;
                        } else {
                            this.D = formatO;
                        }
                    }
                    boolean z2 = this.F;
                    Format format2 = this.D;
                    String str = format2.o;
                    this.F = z2 & (MimeTypes.i(str) == 1 && MimeTypes.a(str, format2.f13763k));
                    this.G = false;
                    z = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        UpstreamFormatChangedListener upstreamFormatChangedListener = this.f15587f;
        if (upstreamFormatChangedListener == null || !z) {
            return;
        }
        upstreamFormatChangedListener.t();
    }

    @Override // androidx.media3.extractor.TrackOutput
    public final int d(DataReader dataReader, int i2, boolean z) throws EOFException {
        SampleDataQueue sampleDataQueue = this.f15583a;
        int iB = sampleDataQueue.b(i2);
        SampleDataQueue.AllocationNode allocationNode = sampleDataQueue.f15579f;
        Allocation allocation = allocationNode.f15582c;
        int i3 = dataReader.read(allocation.f15749a, ((int) (sampleDataQueue.g - allocationNode.f15580a)) + allocation.f15750b, iB);
        if (i3 == -1) {
            if (z) {
                return -1;
            }
            md.e();
            return 0;
        }
        long j2 = sampleDataQueue.g + ((long) i3);
        sampleDataQueue.g = j2;
        SampleDataQueue.AllocationNode allocationNode2 = sampleDataQueue.f15579f;
        if (j2 == allocationNode2.f15581b) {
            sampleDataQueue.f15579f = allocationNode2.d;
        }
        return i3;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0174 A[Catch: all -> 0x00dc, TryCatch #1 {all -> 0x00dc, blocks: (B:69:0x00be, B:71:0x00c2, B:75:0x00d8, B:78:0x00df, B:82:0x00e7, B:84:0x00f9, B:88:0x0101, B:89:0x0108, B:94:0x0137, B:117:0x01ac, B:119:0x01b5, B:96:0x0150, B:98:0x0159, B:100:0x0162, B:102:0x0174, B:106:0x017d, B:107:0x0182, B:109:0x0188, B:113:0x0196, B:115:0x019b, B:116:0x01a9, B:99:0x0160), top: B:125:0x00be }] */
    /* JADX WARN: Code duplicated, block: B:104:0x017a  */
    /* JADX WARN: Code duplicated, block: B:105:0x017c  */
    /* JADX WARN: Code duplicated, block: B:109:0x0188 A[Catch: all -> 0x00dc, TryCatch #1 {all -> 0x00dc, blocks: (B:69:0x00be, B:71:0x00c2, B:75:0x00d8, B:78:0x00df, B:82:0x00e7, B:84:0x00f9, B:88:0x0101, B:89:0x0108, B:94:0x0137, B:117:0x01ac, B:119:0x01b5, B:96:0x0150, B:98:0x0159, B:100:0x0162, B:102:0x0174, B:106:0x017d, B:107:0x0182, B:109:0x0188, B:113:0x0196, B:115:0x019b, B:116:0x01a9, B:99:0x0160), top: B:125:0x00be }] */
    /* JADX WARN: Code duplicated, block: B:111:0x0193  */
    /* JADX WARN: Code duplicated, block: B:112:0x0195  */
    /* JADX WARN: Code duplicated, block: B:115:0x019b A[Catch: all -> 0x00dc, TryCatch #1 {all -> 0x00dc, blocks: (B:69:0x00be, B:71:0x00c2, B:75:0x00d8, B:78:0x00df, B:82:0x00e7, B:84:0x00f9, B:88:0x0101, B:89:0x0108, B:94:0x0137, B:117:0x01ac, B:119:0x01b5, B:96:0x0150, B:98:0x0159, B:100:0x0162, B:102:0x0174, B:106:0x017d, B:107:0x0182, B:109:0x0188, B:113:0x0196, B:115:0x019b, B:116:0x01a9, B:99:0x0160), top: B:125:0x00be }] */
    /* JADX WARN: Code duplicated, block: B:24:0x0051  */
    /* JADX WARN: Code duplicated, block: B:96:0x0150 A[Catch: all -> 0x00dc, TryCatch #1 {all -> 0x00dc, blocks: (B:69:0x00be, B:71:0x00c2, B:75:0x00d8, B:78:0x00df, B:82:0x00e7, B:84:0x00f9, B:88:0x0101, B:89:0x0108, B:94:0x0137, B:117:0x01ac, B:119:0x01b5, B:96:0x0150, B:98:0x0159, B:100:0x0162, B:102:0x0174, B:106:0x017d, B:107:0x0182, B:109:0x0188, B:113:0x0196, B:115:0x019b, B:116:0x01a9, B:99:0x0160), top: B:125:0x00be }] */
    /* JADX WARN: Code duplicated, block: B:98:0x0159 A[Catch: all -> 0x00dc, TryCatch #1 {all -> 0x00dc, blocks: (B:69:0x00be, B:71:0x00c2, B:75:0x00d8, B:78:0x00df, B:82:0x00e7, B:84:0x00f9, B:88:0x0101, B:89:0x0108, B:94:0x0137, B:117:0x01ac, B:119:0x01b5, B:96:0x0150, B:98:0x0159, B:100:0x0162, B:102:0x0174, B:106:0x017d, B:107:0x0182, B:109:0x0188, B:113:0x0196, B:115:0x019b, B:116:0x01a9, B:99:0x0160), top: B:125:0x00be }] */
    /* JADX WARN: Code duplicated, block: B:99:0x0160 A[Catch: all -> 0x00dc, TryCatch #1 {all -> 0x00dc, blocks: (B:69:0x00be, B:71:0x00c2, B:75:0x00d8, B:78:0x00df, B:82:0x00e7, B:84:0x00f9, B:88:0x0101, B:89:0x0108, B:94:0x0137, B:117:0x01ac, B:119:0x01b5, B:96:0x0150, B:98:0x0159, B:100:0x0162, B:102:0x0174, B:106:0x017d, B:107:0x0182, B:109:0x0188, B:113:0x0196, B:115:0x019b, B:116:0x01a9, B:99:0x0160), top: B:125:0x00be }] */
    @Override // androidx.media3.extractor.TrackOutput
    public void g(long j2, int i2, int i3, int i4, TrackOutput.CryptoData cryptoData) {
        int i5;
        Format format;
        DrmSessionManager drmSessionManager;
        DrmSessionManager.DrmSessionReference drmSessionReferenceD;
        SpannedData spannedData;
        int i6;
        SparseArray sparseArray;
        int iKeyAt;
        boolean z;
        boolean z2;
        boolean z3;
        if (this.B) {
            Format format2 = this.C;
            format2.getClass();
            b(format2);
        }
        int i7 = i2 & 1;
        boolean z4 = i7 != 0;
        if (this.z) {
            if (!z4) {
                return;
            } else {
                this.z = false;
            }
        }
        long j3 = j2 + this.H;
        if (!this.F) {
            i5 = i2;
        } else {
            if (j3 < this.t) {
                return;
            }
            if (i7 == 0) {
                if (!this.G) {
                    Log.g("Overriding unexpected non-sync sample for format: " + this.D);
                    this.G = true;
                }
                i5 = i2 | 1;
            } else {
                i5 = i2;
            }
        }
        if (this.I) {
            if (!z4) {
                return;
            }
            synchronized (this) {
                try {
                    if (this.p == 0) {
                        z3 = j3 > this.v;
                    } else {
                        synchronized (this) {
                            long jMax = Math.max(this.v, p(this.s));
                            if (jMax >= j3) {
                                z3 = false;
                            } else {
                                int i8 = this.p;
                                int iR = r(i8 - 1);
                                while (i8 > this.s && this.n[iR] >= j3) {
                                    i8--;
                                    iR--;
                                    if (iR == -1) {
                                        iR = this.f15589i - 1;
                                    }
                                }
                                k(this.q + i8);
                                z3 = true;
                            }
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (!z3) {
                return;
            } else {
                this.I = false;
            }
        }
        long j4 = (this.f15583a.g - ((long) i3)) - ((long) i4);
        synchronized (this) {
            try {
                int i9 = this.p;
                if (i9 > 0) {
                    int iR2 = r(i9 - 1);
                    Preconditions.g(this.f15591k[iR2] + ((long) this.l[iR2]) <= j4);
                }
                this.y = (536870912 & i5) != 0;
                this.w = Math.max(this.w, j3);
                long j5 = this.u;
                if (j5 != Long.MIN_VALUE && this.x == -1 && j3 >= j5) {
                    this.x = this.q + this.p;
                }
                int iR3 = r(this.p);
                this.n[iR3] = j3;
                this.f15591k[iR3] = j4;
                this.l[iR3] = i3;
                this.m[iR3] = i5;
                this.o[iR3] = cryptoData;
                this.f15590j[iR3] = this.E;
                if (this.f15585c.f15628b.size() == 0) {
                    format = this.D;
                    format.getClass();
                    drmSessionManager = this.d;
                    if (drmSessionManager != null) {
                        drmSessionReferenceD = drmSessionManager.d(this.f15586e, format);
                    } else {
                        drmSessionReferenceD = DrmSessionManager.DrmSessionReference.d0;
                    }
                    spannedData = this.f15585c;
                    i6 = this.q + this.p;
                    SharedSampleMetadata sharedSampleMetadata = new SharedSampleMetadata(format, drmSessionReferenceD);
                    sparseArray = spannedData.f15628b;
                    if (spannedData.f15627a == -1) {
                        if (sparseArray.size() == 0) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        Preconditions.q(z2);
                        spannedData.f15627a = 0;
                    }
                    if (sparseArray.size() > 0) {
                        iKeyAt = sparseArray.keyAt(sparseArray.size() - 1);
                        if (i6 >= iKeyAt) {
                            z = true;
                        } else {
                            z = false;
                        }
                        Preconditions.g(z);
                        if (iKeyAt == i6) {
                            spannedData.f15629c.accept(sparseArray.valueAt(sparseArray.size() - 1));
                        }
                    }
                    sparseArray.append(i6, sharedSampleMetadata);
                } else {
                    SparseArray sparseArray2 = this.f15585c.f15628b;
                    if (!((SharedSampleMetadata) sparseArray2.valueAt(sparseArray2.size() - 1)).f15595a.equals(this.D)) {
                        format = this.D;
                        format.getClass();
                        drmSessionManager = this.d;
                        if (drmSessionManager != null) {
                            drmSessionReferenceD = drmSessionManager.d(this.f15586e, format);
                        } else {
                            drmSessionReferenceD = DrmSessionManager.DrmSessionReference.d0;
                        }
                        spannedData = this.f15585c;
                        i6 = this.q + this.p;
                        SharedSampleMetadata sharedSampleMetadata2 = new SharedSampleMetadata(format, drmSessionReferenceD);
                        sparseArray = spannedData.f15628b;
                        if (spannedData.f15627a == -1) {
                            if (sparseArray.size() == 0) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            Preconditions.q(z2);
                            spannedData.f15627a = 0;
                        }
                        if (sparseArray.size() > 0) {
                            iKeyAt = sparseArray.keyAt(sparseArray.size() - 1);
                            if (i6 >= iKeyAt) {
                                z = true;
                            } else {
                                z = false;
                            }
                            Preconditions.g(z);
                            if (iKeyAt == i6) {
                                spannedData.f15629c.accept(sparseArray.valueAt(sparseArray.size() - 1));
                            }
                        }
                        sparseArray.append(i6, sharedSampleMetadata2);
                    }
                }
                int i10 = this.p + 1;
                this.p = i10;
                int i11 = this.f15589i;
                if (i10 == i11) {
                    int i12 = i11 + 1000;
                    long[] jArr = new long[i12];
                    long[] jArr2 = new long[i12];
                    long[] jArr3 = new long[i12];
                    int[] iArr = new int[i12];
                    int[] iArr2 = new int[i12];
                    TrackOutput.CryptoData[] cryptoDataArr = new TrackOutput.CryptoData[i12];
                    int i13 = this.r;
                    int i14 = i11 - i13;
                    System.arraycopy(this.f15591k, i13, jArr2, 0, i14);
                    System.arraycopy(this.n, this.r, jArr3, 0, i14);
                    System.arraycopy(this.m, this.r, iArr, 0, i14);
                    System.arraycopy(this.l, this.r, iArr2, 0, i14);
                    System.arraycopy(this.o, this.r, cryptoDataArr, 0, i14);
                    System.arraycopy(this.f15590j, this.r, jArr, 0, i14);
                    int i15 = this.r;
                    System.arraycopy(this.f15591k, 0, jArr2, i14, i15);
                    System.arraycopy(this.n, 0, jArr3, i14, i15);
                    System.arraycopy(this.m, 0, iArr, i14, i15);
                    System.arraycopy(this.l, 0, iArr2, i14, i15);
                    System.arraycopy(this.o, 0, cryptoDataArr, i14, i15);
                    System.arraycopy(this.f15590j, 0, jArr, i14, i15);
                    this.f15591k = jArr2;
                    this.n = jArr3;
                    this.m = iArr;
                    this.l = iArr2;
                    this.o = cryptoDataArr;
                    this.f15590j = jArr;
                    this.r = 0;
                    this.f15589i = i12;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final long h(int i2) {
        this.v = Math.max(this.v, p(i2));
        this.p -= i2;
        int i3 = this.q + i2;
        this.q = i3;
        int i4 = this.r + i2;
        this.r = i4;
        int i5 = this.f15589i;
        if (i4 >= i5) {
            this.r = i4 - i5;
        }
        int i6 = this.s - i2;
        this.s = i6;
        int i7 = 0;
        if (i6 < 0) {
            this.s = 0;
        }
        SpannedData spannedData = this.f15585c;
        SparseArray sparseArray = spannedData.f15628b;
        while (i7 < sparseArray.size() - 1) {
            int i8 = i7 + 1;
            if (i3 < sparseArray.keyAt(i8)) {
                break;
            }
            spannedData.f15629c.accept(sparseArray.valueAt(i7));
            sparseArray.removeAt(i7);
            int i9 = spannedData.f15627a;
            if (i9 > 0) {
                spannedData.f15627a = i9 - 1;
            }
            i7 = i8;
        }
        if (this.p != 0) {
            return this.f15591k[this.r];
        }
        int i10 = this.r;
        if (i10 == 0) {
            i10 = this.f15589i;
        }
        int i11 = i10 - 1;
        return this.f15591k[i11] + ((long) this.l[i11]);
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0013  */
    public final void i(boolean z, boolean z2, long j2) throws Throwable {
        Throwable th;
        SampleDataQueue sampleDataQueue = this.f15583a;
        synchronized (this) {
            try {
                try {
                    int i2 = this.p;
                    long jH = -1;
                    if (i2 != 0) {
                        long[] jArr = this.n;
                        int i3 = this.r;
                        if (j2 >= jArr[i3]) {
                            if (z2) {
                                try {
                                    int i4 = this.s;
                                    if (i4 != i2) {
                                        i2 = i4 + 1;
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    throw th;
                                }
                            }
                            int iN = n(j2, i3, i2, z);
                            if (iN != -1) {
                                jH = h(iN);
                            }
                        }
                    }
                    sampleDataQueue.a(jH);
                } catch (Throwable th3) {
                    th = th3;
                    th = th;
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
                th = th;
                throw th;
            }
        }
    }

    public final void j() {
        long jH;
        SampleDataQueue sampleDataQueue = this.f15583a;
        synchronized (this) {
            int i2 = this.p;
            jH = i2 == 0 ? -1L : h(i2);
        }
        sampleDataQueue.a(jH);
    }

    public final long k(int i2) {
        int i3 = this.q;
        int i4 = this.p;
        int i5 = (i3 + i4) - i2;
        boolean z = false;
        Preconditions.g(i5 >= 0 && i5 <= i4 - this.s);
        int i6 = this.p - i5;
        this.p = i6;
        this.w = Math.max(this.v, p(i6));
        if (i5 == 0 && this.y) {
            z = true;
        }
        this.y = z;
        int i7 = this.x;
        if (i7 != -1 && i2 < i7) {
            this.x = -1;
        }
        SpannedData spannedData = this.f15585c;
        SparseArray sparseArray = spannedData.f15628b;
        for (int size = sparseArray.size() - 1; size >= 0 && i2 < sparseArray.keyAt(size); size--) {
            spannedData.f15629c.accept(sparseArray.valueAt(size));
            sparseArray.removeAt(size);
        }
        spannedData.f15627a = sparseArray.size() > 0 ? Math.min(spannedData.f15627a, sparseArray.size() - 1) : -1;
        int i8 = this.p;
        if (i8 == 0) {
            return 0L;
        }
        int iR = r(i8 - 1);
        return this.f15591k[iR] + ((long) this.l[iR]);
    }

    public final void l(int i2) {
        SampleDataQueue.AllocationNode allocationNode;
        long jK = k(i2);
        SampleDataQueue sampleDataQueue = this.f15583a;
        int i3 = sampleDataQueue.f15576b;
        Allocator allocator = sampleDataQueue.f15575a;
        Preconditions.g(jK <= sampleDataQueue.g);
        sampleDataQueue.g = jK;
        if (jK != 0) {
            SampleDataQueue.AllocationNode allocationNode2 = sampleDataQueue.d;
            if (jK != allocationNode2.f15580a) {
                while (true) {
                    long j2 = sampleDataQueue.g;
                    long j3 = allocationNode2.f15581b;
                    allocationNode = allocationNode2.d;
                    if (j2 <= j3) {
                        break;
                    } else {
                        allocationNode2 = allocationNode;
                    }
                }
                allocationNode.getClass();
                if (allocationNode.f15582c != null) {
                    allocator.a(allocationNode);
                    allocationNode.f15582c = null;
                    allocationNode.d = null;
                }
                SampleDataQueue.AllocationNode allocationNode3 = new SampleDataQueue.AllocationNode(allocationNode2.f15581b, i3);
                allocationNode2.d = allocationNode3;
                if (sampleDataQueue.g == allocationNode2.f15581b) {
                    allocationNode2 = allocationNode3;
                }
                sampleDataQueue.f15579f = allocationNode2;
                if (sampleDataQueue.f15578e == allocationNode) {
                    sampleDataQueue.f15578e = allocationNode3;
                    return;
                }
                return;
            }
        }
        SampleDataQueue.AllocationNode allocationNode4 = sampleDataQueue.d;
        if (allocationNode4.f15582c != null) {
            allocator.a(allocationNode4);
            allocationNode4.f15582c = null;
            allocationNode4.d = null;
        }
        SampleDataQueue.AllocationNode allocationNode5 = new SampleDataQueue.AllocationNode(sampleDataQueue.g, i3);
        sampleDataQueue.d = allocationNode5;
        sampleDataQueue.f15578e = allocationNode5;
        sampleDataQueue.f15579f = allocationNode5;
    }

    public final int m(long j2, int i2, int i3, boolean z) {
        for (int i4 = 0; i4 < i3; i4++) {
            if (this.n[i2] >= j2) {
                return i4;
            }
            i2++;
            if (i2 == this.f15589i) {
                i2 = 0;
            }
        }
        if (z) {
            return i3;
        }
        return -1;
    }

    public final int n(long j2, int i2, int i3, boolean z) {
        int i4 = -1;
        for (int i5 = 0; i5 < i3; i5++) {
            long j3 = this.n[i2];
            if (j3 > j2) {
                break;
            }
            if (!z || (this.m[i2] & 1) != 0) {
                if (j3 == j2) {
                    return i5;
                }
                i4 = i5;
            }
            i2++;
            if (i2 == this.f15589i) {
                i2 = 0;
            }
        }
        return i4;
    }

    public Format o(Format format) {
        if (this.H == 0 || format.t == Long.MAX_VALUE) {
            return format;
        }
        Format.Builder builderA = format.a();
        builderA.s = format.t + this.H;
        return new Format(builderA);
    }

    public final long p(int i2) {
        long jMax = Long.MIN_VALUE;
        if (i2 == 0) {
            return Long.MIN_VALUE;
        }
        int iR = r(i2 - 1);
        for (int i3 = 0; i3 < i2; i3++) {
            jMax = Math.max(jMax, this.n[iR]);
            if ((this.m[iR] & 1) != 0) {
                return jMax;
            }
            iR--;
            if (iR == -1) {
                iR = this.f15589i - 1;
            }
        }
        return jMax;
    }

    public final int q() {
        return this.q + this.s;
    }

    public final int r(int i2) {
        int i3 = this.r + i2;
        int i4 = this.f15589i;
        return i3 < i4 ? i3 : i3 - i4;
    }

    public final synchronized int s(long j2, boolean z) throws Throwable {
        try {
            try {
                int iR = r(this.s);
                int i2 = this.s;
                int i3 = this.p;
                if (!(i2 != i3) || j2 < this.n[iR]) {
                    return 0;
                }
                if (j2 > this.w && z) {
                    return i3 - i2;
                }
                int iN = n(j2, iR, i3 - i2, true);
                if (iN == -1) {
                    return 0;
                }
                return iN;
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }

    public final synchronized Format t() {
        return this.A ? null : this.D;
    }

    public final synchronized boolean u(boolean z) {
        Format format;
        int iQ = q();
        int i2 = this.x;
        boolean z2 = true;
        if (i2 != -1 && iQ >= i2) {
            return true;
        }
        if (this.s != this.p) {
            if (((SharedSampleMetadata) this.f15585c.a(iQ)).f15595a != this.g) {
                return true;
            }
            return v(r(this.s));
        }
        if (!z && !this.y && ((format = this.D) == null || format == this.g)) {
            z2 = false;
        }
        return z2;
    }

    public final boolean v(int i2) {
        DrmSession drmSession = this.f15588h;
        if (drmSession == null || drmSession.getState() == 4) {
            return true;
        }
        return (this.m[i2] & 1073741824) == 0 && this.f15588h.c();
    }

    public final void w(Format format, FormatHolder formatHolder) {
        Format format2;
        Format format3 = this.g;
        boolean z = format3 == null;
        DrmInitData drmInitData = format3 == null ? null : format3.s;
        this.g = format;
        DrmInitData drmInitData2 = format.s;
        DrmSessionManager drmSessionManager = this.d;
        if (drmSessionManager != null) {
            int iC = drmSessionManager.c(format);
            Format.Builder builderA = format.a();
            builderA.O = iC;
            format2 = new Format(builderA);
        } else {
            format2 = format;
        }
        formatHolder.f14697b = format2;
        formatHolder.f14696a = this.f15588h;
        if (drmSessionManager == null) {
            return;
        }
        if (z || !Objects.equals(drmInitData, drmInitData2)) {
            DrmSession drmSession = this.f15588h;
            DrmSessionEventListener.EventDispatcher eventDispatcher = this.f15586e;
            DrmSession drmSessionB = drmSessionManager.b(eventDispatcher, format);
            this.f15588h = drmSessionB;
            formatHolder.f14696a = drmSessionB;
            if (drmSession != null) {
                drmSession.f(eventDispatcher);
            }
        }
    }

    public final synchronized long x() {
        try {
        } catch (Throwable th) {
            throw th;
        }
        return this.s != this.p ? this.f15590j[r(this.s)] : this.E;
    }

    public final int y(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i2, boolean z) {
        int i3;
        boolean z2 = (i2 & 2) != 0;
        SampleExtrasHolder sampleExtrasHolder = this.f15584b;
        synchronized (this) {
            decoderInputBuffer.f14544f = false;
            int iQ = q();
            int i4 = this.x;
            boolean z3 = i4 != -1 && iQ >= i4;
            i3 = -5;
            if ((this.s != this.p) && !z3) {
                Format format = ((SharedSampleMetadata) this.f15585c.a(iQ)).f15595a;
                if (z2 || format != this.g) {
                    w(format, formatHolder);
                } else {
                    int iR = r(this.s);
                    if (v(iR)) {
                        decoderInputBuffer.f14531b = this.m[iR];
                        if (this.s == this.p - 1 && (z || this.y)) {
                            decoderInputBuffer.e(PKIFailureInfo.duplicateCertReq);
                        }
                        decoderInputBuffer.g = this.n[iR];
                        sampleExtrasHolder.f15592a = this.l[iR];
                        sampleExtrasHolder.f15593b = this.f15591k[iR];
                        sampleExtrasHolder.f15594c = this.o[iR];
                        i3 = -4;
                    } else {
                        decoderInputBuffer.f14544f = true;
                        i3 = -3;
                    }
                }
            } else if (z || this.y || z3) {
                decoderInputBuffer.f14531b = 4;
                decoderInputBuffer.g = Long.MIN_VALUE;
                i3 = -4;
            } else {
                Format format2 = this.D;
                if (format2 == null || (!z2 && format2 == this.g)) {
                    i3 = -3;
                } else {
                    w(format2, formatHolder);
                }
            }
        }
        if (i3 == -4 && !decoderInputBuffer.f(4)) {
            boolean z4 = (i2 & 1) != 0;
            if ((i2 & 4) == 0) {
                SampleDataQueue sampleDataQueue = this.f15583a;
                SampleExtrasHolder sampleExtrasHolder2 = this.f15584b;
                if (z4) {
                    SampleDataQueue.e(sampleDataQueue.f15578e, decoderInputBuffer, sampleExtrasHolder2, sampleDataQueue.f15577c);
                } else {
                    sampleDataQueue.f15578e = SampleDataQueue.e(sampleDataQueue.f15578e, decoderInputBuffer, sampleExtrasHolder2, sampleDataQueue.f15577c);
                }
            }
            if (!z4) {
                this.s++;
            }
        }
        return i3;
    }

    public final void z(boolean z) {
        SampleDataQueue sampleDataQueue = this.f15583a;
        SampleDataQueue.AllocationNode allocationNode = sampleDataQueue.d;
        Allocator allocator = sampleDataQueue.f15575a;
        if (allocationNode.f15582c != null) {
            allocator.a(allocationNode);
            allocationNode.f15582c = null;
            allocationNode.d = null;
        }
        SampleDataQueue.AllocationNode allocationNode2 = sampleDataQueue.d;
        int i2 = sampleDataQueue.f15576b;
        Preconditions.q(allocationNode2.f15582c == null);
        allocationNode2.f15580a = 0L;
        allocationNode2.f15581b = i2;
        SampleDataQueue.AllocationNode allocationNode3 = sampleDataQueue.d;
        sampleDataQueue.f15578e = allocationNode3;
        sampleDataQueue.f15579f = allocationNode3;
        sampleDataQueue.g = 0L;
        allocator.d();
        this.p = 0;
        this.q = 0;
        this.r = 0;
        this.s = 0;
        this.x = -1;
        this.z = true;
        this.t = Long.MIN_VALUE;
        this.v = Long.MIN_VALUE;
        this.w = Long.MIN_VALUE;
        this.y = false;
        SpannedData spannedData = this.f15585c;
        SparseArray sparseArray = spannedData.f15628b;
        for (int i3 = 0; i3 < sparseArray.size(); i3++) {
            spannedData.f15629c.accept(sparseArray.valueAt(i3));
        }
        spannedData.f15627a = -1;
        sparseArray.clear();
        if (z) {
            this.C = null;
            this.D = null;
            this.A = true;
            this.F = true;
        }
    }
}
