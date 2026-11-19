package androidx.media3.exoplayer.hls;

import androidx.media3.extractor.DefaultExtractorInput;
import androidx.media3.extractor.ExtractorOutput;

/* JADX INFO: loaded from: classes.dex */
public interface HlsMediaChunkExtractor {
    void b(ExtractorOutput extractorOutput);

    boolean c(DefaultExtractorInput defaultExtractorInput);

    void d();

    boolean e();

    BundledHlsMediaChunkExtractor f();
}
