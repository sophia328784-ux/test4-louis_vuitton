package androidx.media3.extractor;

import android.net.Uri;
import androidx.media3.extractor.text.SubtitleParser;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface ExtractorsFactory {
    default void a(SubtitleParser.Factory factory) {
    }

    default void b(int i2) {
    }

    default void e(boolean z) {
    }

    default Extractor[] f(Uri uri, Map map) {
        return j();
    }

    Extractor[] j();
}
