package retrofit2.converter.gson;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import okhttp3.ResponseBody;
import retrofit2.Converter;

/* JADX INFO: loaded from: classes2.dex */
final class GsonResponseBodyConverter<T> implements Converter<ResponseBody, T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Gson f79498b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TypeAdapter f79499c;

    public GsonResponseBodyConverter(Gson gson, TypeAdapter typeAdapter) {
        this.f79498b = gson;
        this.f79499c = typeAdapter;
    }

    @Override // retrofit2.Converter
    public final Object f(Object obj) {
        ResponseBody responseBody = (ResponseBody) obj;
        JsonReader jsonReaderNewJsonReader = this.f79498b.newJsonReader(responseBody.charStream());
        try {
            Object obj2 = this.f79499c.read2(jsonReaderNewJsonReader);
            if (jsonReaderNewJsonReader.peek() != JsonToken.END_DOCUMENT) {
                throw new JsonIOException("JSON document was not fully consumed.");
            }
            responseBody.close();
            return obj2;
        } catch (Throwable th) {
            responseBody.close();
            throw th;
        }
    }
}
