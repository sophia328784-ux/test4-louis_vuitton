package androidx.media3.exoplayer.text;

import androidx.media3.common.Format;
import androidx.media3.extractor.text.DefaultSubtitleParserFactory;
import androidx.media3.extractor.text.SubtitleDecoder;
import androidx.media3.extractor.text.SubtitleParser;
import androidx.media3.extractor.text.cea.Cea608Decoder;
import androidx.media3.extractor.text.cea.Cea708Decoder;
import defpackage.md;
import defpackage.tr;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public interface SubtitleDecoderFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SubtitleDecoderFactory f15667a = new SubtitleDecoderFactory() { // from class: androidx.media3.exoplayer.text.SubtitleDecoderFactory.1

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final DefaultSubtitleParserFactory f15668b = new DefaultSubtitleParserFactory();

        @Override // androidx.media3.exoplayer.text.SubtitleDecoderFactory
        public final SubtitleDecoder a(Format format) {
            String str = format.o;
            int i2 = format.L;
            if (str != null) {
                switch (str) {
                    case "application/x-mp4-cea-608":
                    case "application/cea-608":
                        return new Cea608Decoder(str, i2, 16000L);
                    case "application/cea-708":
                        return new Cea708Decoder(i2, format.r);
                }
            }
            DefaultSubtitleParserFactory defaultSubtitleParserFactory = this.f15668b;
            if (defaultSubtitleParserFactory.b(format)) {
                SubtitleParser subtitleParserC = defaultSubtitleParserFactory.c(format);
                return new DelegatingSubtitleDecoder(subtitleParserC.getClass().getSimpleName().concat("Decoder"), subtitleParserC);
            }
            md.n(tr.g("Attempted to create decoder for unsupported MIME type: ", str));
            return null;
        }

        @Override // androidx.media3.exoplayer.text.SubtitleDecoderFactory
        public final boolean b(Format format) {
            String str = format.o;
            return this.f15668b.b(format) || Objects.equals(str, "application/cea-608") || Objects.equals(str, "application/x-mp4-cea-608") || Objects.equals(str, "application/cea-708");
        }
    };

    SubtitleDecoder a(Format format);

    boolean b(Format format);
}
