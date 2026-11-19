package androidx.media3.exoplayer.metadata;

import androidx.media3.common.Format;
import androidx.media3.extractor.metadata.SimpleMetadataDecoder;
import androidx.media3.extractor.metadata.dvbsi.AppInfoTableDecoder;
import androidx.media3.extractor.metadata.emsg.EventMessageDecoder;
import androidx.media3.extractor.metadata.icy.IcyDecoder;
import androidx.media3.extractor.metadata.id3.Id3Decoder;
import androidx.media3.extractor.metadata.scte35.SpliceInfoDecoder;
import defpackage.md;
import defpackage.tr;

/* JADX INFO: loaded from: classes.dex */
public interface MetadataDecoderFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final MetadataDecoderFactory f15411a = new AnonymousClass1();

    /* JADX INFO: renamed from: androidx.media3.exoplayer.metadata.MetadataDecoderFactory$1, reason: invalid class name */
    public class AnonymousClass1 implements MetadataDecoderFactory {
        @Override // androidx.media3.exoplayer.metadata.MetadataDecoderFactory
        public final SimpleMetadataDecoder a(Format format) {
            String str = format.o;
            if (str != null) {
                switch (str) {
                    case "application/vnd.dvb.ait":
                        return new AppInfoTableDecoder();
                    case "application/x-icy":
                        return new IcyDecoder();
                    case "application/id3":
                        return new Id3Decoder();
                    case "application/x-emsg":
                        return new EventMessageDecoder();
                    case "application/x-scte35":
                        return new SpliceInfoDecoder();
                }
            }
            md.n(tr.g("Attempted to create decoder for unsupported MIME type: ", str));
            return null;
        }

        @Override // androidx.media3.exoplayer.metadata.MetadataDecoderFactory
        public final boolean b(Format format) {
            String str = format.o;
            return "application/id3".equals(str) || "application/x-emsg".equals(str) || "application/x-scte35".equals(str) || "application/x-icy".equals(str) || "application/vnd.dvb.ait".equals(str);
        }
    }

    SimpleMetadataDecoder a(Format format);

    boolean b(Format format);
}
