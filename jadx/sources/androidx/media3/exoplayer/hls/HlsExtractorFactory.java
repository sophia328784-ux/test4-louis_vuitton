package androidx.media3.exoplayer.hls;

import android.net.Uri;
import androidx.media3.common.Format;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.extractor.DefaultExtractorInput;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface HlsExtractorFactory {
    static {
        new DefaultHlsExtractorFactory();
    }

    default Format a(Format format) {
        return format;
    }

    BundledHlsMediaChunkExtractor b(Uri uri, Format format, List list, TimestampAdjuster timestampAdjuster, Map map, DefaultExtractorInput defaultExtractorInput);
}
