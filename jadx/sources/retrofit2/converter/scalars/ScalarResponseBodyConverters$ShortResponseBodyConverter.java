package retrofit2.converter.scalars;

import okhttp3.ResponseBody;
import retrofit2.Converter;

/* JADX INFO: loaded from: classes5.dex */
final class ScalarResponseBodyConverters$ShortResponseBodyConverter implements Converter<ResponseBody, Short> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ScalarResponseBodyConverters$ShortResponseBodyConverter f79514b = new ScalarResponseBodyConverters$ShortResponseBodyConverter();

    @Override // retrofit2.Converter
    public final Object f(Object obj) {
        return Short.valueOf(((ResponseBody) obj).string());
    }
}
