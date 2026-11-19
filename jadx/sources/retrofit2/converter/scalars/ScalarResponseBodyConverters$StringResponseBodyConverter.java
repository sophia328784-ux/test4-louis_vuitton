package retrofit2.converter.scalars;

import okhttp3.ResponseBody;
import retrofit2.Converter;

/* JADX INFO: loaded from: classes5.dex */
final class ScalarResponseBodyConverters$StringResponseBodyConverter implements Converter<ResponseBody, String> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ScalarResponseBodyConverters$StringResponseBodyConverter f79515b = new ScalarResponseBodyConverters$StringResponseBodyConverter();

    @Override // retrofit2.Converter
    public final Object f(Object obj) {
        return ((ResponseBody) obj).string();
    }
}
