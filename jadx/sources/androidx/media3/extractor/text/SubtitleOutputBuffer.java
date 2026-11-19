package androidx.media3.extractor.text;

import androidx.media3.decoder.DecoderOutputBuffer;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class SubtitleOutputBuffer extends DecoderOutputBuffer implements Subtitle {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Subtitle f16681e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f16682f;

    @Override // androidx.media3.extractor.text.Subtitle
    public final int a(long j2) {
        Subtitle subtitle = this.f16681e;
        subtitle.getClass();
        return subtitle.a(j2 - this.f16682f);
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public final List b(long j2) {
        Subtitle subtitle = this.f16681e;
        subtitle.getClass();
        return subtitle.b(j2 - this.f16682f);
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public final long c(int i2) {
        Subtitle subtitle = this.f16681e;
        subtitle.getClass();
        return subtitle.c(i2) + this.f16682f;
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public final int d() {
        Subtitle subtitle = this.f16681e;
        subtitle.getClass();
        return subtitle.d();
    }

    @Override // androidx.media3.decoder.DecoderOutputBuffer
    public final void g() {
        super.g();
        this.f16681e = null;
    }
}
