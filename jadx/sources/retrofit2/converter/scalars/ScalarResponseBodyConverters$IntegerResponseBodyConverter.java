package retrofit2.converter.scalars;

import okhttp3.ResponseBody;
import retrofit2.Converter;

/* JADX INFO: loaded from: classes5.dex */
final class ScalarResponseBodyConverters$IntegerResponseBodyConverter implements Converter<ResponseBody, Integer> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ScalarResponseBodyConverters$IntegerResponseBodyConverter f79512b = new ScalarResponseBodyConverters$IntegerResponseBodyConverter();

    @Override // retrofit2.Converter
    public final Object f(Object obj) {
        return Integer.valueOf(((ResponseBody) obj).string());
    }
}
