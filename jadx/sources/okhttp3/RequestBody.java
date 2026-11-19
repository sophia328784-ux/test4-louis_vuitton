package okhttp3;

import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.Internal;
import okhttp3.internal._UtilCommonKt;
import okio.BufferedSink;
import okio.ByteString;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b&\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lokhttp3/RequestBody;", "", "<init>", "()V", "Companion", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class RequestBody {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f76978a = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final RequestBody$Companion$toRequestBody$1 f76979b;

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lokhttp3/RequestBody$Companion;", "", "Lokhttp3/RequestBody;", "EMPTY", "Lokhttp3/RequestBody;", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [okhttp3.RequestBody$Companion$toRequestBody$3] */
        public static RequestBody$Companion$toRequestBody$3 a(final int i2, final MediaType mediaType, final byte[] bArr) {
            bArr.getClass();
            _UtilCommonKt.a(bArr.length, 0L, i2);
            return new RequestBody() { // from class: okhttp3.RequestBody$Companion$toRequestBody$3
                @Override // okhttp3.RequestBody
                public final long a() {
                    return i2;
                }

                @Override // okhttp3.RequestBody
                /* JADX INFO: renamed from: b, reason: from getter */
                public final MediaType getF76943e() {
                    return mediaType;
                }

                @Override // okhttp3.RequestBody
                public final void e(BufferedSink bufferedSink) {
                    bufferedSink.f1(i2, bArr);
                }
            };
        }

        public static RequestBody$Companion$toRequestBody$3 b(String str, MediaType mediaType) {
            str.getClass();
            Pair pairA = Internal.a(mediaType);
            Charset charset = (Charset) pairA.f71705b;
            MediaType mediaType2 = (MediaType) pairA.f71706c;
            byte[] bytes = str.getBytes(charset);
            bytes.getClass();
            return a(bytes.length, mediaType2, bytes);
        }
    }

    static {
        ByteString byteString = ByteString.f77399f;
        byteString.getClass();
        f76979b = new RequestBody$Companion$toRequestBody$1(null, byteString);
    }

    public static final RequestBody$Companion$toRequestBody$3 c(String str, MediaType mediaType) {
        f76978a.getClass();
        str.getClass();
        return Companion.b(str, mediaType);
    }

    public long a() {
        return -1L;
    }

    /* JADX INFO: renamed from: b */
    public abstract MediaType getF76943e();

    public boolean d() {
        return false;
    }

    public abstract void e(BufferedSink bufferedSink);
}
