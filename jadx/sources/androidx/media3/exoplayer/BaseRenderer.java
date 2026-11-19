package androidx.media3.exoplayer;

import androidx.media3.common.Format;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Clock;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.SampleStream;
import com.google.common.base.Preconditions;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseRenderer implements Renderer, RendererCapabilities {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f14563c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public RendererConfiguration f14564e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f14565f;
    public PlayerId g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Clock f14566h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f14567i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public SampleStream f14568j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Format[] f14569k;
    public long l;
    public long m;
    public boolean o;
    public boolean p;
    public MediaSource.MediaPeriodId r;
    public RendererCapabilities.Listener s;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f14562b = new Object();
    public final FormatHolder d = new FormatHolder();
    public long n = Long.MIN_VALUE;
    public Timeline q = Timeline.f13952a;

    public BaseRenderer(int i2) {
        this.f14563c = i2;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void A(RendererConfiguration rendererConfiguration, Format[] formatArr, SampleStream sampleStream, boolean z, boolean z2, long j2, long j3, MediaSource.MediaPeriodId mediaPeriodId) {
        Preconditions.q(this.f14567i == 0);
        this.f14564e = rendererConfiguration;
        this.r = mediaPeriodId;
        this.f14567i = 1;
        L(z, z2);
        r(formatArr, sampleStream, j2, j3, mediaPeriodId);
        this.o = false;
        this.m = j2;
        this.n = j2;
        M(z, true, j2);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final BaseRenderer B() {
        return this;
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public final void C(RendererCapabilities.Listener listener) {
        synchronized (this.f14562b) {
            this.s = listener;
        }
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public int F() {
        return 0;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final SampleStream G() {
        return this.f14568j;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final long H() {
        return this.n;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public MediaClock I() {
        return null;
    }

    public final ExoPlaybackException J(Exception exc, Format format, boolean z, int i2) {
        int iB;
        if (format == null || this.p) {
            iB = 4;
        } else {
            this.p = true;
            try {
                iB = b(format) & 7;
                this.p = false;
            } catch (ExoPlaybackException unused) {
                this.p = false;
                iB = 4;
            } catch (Throwable th) {
                this.p = false;
                throw th;
            }
        }
        return new ExoPlaybackException(1, exc, i2, getName(), this.f14565f, format, format == null ? 4 : iB, this.r, z);
    }

    public void K() {
    }

    public void L(boolean z, boolean z2) {
    }

    public void M(boolean z, boolean z2, long j2) {
    }

    public void N() {
    }

    public void O() {
    }

    public void P() {
    }

    public void Q() {
    }

    public void R(Format[] formatArr, long j2, long j3, MediaSource.MediaPeriodId mediaPeriodId) {
    }

    public void S() {
    }

    public final int T(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i2) {
        SampleStream sampleStream = this.f14568j;
        sampleStream.getClass();
        int iC = sampleStream.c(formatHolder, decoderInputBuffer, i2);
        if (iC == -4) {
            if (decoderInputBuffer.f(4)) {
                this.n = Long.MIN_VALUE;
                return this.o ? -4 : -3;
            }
            long j2 = decoderInputBuffer.g + this.l;
            decoderInputBuffer.g = j2;
            this.n = Math.max(this.n, j2);
            return iC;
        }
        if (iC == -5) {
            Format format = formatHolder.f14697b;
            format.getClass();
            long j3 = format.t;
            if (j3 != Long.MAX_VALUE) {
                Format.Builder builderA = format.a();
                builderA.s = j3 + this.l;
                formatHolder.f14697b = new Format(builderA);
            }
        }
        return iC;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void c() {
        Preconditions.q(this.f14567i == 1);
        this.d.a();
        this.f14567i = 0;
        this.f14568j = null;
        this.f14569k = null;
        this.o = false;
        K();
        this.r = null;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean e() {
        return j();
    }

    @Override // androidx.media3.exoplayer.Renderer, androidx.media3.exoplayer.RendererCapabilities
    public final int f() {
        return this.f14563c;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final int getState() {
        return this.f14567i;
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public final void h() {
        synchronized (this.f14562b) {
            this.s = null;
        }
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final boolean j() {
        return this.n == Long.MIN_VALUE;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void l(int i2, PlayerId playerId, Clock clock) {
        this.f14565f = i2;
        this.g = playerId;
        this.f14566h = clock;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void n() {
        this.o = true;
    }

    @Override // androidx.media3.exoplayer.PlayerMessage.Target
    public void q(int i2, Object obj) {
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void r(Format[] formatArr, SampleStream sampleStream, long j2, long j3, MediaSource.MediaPeriodId mediaPeriodId) {
        Preconditions.q(!this.o);
        this.f14568j = sampleStream;
        this.r = mediaPeriodId;
        if (this.n == Long.MIN_VALUE) {
            this.n = j2;
        }
        this.f14569k = formatArr;
        this.l = j3;
        R(formatArr, j2, j3, mediaPeriodId);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void release() {
        Preconditions.q(this.f14567i == 0);
        N();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void reset() {
        Preconditions.q(this.f14567i == 0);
        this.d.a();
        O();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void s() {
        SampleStream sampleStream = this.f14568j;
        sampleStream.getClass();
        sampleStream.a();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void start() {
        Preconditions.q(this.f14567i == 1);
        this.f14567i = 2;
        P();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void stop() {
        Preconditions.q(this.f14567i == 2);
        this.f14567i = 1;
        Q();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final boolean u() {
        return this.o;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void y(Timeline timeline) {
        if (Objects.equals(this.q, timeline)) {
            return;
        }
        this.q = timeline;
        S();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void z(long j2, boolean z) {
        this.o = false;
        this.m = j2;
        this.n = j2;
        if (!z) {
            SampleStream sampleStream = this.f14568j;
            sampleStream.getClass();
            z = sampleStream.b(j2 - this.l) != 0;
        }
        M(false, z, j2);
    }
}
