package okhttp3;

import com.appsflyer.sdk_base.referrer.Payload;
import defpackage.az;
import defpackage.d21;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;
import kotlin.Deprecated;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.Charsets;
import okhttp3.internal.Internal;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\b&\u0018\u0000 \u00152\u00020\u0001:\u0002\u0016\u0015B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\r\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\r\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\r\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000e\u0010\u000fJ\r\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0011\u0010\u0012R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, d2 = {"Lokhttp3/ResponseBody;", "Ljava/io/Closeable;", "<init>", "()V", "Ljava/io/InputStream;", "byteStream", "()Ljava/io/InputStream;", "", "bytes", "()[B", "Lokio/ByteString;", "byteString", "()Lokio/ByteString;", "Ljava/io/Reader;", "charStream", "()Ljava/io/Reader;", "", "string", "()Ljava/lang/String;", "reader", "Ljava/io/Reader;", "Companion", "BomAwareReader", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class ResponseBody implements Closeable {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final ResponseBody EMPTY = Companion.b(null, ByteString.f77399f);
    private Reader reader;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lokhttp3/ResponseBody$BomAwareReader;", "Ljava/io/Reader;", "Lokio/BufferedSource;", Payload.SOURCE, "Ljava/nio/charset/Charset;", "charset", "<init>", "(Lokio/BufferedSource;Ljava/nio/charset/Charset;)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class BomAwareReader extends Reader {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final BufferedSource f77001b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Charset f77002c;
        public boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public InputStreamReader f77003e;

        public BomAwareReader(BufferedSource bufferedSource, Charset charset) {
            bufferedSource.getClass();
            charset.getClass();
            this.f77001b = bufferedSource;
            this.f77002c = charset;
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            this.d = true;
            InputStreamReader inputStreamReader = this.f77003e;
            if (inputStreamReader != null) {
                inputStreamReader.close();
            } else {
                this.f77001b.close();
            }
        }

        @Override // java.io.Reader
        public final int read(char[] cArr, int i2, int i3) throws IOException {
            cArr.getClass();
            if (this.d) {
                az.o("Stream closed");
                return 0;
            }
            InputStreamReader inputStreamReader = this.f77003e;
            if (inputStreamReader == null) {
                BufferedSource bufferedSource = this.f77001b;
                inputStreamReader = new InputStreamReader(bufferedSource.U1(), _UtilJvmKt.f(bufferedSource, this.f77002c));
                this.f77003e = inputStreamReader;
            }
            return inputStreamReader.read(cArr, i2, i3);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lokhttp3/ResponseBody$Companion;", "", "Lokhttp3/ResponseBody;", "EMPTY", "Lokhttp3/ResponseBody;", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static ResponseBody$Companion$asResponseBody$1 a(String str, MediaType mediaType) {
            str.getClass();
            Pair pairA = Internal.a(mediaType);
            Charset charset = (Charset) pairA.f71705b;
            MediaType mediaType2 = (MediaType) pairA.f71706c;
            Buffer buffer = new Buffer();
            charset.getClass();
            buffer.E0(str, 0, str.length(), charset);
            return new ResponseBody$Companion$asResponseBody$1(mediaType2, buffer.f77390c, buffer);
        }

        public static ResponseBody$Companion$asResponseBody$1 b(MediaType mediaType, ByteString byteString) {
            byteString.getClass();
            Buffer buffer = new Buffer();
            buffer.l0(byteString);
            return new ResponseBody$Companion$asResponseBody$1(mediaType, byteString.e(), buffer);
        }
    }

    @Deprecated
    @JvmStatic
    public static final ResponseBody create(MediaType mediaType, byte[] bArr) {
        INSTANCE.getClass();
        bArr.getClass();
        Buffer buffer = new Buffer();
        buffer.write(bArr, 0, bArr.length);
        return new ResponseBody$Companion$asResponseBody$1(mediaType, bArr.length, buffer);
    }

    public final InputStream byteStream() {
        return getF77005h().U1();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r2v8 */
    public final ByteString byteString() throws IOException {
        long jContentLength = getG();
        ByteString th = null;
        if (jContentLength > 2147483647L) {
            az.o(d21.g(jContentLength, "Cannot buffer entire body for content length: "));
            return null;
        }
        BufferedSource bufferedSourceSource = getF77005h();
        try {
            ByteString byteStringN1 = bufferedSourceSource.n1();
            try {
                bufferedSourceSource.close();
            } catch (Throwable th2) {
                th = th2;
            }
            ByteString byteString = th;
            th = byteStringN1;
            th = byteString;
        } catch (Throwable th3) {
            th = th3;
            if (bufferedSourceSource != null) {
                try {
                    bufferedSourceSource.close();
                } catch (Throwable th4) {
                    ExceptionsKt.a(th, th4);
                }
            }
        }
        if (th != 0) {
            throw th;
        }
        int iE = th.e();
        if (jContentLength == -1 || jContentLength == iE) {
            return th;
        }
        throw new IOException("Content-Length (" + jContentLength + ") and stream length (" + iE + ") disagree");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r2v8 */
    public final byte[] bytes() throws IOException {
        long jContentLength = getG();
        byte[] th = null;
        if (jContentLength > 2147483647L) {
            az.o(d21.g(jContentLength, "Cannot buffer entire body for content length: "));
            return null;
        }
        BufferedSource bufferedSourceSource = getF77005h();
        try {
            byte[] bArrV0 = bufferedSourceSource.V0();
            try {
                bufferedSourceSource.close();
            } catch (Throwable th2) {
                th = th2;
            }
            byte[] bArr = th;
            th = bArrV0;
            th = bArr;
        } catch (Throwable th3) {
            th = th3;
            if (bufferedSourceSource != null) {
                try {
                    bufferedSourceSource.close();
                } catch (Throwable th4) {
                    ExceptionsKt.a(th, th4);
                }
            }
        }
        if (th != 0) {
            throw th;
        }
        int length = th.length;
        if (jContentLength == -1 || jContentLength == length) {
            return th;
        }
        throw new IOException("Content-Length (" + jContentLength + ") and stream length (" + length + ") disagree");
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0019  */
    public final Reader charStream() {
        Charset charsetA;
        Reader bomAwareReader = this.reader;
        if (bomAwareReader == null) {
            BufferedSource bufferedSourceSource = getF77005h();
            MediaType mediaTypeContentType = getF77004f();
            if (mediaTypeContentType != null) {
                MediaType.Companion companion = MediaType.f76933e;
                charsetA = mediaTypeContentType.a(null);
                if (charsetA == null) {
                    charsetA = Charsets.UTF_8;
                }
            } else {
                charsetA = Charsets.UTF_8;
            }
            bomAwareReader = new BomAwareReader(bufferedSourceSource, charsetA);
            this.reader = bomAwareReader;
        }
        return bomAwareReader;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        _UtilCommonKt.b(getF77005h());
    }

    /* JADX INFO: renamed from: contentLength */
    public abstract long getG();

    /* JADX INFO: renamed from: contentType */
    public abstract MediaType getF77004f();

    /* JADX INFO: renamed from: source */
    public abstract BufferedSource getF77005h();

    /* JADX WARN: Code duplicated, block: B:7:0x0013 A[Catch: all -> 0x0026, TryCatch #1 {all -> 0x0026, blocks: (B:3:0x0005, B:5:0x000b, B:8:0x0015, B:7:0x0013), top: B:24:0x0005 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r4v8 */
    public final String string() throws IOException {
        Charset charsetA;
        BufferedSource bufferedSourceSource = getF77005h();
        String th = null;
        try {
            MediaType mediaTypeContentType = getF77004f();
            if (mediaTypeContentType != null) {
                MediaType.Companion companion = MediaType.f76933e;
                charsetA = mediaTypeContentType.a(null);
                if (charsetA == null) {
                    charsetA = Charsets.UTF_8;
                }
            } else {
                charsetA = Charsets.UTF_8;
            }
            String strI1 = bufferedSourceSource.i1(_UtilJvmKt.f(bufferedSourceSource, charsetA));
            try {
                bufferedSourceSource.close();
            } catch (Throwable th2) {
                th = th2;
            }
            String str = th;
            th = strI1;
            th = str;
        } catch (Throwable th3) {
            th = th3;
            if (bufferedSourceSource != null) {
                try {
                    bufferedSourceSource.close();
                } catch (Throwable th4) {
                    ExceptionsKt.a(th, th4);
                }
            }
        }
        if (th == 0) {
            return th;
        }
        throw th;
    }

    @Deprecated
    @JvmStatic
    public static final ResponseBody create(MediaType mediaType, long j2, BufferedSource bufferedSource) {
        INSTANCE.getClass();
        bufferedSource.getClass();
        return new ResponseBody$Companion$asResponseBody$1(mediaType, j2, bufferedSource);
    }

    @Deprecated
    @JvmStatic
    public static final ResponseBody create(MediaType mediaType, String str) {
        INSTANCE.getClass();
        str.getClass();
        return Companion.a(str, mediaType);
    }

    @Deprecated
    @JvmStatic
    public static final ResponseBody create(MediaType mediaType, ByteString byteString) {
        INSTANCE.getClass();
        byteString.getClass();
        return Companion.b(mediaType, byteString);
    }

    @JvmStatic
    public static final ResponseBody create(String str, MediaType mediaType) {
        INSTANCE.getClass();
        return Companion.a(str, mediaType);
    }

    @JvmStatic
    public static final ResponseBody create(ByteString byteString, MediaType mediaType) {
        INSTANCE.getClass();
        return Companion.b(mediaType, byteString);
    }

    @JvmStatic
    public static final ResponseBody create(byte[] bArr, MediaType mediaType) {
        INSTANCE.getClass();
        bArr.getClass();
        Buffer buffer = new Buffer();
        buffer.write(bArr, 0, bArr.length);
        return new ResponseBody$Companion$asResponseBody$1(mediaType, bArr.length, buffer);
    }

    @JvmStatic
    public static final ResponseBody create(BufferedSource bufferedSource, MediaType mediaType, long j2) {
        INSTANCE.getClass();
        bufferedSource.getClass();
        return new ResponseBody$Companion$asResponseBody$1(mediaType, j2, bufferedSource);
    }
}
