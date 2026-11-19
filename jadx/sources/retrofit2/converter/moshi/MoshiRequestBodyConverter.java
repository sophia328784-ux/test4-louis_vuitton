package retrofit2.converter.moshi;

import com.squareup.moshi.JsonAdapter;
import com.squareup.moshi.JsonWriter;
import java.io.IOException;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okhttp3.RequestBody$Companion$toRequestBody$1;
import okio.Buffer;
import okio.ByteString;
import retrofit2.Converter;

/* JADX INFO: loaded from: classes3.dex */
final class MoshiRequestBodyConverter<T> implements Converter<T, RequestBody> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final MediaType f79501c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final JsonAdapter f79502b;

    static {
        MediaType.f76933e.getClass();
        f79501c = MediaType.Companion.a("application/json; charset=UTF-8");
    }

    public MoshiRequestBodyConverter(JsonAdapter jsonAdapter) {
        this.f79502b = jsonAdapter;
    }

    @Override // retrofit2.Converter
    public final Object f(Object obj) throws IOException {
        Buffer buffer = new Buffer();
        this.f79502b.toJson(JsonWriter.s(buffer), obj);
        ByteString byteStringN0 = buffer.N0(buffer.f77390c);
        RequestBody.f76978a.getClass();
        byteStringN0.getClass();
        return new RequestBody$Companion$toRequestBody$1(f79501c, byteStringN0);
    }
}
