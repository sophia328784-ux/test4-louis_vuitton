package retrofit2.converter.scalars;

import okhttp3.MediaType;
import okhttp3.RequestBody;
import retrofit2.Converter;

/* JADX INFO: loaded from: classes5.dex */
final class ScalarRequestBodyConverter<T> implements Converter<T, RequestBody> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ScalarRequestBodyConverter f79505b = new ScalarRequestBodyConverter();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final MediaType f79506c;

    static {
        MediaType.f76933e.getClass();
        f79506c = MediaType.Companion.a("text/plain; charset=UTF-8");
    }

    @Override // retrofit2.Converter
    public final Object f(Object obj) {
        return RequestBody.c(String.valueOf(obj), f79506c);
    }
}
