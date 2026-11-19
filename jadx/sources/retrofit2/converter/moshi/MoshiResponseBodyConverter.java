package retrofit2.converter.moshi;

import com.squareup.moshi.JsonAdapter;
import com.squareup.moshi.JsonDataException;
import com.squareup.moshi.JsonReader;
import okhttp3.ResponseBody;
import okio.BufferedSource;
import okio.ByteString;
import retrofit2.Converter;

/* JADX INFO: loaded from: classes3.dex */
final class MoshiResponseBodyConverter<T> implements Converter<ResponseBody, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ByteString f79503c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final JsonAdapter f79504b;

    static {
        ByteString.f77398e.getClass();
        f79503c = ByteString.Companion.b("EFBBBF");
    }

    public MoshiResponseBodyConverter(JsonAdapter jsonAdapter) {
        this.f79504b = jsonAdapter;
    }

    @Override // retrofit2.Converter
    public final Object f(Object obj) {
        ResponseBody responseBody = (ResponseBody) obj;
        BufferedSource f77005h = responseBody.getF77005h();
        try {
            ByteString byteString = f79503c;
            if (f77005h.s0(0L, byteString)) {
                f77005h.skip(byteString.data.length);
            }
            JsonReader jsonReaderY = JsonReader.y(f77005h);
            Object objFromJson = this.f79504b.fromJson(jsonReaderY);
            if (jsonReaderY.z() != JsonReader.Token.END_DOCUMENT) {
                throw new JsonDataException("JSON document was not fully consumed.");
            }
            responseBody.close();
            return objFromJson;
        } catch (Throwable th) {
            responseBody.close();
            throw th;
        }
    }
}
