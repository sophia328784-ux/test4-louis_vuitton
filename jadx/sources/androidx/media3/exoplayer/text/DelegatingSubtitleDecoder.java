package androidx.media3.exoplayer.text;

import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.extractor.text.SimpleSubtitleDecoder;
import androidx.media3.extractor.text.Subtitle;
import androidx.media3.extractor.text.SubtitleInputBuffer;
import androidx.media3.extractor.text.SubtitleOutputBuffer;
import androidx.media3.extractor.text.SubtitleParser;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes.dex */
final class DelegatingSubtitleDecoder extends SimpleSubtitleDecoder {
    public final SubtitleParser n;

    public DelegatingSubtitleDecoder(String str, SubtitleParser subtitleParser) {
        super(new SubtitleInputBuffer[2], new SubtitleOutputBuffer[2]);
        int i2 = this.g;
        DecoderInputBuffer[] decoderInputBufferArr = this.f14552e;
        Preconditions.q(i2 == decoderInputBufferArr.length);
        for (DecoderInputBuffer decoderInputBuffer : decoderInputBufferArr) {
            decoderInputBuffer.i(1024);
        }
        this.n = subtitleParser;
    }

    @Override // androidx.media3.extractor.text.SimpleSubtitleDecoder
    public final Subtitle n(int i2, byte[] bArr, boolean z) {
        SubtitleParser subtitleParser = this.n;
        if (z) {
            subtitleParser.reset();
        }
        return subtitleParser.b(0, i2, bArr);
    }
}
