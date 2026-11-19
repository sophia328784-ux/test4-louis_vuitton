package retrofit2.converter.scalars;

import okhttp3.ResponseBody;
import retrofit2.Converter;

/* JADX INFO: loaded from: classes5.dex */
final class ScalarResponseBodyConverters$DoubleResponseBodyConverter implements Converter<ResponseBody, Double> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ScalarResponseBodyConverters$DoubleResponseBodyConverter f79510b = new ScalarResponseBodyConverters$DoubleResponseBodyConverter();

    @Override // retrofit2.Converter
    public final Object f(Object obj) {
        return Double.valueOf(((ResponseBody) obj).string());
    }
}
