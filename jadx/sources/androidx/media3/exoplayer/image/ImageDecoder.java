package androidx.media3.exoplayer.image;

import androidx.media3.common.Format;
import androidx.media3.decoder.Decoder;
import androidx.media3.decoder.DecoderInputBuffer;

/* JADX INFO: loaded from: classes.dex */
public interface ImageDecoder extends Decoder<DecoderInputBuffer, ImageOutputBuffer, ImageDecoderException> {

    public interface Factory {
        BitmapFactoryImageDecoder a();

        int b(Format format);
    }

    @Override // androidx.media3.decoder.Decoder
    ImageOutputBuffer a();

    void f(DecoderInputBuffer decoderInputBuffer);
}
