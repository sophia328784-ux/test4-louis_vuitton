package retrofit2.converter.scalars;

import okhttp3.ResponseBody;
import retrofit2.Converter;

/* JADX INFO: loaded from: classes5.dex */
final class ScalarResponseBodyConverters$LongResponseBodyConverter implements Converter<ResponseBody, Long> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ScalarResponseBodyConverters$LongResponseBodyConverter f79513b = new ScalarResponseBodyConverters$LongResponseBodyConverter();

    @Override // retrofit2.Converter
    public final Object f(Object obj) {
        return Long.valueOf(((ResponseBody) obj).string());
    }
}
