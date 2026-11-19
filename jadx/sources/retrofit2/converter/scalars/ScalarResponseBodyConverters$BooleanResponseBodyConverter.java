package retrofit2.converter.scalars;

import okhttp3.ResponseBody;
import retrofit2.Converter;

/* JADX INFO: loaded from: classes5.dex */
final class ScalarResponseBodyConverters$BooleanResponseBodyConverter implements Converter<ResponseBody, Boolean> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ScalarResponseBodyConverters$BooleanResponseBodyConverter f79507b = new ScalarResponseBodyConverters$BooleanResponseBodyConverter();

    @Override // retrofit2.Converter
    public final Object f(Object obj) {
        return Boolean.valueOf(((ResponseBody) obj).string());
    }
}
