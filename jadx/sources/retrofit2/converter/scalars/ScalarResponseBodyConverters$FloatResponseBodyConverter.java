package retrofit2.converter.scalars;

import okhttp3.ResponseBody;
import retrofit2.Converter;

/* JADX INFO: loaded from: classes5.dex */
final class ScalarResponseBodyConverters$FloatResponseBodyConverter implements Converter<ResponseBody, Float> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ScalarResponseBodyConverters$FloatResponseBodyConverter f79511b = new ScalarResponseBodyConverters$FloatResponseBodyConverter();

    @Override // retrofit2.Converter
    public final Object f(Object obj) {
        return Float.valueOf(((ResponseBody) obj).string());
    }
}
