package okhttp3.internal;

import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.text.Charsets;
import okhttp3.MediaType;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"okhttp"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class Internal {
    public static final Pair a(MediaType mediaType) {
        Charset charset = Charsets.UTF_8;
        if (mediaType != null) {
            MediaType.Companion companion = MediaType.f76933e;
            Charset charsetA = mediaType.a(null);
            if (charsetA == null) {
                String str = mediaType + "; charset=utf-8";
                MediaType.f76933e.getClass();
                try {
                    mediaType = MediaType.Companion.a(str);
                } catch (IllegalArgumentException unused) {
                    mediaType = null;
                }
            } else {
                charset = charsetA;
            }
        }
        return new Pair(charset, mediaType);
    }
}
