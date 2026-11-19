package androidx.media3.exoplayer.hls;

import androidx.media3.common.Format;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.extractor.DefaultExtractorInput;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.mp3.Mp3Extractor;
import androidx.media3.extractor.mp4.FragmentedMp4Extractor;
import androidx.media3.extractor.text.SubtitleParser;
import androidx.media3.extractor.ts.Ac3Extractor;
import androidx.media3.extractor.ts.Ac4Extractor;
import androidx.media3.extractor.ts.AdtsExtractor;
import androidx.media3.extractor.ts.TsExtractor;
import com.google.common.base.Preconditions;
import com.google.common.base.Strings;
import defpackage.md;

/* JADX INFO: loaded from: classes.dex */
public final class BundledHlsMediaChunkExtractor implements HlsMediaChunkExtractor {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final PositionHolder f15122f = new PositionHolder();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Extractor f15123a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Format f15124b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TimestampAdjuster f15125c;
    public final SubtitleParser.Factory d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f15126e;

    public BundledHlsMediaChunkExtractor(Extractor extractor, Format format, TimestampAdjuster timestampAdjuster, SubtitleParser.Factory factory, boolean z) {
        this.f15123a = extractor;
        this.f15124b = format;
        this.f15125c = timestampAdjuster;
        this.d = factory;
        this.f15126e = z;
    }

    @Override // androidx.media3.exoplayer.hls.HlsMediaChunkExtractor
    public final void b(ExtractorOutput extractorOutput) {
        this.f15123a.b(extractorOutput);
    }

    @Override // androidx.media3.exoplayer.hls.HlsMediaChunkExtractor
    public final boolean c(DefaultExtractorInput defaultExtractorInput) {
        return this.f15123a.f(defaultExtractorInput, f15122f) == 0;
    }

    @Override // androidx.media3.exoplayer.hls.HlsMediaChunkExtractor
    public final void d() {
        this.f15123a.a(0L, 0L);
    }

    @Override // androidx.media3.exoplayer.hls.HlsMediaChunkExtractor
    public final boolean e() {
        Extractor extractorC = this.f15123a.c();
        return (extractorC instanceof TsExtractor) || (extractorC instanceof FragmentedMp4Extractor);
    }

    @Override // androidx.media3.exoplayer.hls.HlsMediaChunkExtractor
    public final BundledHlsMediaChunkExtractor f() {
        Extractor mp3Extractor;
        Preconditions.q(!e());
        Extractor extractor = this.f15123a;
        boolean z = extractor.c() == extractor;
        Class<?> cls = extractor.getClass();
        if (!z) {
            md.k(Strings.b("Can't recreate wrapped extractors. Outer type: %s", cls));
            return null;
        }
        if (extractor instanceof WebvttExtractor) {
            mp3Extractor = new WebvttExtractor(this.f15124b.d, this.f15125c, this.d, this.f15126e);
        } else if (extractor instanceof AdtsExtractor) {
            mp3Extractor = new AdtsExtractor();
        } else if (extractor instanceof Ac3Extractor) {
            mp3Extractor = new Ac3Extractor();
        } else if (extractor instanceof Ac4Extractor) {
            mp3Extractor = new Ac4Extractor();
        } else {
            if (!(extractor instanceof Mp3Extractor)) {
                md.k("Unexpected extractor type for recreation: ".concat(extractor.getClass().getSimpleName()));
                return null;
            }
            mp3Extractor = new Mp3Extractor();
        }
        return new BundledHlsMediaChunkExtractor(mp3Extractor, this.f15124b, this.f15125c, this.d, this.f15126e);
    }

    public BundledHlsMediaChunkExtractor(Extractor extractor, Format format, TimestampAdjuster timestampAdjuster) {
        this(extractor, format, timestampAdjuster, SubtitleParser.Factory.f16683a, false);
    }
}
