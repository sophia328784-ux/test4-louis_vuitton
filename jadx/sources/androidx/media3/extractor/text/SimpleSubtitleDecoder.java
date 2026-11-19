package androidx.media3.extractor.text;

import androidx.media3.decoder.DecoderException;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.decoder.DecoderOutputBuffer;
import androidx.media3.decoder.SimpleDecoder;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public abstract class SimpleSubtitleDecoder extends SimpleDecoder<SubtitleInputBuffer, SubtitleOutputBuffer, SubtitleDecoderException> implements SubtitleDecoder {
    @Override // androidx.media3.extractor.text.SubtitleDecoder
    public final void b(long j2) {
    }

    @Override // androidx.media3.decoder.SimpleDecoder
    public final DecoderInputBuffer g() {
        return new SubtitleInputBuffer();
    }

    @Override // androidx.media3.decoder.SimpleDecoder
    public final DecoderOutputBuffer h() {
        return new SubtitleOutputBuffer() { // from class: androidx.media3.extractor.text.SimpleSubtitleDecoder.1
            @Override // androidx.media3.decoder.DecoderOutputBuffer
            public final void h() {
                SimpleSubtitleDecoder.this.m(this);
            }
        };
    }

    @Override // androidx.media3.decoder.SimpleDecoder
    public final DecoderException i(Throwable th) {
        return new SubtitleDecoderException("Unexpected decode error", th);
    }

    @Override // androidx.media3.decoder.SimpleDecoder
    public final DecoderException j(DecoderInputBuffer decoderInputBuffer, DecoderOutputBuffer decoderOutputBuffer, boolean z) {
        SubtitleInputBuffer subtitleInputBuffer = (SubtitleInputBuffer) decoderInputBuffer;
        SubtitleOutputBuffer subtitleOutputBuffer = (SubtitleOutputBuffer) decoderOutputBuffer;
        try {
            ByteBuffer byteBuffer = subtitleInputBuffer.f14543e;
            byteBuffer.getClass();
            Subtitle subtitleN = n(byteBuffer.limit(), byteBuffer.array(), z);
            long j2 = subtitleInputBuffer.g;
            long j3 = subtitleInputBuffer.f16680k;
            subtitleOutputBuffer.f14548c = j2;
            subtitleOutputBuffer.f16681e = subtitleN;
            if (j3 != Long.MAX_VALUE) {
                j2 = j3;
            }
            subtitleOutputBuffer.f16682f = j2;
            subtitleOutputBuffer.d = false;
            return null;
        } catch (SubtitleDecoderException e2) {
            return e2;
        }
    }

    public abstract Subtitle n(int i2, byte[] bArr, boolean z);
}
