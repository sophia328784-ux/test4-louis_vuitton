package androidx.media3.exoplayer;

import androidx.media3.common.Format;
import androidx.media3.exoplayer.metadata.MetadataRenderer;
import androidx.media3.exoplayer.source.SampleStream;
import androidx.media3.exoplayer.text.TextRenderer;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.trackselection.TrackSelectorResult;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes.dex */
class RendererHolder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Renderer f14780a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f14781b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Renderer f14782c;
    public int d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f14783e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f14784f = false;

    public RendererHolder(Renderer renderer, Renderer renderer2, int i2) {
        this.f14780a = renderer;
        this.f14781b = i2;
        this.f14782c = renderer2;
    }

    public static boolean g(Renderer renderer) {
        return renderer.getState() != 0;
    }

    public static void k(Renderer renderer, long j2) {
        renderer.n();
        if (renderer instanceof TextRenderer) {
            TextRenderer textRenderer = (TextRenderer) renderer;
            Preconditions.q(textRenderer.o);
            textRenderer.L = j2;
        }
    }

    public final void a(Renderer renderer, DefaultMediaClock defaultMediaClock) {
        Preconditions.q(this.f14780a == renderer || this.f14782c == renderer);
        if (g(renderer)) {
            if (renderer == defaultMediaClock.d) {
                defaultMediaClock.f14624e = null;
                defaultMediaClock.d = null;
                defaultMediaClock.f14625f = true;
            }
            if (renderer.getState() == 2) {
                renderer.stop();
            }
            renderer.c();
        }
    }

    public final int b() {
        boolean zG = g(this.f14780a);
        Renderer renderer = this.f14782c;
        return (zG ? 1 : 0) + ((renderer == null || !g(renderer)) ? 0 : 1);
    }

    public final Renderer c(MediaPeriodHolder mediaPeriodHolder) {
        if (mediaPeriodHolder == null) {
            return null;
        }
        SampleStream[] sampleStreamArr = mediaPeriodHolder.f14711c;
        int i2 = this.f14781b;
        if (sampleStreamArr[i2] == null) {
            return null;
        }
        Renderer renderer = this.f14780a;
        if (renderer.G() == sampleStreamArr[i2]) {
            return renderer;
        }
        Renderer renderer2 = this.f14782c;
        if (renderer2 == null || renderer2.G() != sampleStreamArr[i2]) {
            return null;
        }
        return renderer2;
    }

    public final boolean d(MediaPeriodHolder mediaPeriodHolder, Renderer renderer) {
        if (renderer == null) {
            return true;
        }
        SampleStream[] sampleStreamArr = mediaPeriodHolder.f14711c;
        int i2 = this.f14781b;
        SampleStream sampleStream = sampleStreamArr[i2];
        if (renderer.G() == null) {
            return true;
        }
        if (renderer.G() == sampleStream) {
            if (sampleStream == null || renderer.j()) {
                return true;
            }
            MediaPeriodHolder mediaPeriodHolder2 = mediaPeriodHolder.n;
            if (mediaPeriodHolder.f14714h.f14723h && mediaPeriodHolder2 != null && mediaPeriodHolder2.f14713f && ((renderer instanceof TextRenderer) || (renderer instanceof MetadataRenderer) || renderer.H() >= mediaPeriodHolder2.e())) {
                return true;
            }
        }
        MediaPeriodHolder mediaPeriodHolder3 = mediaPeriodHolder.n;
        return mediaPeriodHolder3 != null && mediaPeriodHolder3.f14711c[i2] == renderer.G();
    }

    public final boolean e() {
        int i2 = this.d;
        return i2 == 2 || i2 == 4 || i2 == 3;
    }

    public final boolean f() {
        int i2 = this.d;
        if (i2 == 0 || i2 == 2 || i2 == 4) {
            return g(this.f14780a);
        }
        Renderer renderer = this.f14782c;
        renderer.getClass();
        return renderer.getState() != 0;
    }

    public final void h(boolean z) {
        if (z) {
            if (this.f14783e) {
                this.f14780a.reset();
                this.f14783e = false;
                return;
            }
            return;
        }
        if (this.f14784f) {
            Renderer renderer = this.f14782c;
            renderer.getClass();
            renderer.reset();
            this.f14784f = false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int i(Renderer renderer, MediaPeriodHolder mediaPeriodHolder, TrackSelectorResult trackSelectorResult, DefaultMediaClock defaultMediaClock) {
        Renderer renderer2;
        int i2;
        if (renderer == null || renderer.getState() == 0 || (renderer == (renderer2 = this.f14780a) && ((i2 = this.d) == 2 || i2 == 4))) {
            return 1;
        }
        if (renderer == this.f14782c && this.d == 3) {
            return 1;
        }
        SampleStream sampleStreamG = renderer.G();
        SampleStream[] sampleStreamArr = mediaPeriodHolder.f14711c;
        int i3 = this.f14781b;
        Object[] objArr = sampleStreamG != sampleStreamArr[i3];
        boolean zB = trackSelectorResult.b(i3);
        if (!zB || objArr != false) {
            if (!renderer.u()) {
                ExoTrackSelection exoTrackSelection = trackSelectorResult.f15734c[i3];
                int length = exoTrackSelection != null ? exoTrackSelection.length() : 0;
                Format[] formatArr = new Format[length];
                for (int i4 = 0; i4 < length; i4++) {
                    exoTrackSelection.getClass();
                    formatArr[i4] = exoTrackSelection.e(i4);
                }
                SampleStream sampleStream = mediaPeriodHolder.f14711c[i3];
                sampleStream.getClass();
                renderer.r(formatArr, sampleStream, mediaPeriodHolder.e(), mediaPeriodHolder.q, mediaPeriodHolder.f14714h.f14718a);
                return 3;
            }
            if (!renderer.e()) {
                return 0;
            }
            a(renderer, defaultMediaClock);
            if (!zB || e()) {
                h(renderer == renderer2);
                return 1;
            }
        }
        return 1;
    }

    public final void j() {
        if (!g(this.f14780a)) {
            h(true);
        }
        Renderer renderer = this.f14782c;
        if (renderer == null || renderer.getState() != 0) {
            return;
        }
        h(false);
    }

    public final void l() {
        Renderer renderer = this.f14780a;
        if (renderer.getState() == 1 && this.d != 4) {
            renderer.start();
            return;
        }
        Renderer renderer2 = this.f14782c;
        if (renderer2 == null || renderer2.getState() != 1 || this.d == 3) {
            return;
        }
        renderer2.start();
    }
}
