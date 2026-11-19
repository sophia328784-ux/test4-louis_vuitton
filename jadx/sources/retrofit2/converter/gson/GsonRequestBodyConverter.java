package retrofit2.converter.gson;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.StandardCharsets;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okhttp3.RequestBody$Companion$toRequestBody$1;
import okio.Buffer;
import okio.ByteString;
import retrofit2.Converter;

/* JADX INFO: loaded from: classes2.dex */
final class GsonRequestBodyConverter<T> implements Converter<T, RequestBody> {
    public static final MediaType d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Gson f79496b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TypeAdapter f79497c;

    static {
        MediaType.f76933e.getClass();
        d = MediaType.Companion.a("application/json; charset=UTF-8");
    }

    public GsonRequestBodyConverter(Gson gson, TypeAdapter typeAdapter) {
        this.f79496b = gson;
        this.f79497c = typeAdapter;
    }

    @Override // retrofit2.Converter
    public final Object f(Object obj) throws IOException {
        final Buffer buffer = new Buffer();
        JsonWriter jsonWriterNewJsonWriter = this.f79496b.newJsonWriter(new OutputStreamWriter(new OutputStream() { // from class: okio.Buffer$outputStream$1
            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public final void flush() {
            }

            public final String toString() {
                return buffer + ".outputStream()";
            }

            @Override // java.io.OutputStream
            public final void write(byte[] bArr, int i2, int i3) {
                bArr.getClass();
                buffer.write(bArr, i2, i3);
            }

            @Override // java.io.OutputStream
            public final void write(int i2) {
                buffer.m0(i2);
            }
        }, StandardCharsets.UTF_8));
        this.f79497c.write(jsonWriterNewJsonWriter, obj);
        jsonWriterNewJsonWriter.close();
        ByteString byteStringN0 = buffer.N0(buffer.f77390c);
        RequestBody.f76978a.getClass();
        byteStringN0.getClass();
        return new RequestBody$Companion$toRequestBody$1(d, byteStringN0);
    }
}
