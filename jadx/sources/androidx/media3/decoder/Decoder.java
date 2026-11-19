package androidx.media3.decoder;

import androidx.media3.decoder.DecoderException;
import androidx.media3.extractor.text.SubtitleInputBuffer;

/* JADX INFO: loaded from: classes.dex */
public interface Decoder<I, O, E extends DecoderException> {
    Object a();

    void c(SubtitleInputBuffer subtitleInputBuffer);

    void d(long j2);

    Object e();

    void flush();

    void release();
}
