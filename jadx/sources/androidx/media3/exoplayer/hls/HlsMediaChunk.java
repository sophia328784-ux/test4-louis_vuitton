package androidx.media3.exoplayer.hls;

import android.net.Uri;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSourceUtil;
import androidx.media3.datasource.DataSpec;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.source.chunk.MediaChunk;
import androidx.media3.extractor.DefaultExtractorInput;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.metadata.id3.Id3Decoder;
import androidx.media3.extractor.metadata.id3.PrivFrame;
import androidx.media3.extractor.mp3.Mp3Extractor;
import androidx.media3.extractor.ts.Ac3Extractor;
import androidx.media3.extractor.ts.Ac4Extractor;
import androidx.media3.extractor.ts.AdtsExtractor;
import com.google.common.base.Ascii;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.math.BigInteger;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
final class HlsMediaChunk extends MediaChunk {
    public static final AtomicInteger N = new AtomicInteger();
    public final boolean A;
    public final boolean B;
    public final long C;
    public HlsMediaChunkExtractor D;
    public HlsSampleStreamWrapper E;
    public int F;
    public boolean G;
    public volatile boolean H;
    public boolean I;
    public ImmutableList J;
    public boolean K;
    public long L;
    public boolean M;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f15152k;
    public final int l;
    public final Uri m;
    public final boolean n;
    public final int o;
    public final DataSource p;
    public final DataSpec q;
    public final HlsMediaChunkExtractor r;
    public final boolean s;
    public final boolean t;
    public final TimestampAdjuster u;
    public final HlsExtractorFactory v;
    public final List w;
    public final DrmInitData x;
    public final Id3Decoder y;
    public final ParsableByteArray z;

    public HlsMediaChunk(HlsExtractorFactory hlsExtractorFactory, DataSource dataSource, DataSpec dataSpec, Format format, boolean z, DataSource dataSource2, DataSpec dataSpec2, boolean z2, Uri uri, List list, int i2, Object obj, long j2, long j3, long j4, int i3, boolean z3, int i4, boolean z4, boolean z5, TimestampAdjuster timestampAdjuster, long j5, DrmInitData drmInitData, HlsMediaChunkExtractor hlsMediaChunkExtractor, Id3Decoder id3Decoder, ParsableByteArray parsableByteArray, boolean z6, boolean z7, PlayerId playerId) {
        super(dataSource, dataSpec, format, i2, obj, j2, j3, j4);
        this.A = z;
        this.o = i3;
        this.L = z3 ? j3 - j2 : -9223372036854775807L;
        this.l = i4;
        this.q = dataSpec2;
        this.p = dataSource2;
        this.G = dataSpec2 != null;
        this.B = z2;
        this.m = uri;
        this.s = z5;
        this.u = timestampAdjuster;
        this.C = j5;
        this.t = z4;
        this.v = hlsExtractorFactory;
        this.w = list;
        this.x = drmInitData;
        this.r = hlsMediaChunkExtractor;
        this.y = id3Decoder;
        this.z = parsableByteArray;
        this.M = z6;
        this.n = z7;
        this.J = ImmutableList.x();
        this.f15152k = N.getAndIncrement();
    }

    public static byte[] d(String str) {
        if (Ascii.c(str).startsWith("0x")) {
            str = str.substring(2);
        }
        byte[] byteArray = new BigInteger(str, 16).toByteArray();
        byte[] bArr = new byte[16];
        int length = byteArray.length > 16 ? byteArray.length - 16 : 0;
        System.arraycopy(byteArray, length, bArr, (16 - byteArray.length) + length, byteArray.length - length);
        return bArr;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
    public final void a() {
        HlsMediaChunkExtractor hlsMediaChunkExtractor;
        this.E.getClass();
        if (this.D == null && (hlsMediaChunkExtractor = this.r) != null && hlsMediaChunkExtractor.e()) {
            this.D = this.r;
            this.G = false;
        }
        DataSpec dataSpec = this.q;
        DataSource dataSource = this.p;
        if (this.G) {
            dataSource.getClass();
            dataSpec.getClass();
            b(dataSource, dataSpec, this.B, false);
            this.F = 0;
            this.G = false;
        }
        if (this.H) {
            return;
        }
        if (!this.t) {
            b(this.f15654i, this.f15649b, this.A, true);
        }
        this.I = !this.H;
    }

    public final void b(DataSource dataSource, DataSpec dataSpec, boolean z, boolean z2) {
        DataSpec dataSpecB;
        boolean z3;
        long j2;
        int i2 = this.F;
        if (z) {
            z3 = i2 != 0;
            dataSpecB = dataSpec;
        } else {
            long j3 = i2;
            long j4 = dataSpec.g;
            dataSpecB = dataSpec.b(j3, j4 != -1 ? j4 - j3 : -1L);
            z3 = false;
        }
        try {
            DefaultExtractorInput defaultExtractorInputG = g(dataSource, dataSpecB, z2);
            if (z3) {
                defaultExtractorInputG.e(this.F, false);
            }
            while (!this.H && this.D.c(defaultExtractorInputG)) {
                try {
                    try {
                    } catch (EOFException e2) {
                        if ((this.d.f13759f & 16384) == 0) {
                            throw e2;
                        }
                        this.D.d();
                        j2 = defaultExtractorInputG.d;
                    }
                } catch (Throwable th) {
                    this.F = (int) (defaultExtractorInputG.d - dataSpec.f14394f);
                    throw th;
                }
            }
            j2 = defaultExtractorInputG.d;
            this.F = (int) (j2 - dataSpec.f14394f);
            DataSourceUtil.a(dataSource);
        } catch (Throwable th2) {
            DataSourceUtil.a(dataSource);
            throw th2;
        }
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
    public final void c() {
        this.H = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int e(int i2) {
        Preconditions.q(!this.M);
        if (i2 >= this.J.size()) {
            return 0;
        }
        return ((Integer) this.J.get(i2)).intValue();
    }

    public final boolean f() {
        return this.L != -9223372036854775807L;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x004a  */
    public final DefaultExtractorInput g(DataSource dataSource, DataSpec dataSpec, boolean z) throws Throwable {
        long jU;
        BundledHlsMediaChunkExtractor bundledHlsMediaChunkExtractorB;
        Metadata.Entry entry;
        long jA = dataSource.a(dataSpec);
        if (z) {
            try {
                this.u.g(this.g, this.C, this.s);
            } catch (InterruptedException unused) {
                throw new InterruptedIOException();
            } catch (TimeoutException e2) {
                throw new IOException(e2);
            }
        }
        DefaultExtractorInput defaultExtractorInput = new DefaultExtractorInput(dataSource, dataSpec.f14394f, jA);
        int i2 = 0;
        if (this.D == null) {
            ParsableByteArray parsableByteArray = this.z;
            defaultExtractorInput.f16125f = 0;
            try {
                parsableByteArray.K(10);
                defaultExtractorInput.i(false, 0, 10, parsableByteArray.f14194a);
                if (parsableByteArray.D() != 4801587) {
                    jU = -9223372036854775807L;
                } else {
                    parsableByteArray.O(3);
                    int iZ = parsableByteArray.z();
                    int i3 = iZ + 10;
                    byte[] bArr = parsableByteArray.f14194a;
                    if (i3 > bArr.length) {
                        parsableByteArray.K(i3);
                        System.arraycopy(bArr, 0, parsableByteArray.f14194a, 0, 10);
                    }
                    defaultExtractorInput.i(false, 10, iZ, parsableByteArray.f14194a);
                    Metadata metadataC = this.y.c(iZ, parsableByteArray.f14194a);
                    if (metadataC == null) {
                        jU = -9223372036854775807L;
                    } else {
                        Metadata.Entry[] entryArr = metadataC.f13897a;
                        int length = entryArr.length;
                        int i4 = 0;
                        while (true) {
                            entry = null;
                            if (i4 >= length) {
                                break;
                            }
                            Metadata.Entry entry2 = entryArr[i4];
                            if (PrivFrame.class.isAssignableFrom(entry2.getClass())) {
                                Metadata.Entry entry3 = (Metadata.Entry) PrivFrame.class.cast(entry2);
                                if (((PrivFrame) entry3).f16392b.equals("com.apple.streaming.transportStreamTimestamp")) {
                                    entry = entry3;
                                }
                            }
                            if (entry != null) {
                                break;
                            }
                            i4++;
                        }
                        PrivFrame privFrame = (PrivFrame) entry;
                        if (privFrame == null) {
                            jU = -9223372036854775807L;
                        } else {
                            System.arraycopy(privFrame.f16393c, 0, parsableByteArray.f14194a, 0, 8);
                            parsableByteArray.N(0);
                            parsableByteArray.M(8);
                            jU = parsableByteArray.u() & 8589934591L;
                        }
                    }
                }
            } catch (EOFException unused2) {
            }
            defaultExtractorInput.f16125f = 0;
            HlsMediaChunkExtractor hlsMediaChunkExtractor = this.r;
            if (hlsMediaChunkExtractor != null) {
                bundledHlsMediaChunkExtractorB = hlsMediaChunkExtractor.f();
            } else {
                bundledHlsMediaChunkExtractorB = this.v.b(dataSpec.f14390a, this.d, this.w, this.u, dataSource.f(), defaultExtractorInput);
                defaultExtractorInput = defaultExtractorInput;
            }
            this.D = bundledHlsMediaChunkExtractorB;
            Extractor extractorC = bundledHlsMediaChunkExtractorB.f15123a.c();
            boolean z2 = (extractorC instanceof AdtsExtractor) || (extractorC instanceof Ac3Extractor) || (extractorC instanceof Ac4Extractor) || (extractorC instanceof Mp3Extractor);
            HlsSampleStreamWrapper hlsSampleStreamWrapper = this.E;
            if (z2) {
                long jB = jU != -9223372036854775807L ? this.u.b(jU) : this.g;
                if (hlsSampleStreamWrapper.Y != jB) {
                    hlsSampleStreamWrapper.Y = jB;
                    for (HlsSampleStreamWrapper.HlsSampleQueue hlsSampleQueue : hlsSampleStreamWrapper.w) {
                        if (hlsSampleQueue.H != jB) {
                            hlsSampleQueue.H = jB;
                            hlsSampleQueue.B = true;
                        }
                    }
                }
            } else if (hlsSampleStreamWrapper.Y != 0) {
                hlsSampleStreamWrapper.Y = 0L;
                for (HlsSampleStreamWrapper.HlsSampleQueue hlsSampleQueue2 : hlsSampleStreamWrapper.w) {
                    if (hlsSampleQueue2.H != 0) {
                        hlsSampleQueue2.H = 0L;
                        hlsSampleQueue2.B = true;
                    }
                }
            }
            this.E.y.clear();
            this.D.b(this.E);
        }
        HlsSampleStreamWrapper hlsSampleStreamWrapper2 = this.E;
        DrmInitData drmInitData = hlsSampleStreamWrapper2.Z;
        DrmInitData drmInitData2 = this.x;
        if (!Objects.equals(drmInitData, drmInitData2)) {
            hlsSampleStreamWrapper2.Z = drmInitData2;
            while (true) {
                HlsSampleStreamWrapper.HlsSampleQueue[] hlsSampleQueueArr = hlsSampleStreamWrapper2.w;
                if (i2 >= hlsSampleQueueArr.length) {
                    break;
                }
                if (hlsSampleStreamWrapper2.P[i2]) {
                    HlsSampleStreamWrapper.HlsSampleQueue hlsSampleQueue3 = hlsSampleQueueArr[i2];
                    hlsSampleQueue3.K = drmInitData2;
                    hlsSampleQueue3.B = true;
                }
                i2++;
            }
        }
        return defaultExtractorInput;
    }
}
